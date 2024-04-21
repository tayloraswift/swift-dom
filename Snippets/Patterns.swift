import HTML

let assignment:HTML = .init
{
    //  snippet.DIV
    $0[.div] = "Hi Barbie!"
    //  snippet.DIV_INTERPOLATION
    $0[.div] = "\(1959)"

    //  snippet.DIV_MULTIPLE_ASSIGNMENT
    $0[.div] = "A"
    $0[.div] = "B"
    $0[.div] = "C"
    //  snippet.ELISION
    let menu:(String?, String?, String?) = ("Home", nil, "Contact")
    $0[.li] = menu.0
    $0[.li] = menu.1
    $0[.li] = menu.2
    //  snippet.ATTRIBUTES
    let age:(String?, String?) = ("5 hours ago", nil)
    $0[.span] { $0.class = "timeinterval" } = age.0
    $0[.span] { $0.class = "timeinterval" } = age.1
    //  snippet.ATTRIBUTES_MULTIPLE_ASSIGNMENT
    $0[.button]
    {
        $0.class = "premium"
        $0.class = "area"
        $0.type = "submit"
    } = "Purchase"
    //  snippet.ATTRIBUTES_ESCAPING
    $0[.input] { $0.placeholder = "Hawai'i" ; $0.type = "text" }
    //  snippet.ATTRIBUTES_BOOLEAN
    $0[.input] { $0.disabled = true ; $0.type = "text" }
    $0[.input] { $0.required = false ; $0.type = "text" }
    //  snippet.ATTRIBUTES_DATA
    let likes:Int = 117
    $0[.span] { $0[data: "likes"] = "\(likes)" } = "\(likes) likes"
    //  snippet.NESTED_ELEMENTS
    $0[.ol]
    {
        $0.id = "barbieland-constitution"
    }
        content:
    {
        $0[.li]
        {
            $0[.h2] = "Article I"
            $0[.p] = "Executive branch"
        }
        $0[.li]
        {
            $0[.h2] = "Article II"
            $0[.p] = "Legislative branch"
        }
        $0[.li]
        {
            $0[.h2] = "Article III"
            $0[.p] = "Judicial branch"
        }
    }
    //  snippet.NESTED_ELEMENTS_ALT
    $0[.ol, { $0.id = "barbieland-constitution" }]
    {
        $0[.li]
        {
            $0[.h2] = "Article I"
            $0[.p] = "Executive branch"
        }
        $0[.li]
        {
            $0[.h2] = "Article II"
            $0[.p] = "Legislative branch"
        }
        $0[.li]
        {
            $0[.h2] = "Article III"
            $0[.p] = "Judicial branch"
        }
    }
    //  snippet.EMPTY_ELEMENTS
    $0[.ol, { $0.id = "barbieland-constitution" }] { _ in }
    //  snippet.EMPTY_ELEMENTS_ALT
    $0[.ol] { $0.id = "barbieland-constitution" }
    //  snippet.NESTED_ELEMENT_ELISION
    $0[.ol]
    {
        $0[.li, .p] { $0.class = "warning" } = "Do not feed the humans."
        $0[.li, .p] { $0.class = "warning" } = nil as Never?
    }
    //  snippet.end
}

print("\(assignment)")

let streaming:HTML = .init
{
    //  snippet.STREAMING
    let notifications:Int = 5
    $0[.p]
    {
        $0 += "Welcome Barbie! You have "
        $0[.span] { $0.class = "notifications" } = "\(notifications)"
        $0 += " unread notifications."
    }
    //  snippet.STREAMING_ELISION
    let notice:String? = nil
    $0[.p] { $0 ?= notice }
    //  snippet.STREAMING_EXISTENTIAL
    let message:any HTML.OutputStreamable = "string"
    $0[.p] { $0 *= message }
    //  snippet.end
}

print("\(streaming)")
