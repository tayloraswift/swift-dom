import HTML

let _:HTML = .document
{
    //  snippet.DIV
    $0[.div] = "Yes Ma’am!"
    //  snippet.DIV_INTERPOLATION
    $0[.div] = "\(13)"
    //  snippet.end
}
