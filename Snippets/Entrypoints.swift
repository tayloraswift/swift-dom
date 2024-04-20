import HTML

//  snippet.FRAGMENT
let fragment:HTML = .init
{
    $0[.section] = "Hi Barbie!"
}
//  snippet.end
print("\(fragment)")
//  snippet.DOCUMENT
let document:HTML = .document
{
    $0[.html]
    {
        $0[.head] { $0[.title] = "Barbie onboarding" }
        $0[.body] { $0[.section] = "Hi Barbie!" }
    }
}
//  snippet.RENDER
print("\(document)")
