import SwiftSyntax 

extension Factory 
{
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
}