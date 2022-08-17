extension Factory 
{
    public 
    enum BasisError:Error 
    {
        case expectedInitializationExpression
        case expectedArrayLiteral

        public 
        var description:String 
        {
            switch self 
            {
            case .expectedInitializationExpression: 
                return "expected initialization expression"
            case .expectedArrayLiteral: 
                return "expected array literal"
            }
        }
    }
    public 
    enum MatrixError:Error 
    {
        case missingArguments
        case missingBinding
        case undefinedBasis(String)
        case invalidBasis(for:String)

        public 
        var description:String 
        {
            switch self 
            {
            case .missingArguments: 
                return "@matrix expects at least one loop argument"
            case .missingBinding: 
                return "@matrix loop requires a binding"
            case .undefinedBasis(let variable): 
                return "@matrix basis '\(variable)' is not defined in this lexical scope"
            case .invalidBasis(for: let binding): 
                return "@matrix basis for '\(binding)' must be an array literal or a @basis binding"
            }
        }
    }
    public 
    enum SubstitutionError:Error 
    {
        case notAnIdentifier(String, replacing:String)

        public 
        var description:String 
        {
            switch self 
            {
            case .notAnIdentifier(let expression, replacing: let name):
                return "identifier token '\(name)' cannot be replaced by expression `\(expression)`"
            }
        }
    }
}