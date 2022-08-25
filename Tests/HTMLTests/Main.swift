import HTML
import DOM

infix operator ==? :ComparisonPrecedence

struct OptionalUnwrapFailure<Wrapped>:Error, CustomStringConvertible 
{
    var description:String
    {
        """
        expected non-nil value of type \(Wrapped.self)
        """
    }
}
struct AssertionFailure:Error, CustomStringConvertible 
{
    var description:String
    {
        """
        expected true
        """
    }
}
struct AssertEquivalenceFailure<T>:Error, CustomStringConvertible  
{
    let lhs:T
    let rhs:T

    var description:String
    {
        """
        expected equal values: 
        {
            lhs: \(lhs),
            rhs: \(rhs)
        }
        """
    }
}
func ==? <LHS, RHS>(lhs:LHS, rhs:RHS) -> AssertEquivalenceFailure<[LHS.Element]>?
    where LHS:Sequence, RHS:Sequence, LHS.Element == RHS.Element, LHS.Element:Equatable
{
    let rhs:[LHS.Element] = .init(rhs)
    let lhs:[LHS.Element] = .init(lhs)
    if  lhs.elementsEqual(rhs) 
    {
        return nil 
    }
    else 
    {
        return .init(lhs: lhs, rhs: rhs)
    }
}
func ==? <T>(lhs:T, rhs:T) -> AssertEquivalenceFailure<T>?
    where T:Equatable
{
    if  lhs == rhs
    {
        return nil 
    }
    else 
    {
        return .init(lhs: lhs, rhs: rhs)
    }
}

@main 
struct Main 
{
    mutating 
    func assert<T>(_ error:AssertEquivalenceFailure<T>?, 
        file:String = #file, 
        function:String = #function, 
        line:Int = #line, 
        column:Int = #column) 
    {
        if let error:AssertEquivalenceFailure<T> = error
        {
            print("\(file):\(line):\(column): \(error)")
            self.failed.append(error)
        }
        else 
        {
            self.passed += 1
        }
    }
    mutating 
    func assert(_ test:Bool, 
        file:String = #file, 
        function:String = #function, 
        line:Int = #line, 
        column:Int = #column)  
    {
        if test 
        {
            self.passed += 1
        }
        else
        {
            print("\(file):\(line):\(column): test failed")
            self.failed.append(AssertionFailure.init())
        }
    }
    func unwrap<Wrapped>(_ optional:Wrapped?, 
        file:String = #file, 
        function:String = #function, 
        line:Int = #line, 
        column:Int = #column) -> Wrapped?
    {
        if let wrapped:Wrapped = optional
        {
            return wrapped 
        }
        else 
        {
            print("\(file):\(line):\(column): optional unwrap failed")
            return nil
        }
    }

    var passed:Int 
    var failed:[any Error]

    init() 
    {
        self.passed = 0
        self.failed = []
    }

    static 
    func main() 
    {
        var tests:Self = .init()
            tests.main()
        print("passed: \(tests.passed)")
        print("failed: \(tests.failed.count)")
    }
    mutating 
    func main() 
    {
        self.assert(HTML.Element<Never>.br().node.rendered(as: [UInt8].self) 
        ==? 
        """
        <br>
        """.utf8)

        self.assert(HTML.Element<Never>.p().node.rendered(as: [UInt8].self) 
        ==? 
        """
        <p></p>
        """.utf8)

        self.assert(HTML.Element<Never>.p(attributes:
        [
            .class("paragraph"),
            .async,
        ]).node.rendered(as: [UInt8].self) 
        ==? 
        """
        <p class="paragraph" async></p>
        """.utf8)

        self.assert(HTML.Element<Never>.p("hello world", attributes:
        [
            .class("paragraph"),
            .async,
        ]).node.rendered(as: [UInt8].self) 
        ==? 
        """
        <p class="paragraph" async>hello world</p>
        """.utf8)

        self.assert(HTML.Root<Never>.init(.head(), attributes:
        [
            .lang("en"),
        ]).rendered(as: [UInt8].self) 
        ==? 
        """
        <!DOCTYPE html><html lang="en"><head></head></html>
        """.utf8)

        self.assert(HTML.Root<Never>.init([.head(), .body()], attributes:
        [
            .lang("en"),
        ]).rendered(as: [UInt8].self) 
        ==? 
        """
        <!DOCTYPE html><html lang="en"><head></head><body></body></html>
        """.utf8)

         self.assert(DOM.Flattened<String>.init(freezing: .init(
                [
                    .head(),
                    .body(.init(anchor: "body")),
                ], 
                attributes: 
                [
                    .init(anchor: "language"),
                ])
            ).rendered(as: [UInt8].self,
                substituting: 
                [
                    "body": "test".utf8,
                    "language": "lang=\"es\"".utf8,
                ]
            ) 
        ==? 
        """
        <!DOCTYPE html><html lang="es"><head></head><body>test</body></html>
        """.utf8)
    }
}
