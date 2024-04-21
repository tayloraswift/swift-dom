import HTML

//  snippet.SCORE
struct Score
{
    let points:Int

    init(_ points:Int)
    {
        self.points = points
    }
}
//  snippet.SCORE_CONFORMANCE
extension Score:HTML.OutputStreamable
{
    //  snippet.SCORE_WITNESS_ATTRIBUTE
    static
    func |= (html:inout HTML.AttributeEncoder, self:Self)
    {
        html.class = "score"
    }

    //  snippet.SCORE_WITNESS_CONTENT
    static
    func += (html:inout HTML.ContentEncoder, self:Self)
    {
        html[.span]
        {
            $0.class = self.points > 0 ? "positive" : "negative"
        } = "\(self.points)"

        html += " points"
    }
    //  snippet.end
}
//  snippet.DL
let html:HTML = .init
{
    $0[.dl]
    {
        let points:[Int] = [1, 4, -2, 89]
        for score:Score in points.map(Score.init(_:))
        {
            $0[.dt] = "Score"
            $0[.dd] = score
        }
    }
}
//  snippet.end

let _:HTML = .init
{
    let x:Score = .init(10)
    //  snippet.ASSIGNMENT
    $0[.dd] = x
    //  snippet.STREAMING
    $0[.dd] { $0 += x }
    //  snippet.end
}

print("\(html)")

//  snippet.STATE
enum State
{
    case alabama
}
extension State:Identifiable
{
    var id:String
    {
        switch self
        {
        case .alabama: "al"
        }
    }
}
extension State:HTML.OutputStreamable, HTML.OutputStreamableAnchor
{
    static
    func += (li:inout HTML.ContentEncoder, self:Self)
    {
        switch self
        {
        case .alabama: li += "Alabama"
        }
    }
}
//  snippet.STATE_RENDERED
let states:HTML = .init
{
    $0[.ul]
    {
        $0[.li] = State.alabama
    }
}
//  snippet.end
print("\(states)")

//  snippet.HEADING
enum ProfileHeading:String
{
    case followers = "followers"
    case following = "following"
}
extension ProfileHeading:Identifiable
{
    var id:String { self.rawValue }
}
extension ProfileHeading:HTML.OutputStreamableHeading
{
    var display:String
    {
        switch self
        {
        case .followers: "Followers"
        case .following: "Following"
        }
    }
}

//  snippet.HEADING_RENDERED
let profile:HTML = .init
{
    $0[.main]
    {
        $0[.h2] = ProfileHeading.followers
        $0[.h2] = ProfileHeading.following
    }
}

print("\(profile)")
