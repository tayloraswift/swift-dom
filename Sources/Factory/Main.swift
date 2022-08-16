import SystemExtras 

import SwiftSyntax 
import SwiftSyntaxParser 

extension CustomAttributeSyntax 
{
    var simpleName:String? 
    {
        if  case .identifier(let name)? = 
            self.attributeName.as(SimpleTypeIdentifierSyntax.self)?.name.tokenKind
        {
            return name 
        }
        else 
        {
            return nil
        }
    }
}

protocol FilterableListSyntax:SyntaxCollection, BidirectionalCollection 
{
    func removing(childAt offset:Int) -> Self 
}
extension CodeBlockItemListSyntax:FilterableListSyntax {} 
extension MemberDeclListSyntax:FilterableListSyntax {} 

protocol ExpandableSyntax:DeclSyntaxProtocol 
{
    var attributes:AttributeListSyntax? { get set }
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
}
extension AssociatedtypeDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension ClassDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension EnumCaseDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension EnumDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension ExtensionDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension FunctionDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension ImportDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension InitializerDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension OperatorDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension PrecedenceGroupDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension ProtocolDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension StructDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension SubscriptDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension TypealiasDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}
extension VariableDeclSyntax:ExpandableSyntax 
{
    func transform(_ rewriter:TemplateInstantiator) -> DeclSyntax 
    {
        rewriter.visit(self)
    }
}

struct Loop:RandomAccessCollection 
{
    struct Thread 
    {
        let binding:String 
        let matrix:[ExprSyntax]
    }

    let threads:[Thread]
    let endIndex:Int
    var startIndex:Int { 0 }

    subscript(index:Int) -> [String: ExprSyntax]
    {
        var element:[String: ExprSyntax] = .init(minimumCapacity: self.threads.count)
        for thread:Thread in self.threads 
        {
            element[thread.binding] = thread.matrix[index]
        }
        return element
    }

    init(_ threads:[Thread])
    {
        self.threads = threads 
        self.endIndex = self.threads.lazy.map(\.matrix.count).min() ?? 0
    }
}

extension ExpandableSyntax 
{
    private 
    func expand(loops:ArraySlice<Loop>, substitutions:[[String: ExprSyntax]]) -> [DeclSyntax]
    {
        guard let loop:Loop = loops.first 
        else 
        {
            return [self.transform(TemplateInstantiator.init(substitutions))]
        }
        var instances:[DeclSyntax] = []
        for iteration:[String: ExprSyntax] in loop 
        {
            instances.append(contentsOf: self.expand(loops: loops.dropFirst(), 
                substitutions: substitutions + [iteration]))
        }
        return instances
    }
    mutating 
    func removeAttributes<Recognized>(where recognize:(Syntax) throws -> Recognized?) 
        rethrows -> [Recognized]?
    {
        guard let attributes:AttributeListSyntax = self.attributes 
        else 
        {
            return nil 
        }
        var removed:[Recognized] = []
        // if we delete a node, its leading trivia should coalesce with the 
        // leading trivia of the next node 
        var kept:[Syntax] = []
        var trivia:[TriviaPiece] = []
        for attribute:Syntax in attributes 
        {
            if let recognized:Recognized = try recognize(attribute) 
            {
                if let residue:Trivia = attribute.leadingTrivia 
                {
                    trivia.append(contentsOf: residue)
                }
                removed.append(recognized)
            }
            else if !trivia.isEmpty 
            {
                kept.append(attribute.withLeadingTrivia(.init(
                    pieces: trivia + (attribute.leadingTrivia ?? []))))
                trivia.removeAll()
            }
            else 
            {
                kept.append(attribute)
            }
        }
        if removed.isEmpty 
        {
            return nil 
        }
        else if kept.isEmpty
        {
            self.attributes = nil 
            if !trivia.isEmpty 
            {
                self = self.withLeadingTrivia(.init(
                    pieces: trivia + (self.leadingTrivia ?? [])))
            }
        }
        else 
        {
            if !trivia.isEmpty 
            {
                let lastAttribute:Syntax = kept[kept.endIndex - 1]
                kept[kept.endIndex - 1] = lastAttribute.withLeadingTrivia(.init(
                    pieces: (lastAttribute.leadingTrivia ?? []) + trivia))
            }
            self.attributes = SyntaxFactory.makeAttributeList(kept)
        }
        return removed
    }
    func expand(scope:[[String: [ExprSyntax]]]) -> [DeclSyntax]
    {
        var template:Self = self 
        let loops:[Loop]? = template.removeAttributes 
        {
            guard   let attribute:CustomAttributeSyntax = $0.as(CustomAttributeSyntax.self), 
                    case "template"? = attribute.simpleName
            else 
            {
                return nil 
            }
            guard let arguments:TupleExprElementListSyntax = attribute.argumentList
            else 
            {
                fatalError("@template(identifiers:in:) requires arguments")
            }
            var zipper:[Loop.Thread] = []
            arguments:
            for argument:TupleExprElementSyntax in arguments 
            {
                guard case .identifier(let binding)? = argument.label?.tokenKind
                else 
                {
                    fatalError("@template loop requires a binding")
                }
                if      let literal:ArrayExprSyntax = 
                    argument.expression.as(ArrayExprSyntax.self)
                {
                    zipper.append(.init(binding: binding, 
                        matrix: literal.elements.map { $0.expression.withoutTrivia() }))
                }
                else if let variable:IdentifierExprSyntax = 
                    argument.expression.as(IdentifierExprSyntax.self)
                {
                    let variable:String = variable.identifier.text
                    for scope:[String: [ExprSyntax]] in scope.reversed() 
                    {
                        if let matrix:[ExprSyntax] = scope[variable]
                        {
                            zipper.append(.init(binding: binding, matrix: matrix))
                            continue arguments  
                        }
                    }
                    fatalError("@template matrix '\(variable)' is not defined in this lexical scope")
                }
                else 
                {
                    fatalError("@template matrix must be an array literal or a @matrix binding")
                }
            }
            return .init(zipper)
        }
        if let loops:[Loop]
        {
            return template.expand(loops: loops[...], substitutions: [])
        }
        else 
        {
            return [.init(self)]
        }
    }
}

extension FilterableListSyntax
{
    // this is going to be slow no matter what, 
    // see https://github.com/apple/swift-syntax/issues/592
    mutating 
    func strip<T>(_ strip:(Element) throws -> T?) rethrows -> [T]?
    {
        var stripped:[T] = []
        var current:Int = 0
        var index:Index = self.startIndex
        while index < self.endIndex
        {
            if let value:T = try strip(self[index])
            {
                stripped.append(value)
                self = self.removing(childAt: current)
            }
            else 
            {
                current += 1
            }
            index = self.index(self.startIndex, offsetBy: current)
        }
        return stripped.isEmpty ? nil : stripped
    }
}
extension AttributeListSyntax?
{
    // this is going to be slow no matter what, 
    // see https://github.com/apple/swift-syntax/issues/592
    mutating 
    func strip<T>(_ strip:(Wrapped.Element) throws -> T?) rethrows -> [T]?
    {
        var stripped:[T] = []
        var current:Int = 0
        while let list:Wrapped = self
        {
            let index:Wrapped.Index = list.index(list.startIndex, offsetBy: current)
            guard index < list.endIndex 
            else 
            {
                break
            }
            if let value:T = try strip(list[index])
            {
                stripped.append(value)
                self = list.count == 1 ? nil : list.removing(childAt: current)
            }
            else 
            {
                current += 1
            }
        }
        return stripped.isEmpty ? nil : stripped
    }
}
extension VariableDeclSyntax 
{
    func matrices() -> PatternBindingListSyntax? 
    {
        var scratch:Self = self 
        let matrix:[Void]? = scratch.removeAttributes
        {
            if  let attribute:CustomAttributeSyntax = $0.as(CustomAttributeSyntax.self), 
                case "matrix"? = attribute.simpleName
            {
                return ()
            }
            else 
            {
                return nil
            }
        }
        if case _? = matrix 
        {
            return self.bindings
        }
        else 
        {
            return nil
        }
    }
}

final 
class TemplateInstantiator:SyntaxRewriter 
{
    let substitutions:[[String: ExprSyntax]] 

    private final 
    func lookup(_ identifier:String) -> ExprSyntax? 
    {
        for substitutions:[String: ExprSyntax] in self.substitutions.reversed() 
        {
            if let expression:ExprSyntax = substitutions[identifier]
            {
                return expression 
            }
        }
        return nil 
    }

    init(_ substitutions:[[String: ExprSyntax]])
    {
        self.substitutions = substitutions
        super.init()
    }

    final override 
    func visit(_ expression:IdentifierExprSyntax) -> ExprSyntax
    {
        if  case .identifier(let identifier) = expression.identifier.tokenKind, 
            let substitution:ExprSyntax = self.lookup(identifier)
        {
            // preserve the original trivia
            return substitution 
                .withLeadingTrivia(expression.identifier.leadingTrivia)
                .withTrailingTrivia(expression.identifier.trailingTrivia)
        }
        else 
        {
            return super.visit(expression)
        }
    }
    final override 
    func visit(_ token:TokenSyntax) -> Syntax
    {
        if  case .identifier(let identifier) = token.tokenKind, 
            let substitution:ExprSyntax = self.lookup(identifier)
        {
            guard let substitution:IdentifierExprSyntax = substitution.as(IdentifierExprSyntax.self)
            else 
            {
                fatalError("arbitrary token may only be replaced with an identifier expression")
            }
            // preserve the original trivia
            return .init(token.withKind(substitution.identifier.tokenKind))
        }
        else 
        {
            return super.visit(token)
        }
    }
}
final 
class Factory:SyntaxRewriter 
{
    var scope:[[String: [ExprSyntax]]] = []

    override 
    init() 
    {
        super.init() 
        self.scope = []
    }

    final private 
    func expand(_ declaration:DeclSyntax) -> [DeclSyntax]
    {
        if  let expandable:any ExpandableSyntax = 
            declaration.asProtocol(DeclSyntaxProtocol.self) as? ExpandableSyntax
        {
            return expandable.expand(scope: self.scope)
        }
        else 
        {
            return [declaration]
        }
    }

    final private 
    func with<T>(scope bindings:[PatternBindingListSyntax]?, _ body:() throws -> T) rethrows -> T 
    {
        guard let bindings:[PatternBindingListSyntax], !bindings.isEmpty
        else 
        {
            return try body()
        }

        var scope:[String: [ExprSyntax]] = [:]
        for binding:PatternBindingSyntax in bindings.joined() 
        {
            guard let pattern:IdentifierPatternSyntax = 
                binding.pattern.as(IdentifierPatternSyntax.self)
            else 
            {
                fatalError("expected let binding")
            }
            guard   let clause:InitializerClauseSyntax = binding.initializer, 
                    let array:ArrayExprSyntax = clause.value.as(ArrayExprSyntax.self)
            else 
            {
                fatalError("expected array literal")
            }
            
            scope[pattern.identifier.text] = array.elements.map { $0.expression.withoutTrivia() }
        }
            self.scope.append(scope)
        defer 
        {
            self.scope.removeLast()
        }
        return try body()
    }

    final override 
    func visit(_ list:CodeBlockItemListSyntax) -> Syntax
    {
        var list:CodeBlockItemListSyntax = list 
        let bindings:[PatternBindingListSyntax]? = list.strip 
        {
            $0.item.as(VariableDeclSyntax.self).flatMap
            {
                $0.matrices()
            }
        }
        return self.with(scope: bindings)
        {
            return super.visit(SyntaxFactory.makeCodeBlockItemList(list.flatMap 
            { 
                guard let declaration:DeclSyntax = $0.item.as(DeclSyntax.self)
                else 
                {
                    return [$0]
                }
                return self.expand(declaration).map 
                {
                    SyntaxFactory.makeCodeBlockItem(item: .init($0), 
                        semicolon: nil, errorTokens: nil) 
                }
            }))
        }
    }
    final override 
    func visit(_ list:MemberDeclListSyntax) -> Syntax
    {
        var list:MemberDeclListSyntax = list 
        let bindings:[PatternBindingListSyntax]? = list.strip 
        {
            $0.decl.as(VariableDeclSyntax.self).flatMap
            {
                $0.matrices()
            }
        }
        return self.with(scope: bindings)
        {
            return super.visit(SyntaxFactory.makeMemberDeclList(list.flatMap 
            { 
                self.expand($0.decl).map 
                {
                    SyntaxFactory.makeMemberDeclListItem(decl: $0, semicolon: nil) 
                }
            }))
        }
    }
}

@main 
enum Main 
{
    public static 
    func main() throws
    {
        for path:FilePath in CommandLine.arguments.dropFirst().map(FilePath.init(_:))
        {
            print("applying templates for '\(path)'")
            let input:String = try path.read()
            let source:SourceFileSyntax = try SyntaxParser.parse(source: input, 
                filenameForDiagnostics: path.string)

            let factory:Factory = .init()
            let output:Syntax = factory.visit(source)
            print(output)
        }
    }
}