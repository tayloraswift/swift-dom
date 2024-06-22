import HTML
//  snippet.EMBEDDED
let html:HTML = .document
{
    $0[.html]
    {
        $0[.head] { $0[.title] = "SVG example" }
        $0[.body]
        {
            $0[.figure]
            {
                $0[.svg]
                {
                    $0.viewBox = "-1 -1 2 2"
                }
                    content:
                {
                    $0[.circle]
                    {
                        $0.cx = "0"
                        $0.cy = "0"
                        $0.r = "0.5"
                        $0.fill = "#ff4096"
                    }
                }
            }
        }
    }
}
//  snippet.end
print("\(html)")
