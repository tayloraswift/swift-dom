# Using protocols with HTML

In large projects, generating HTML with nested closure literals can quickly become
unsustainable. A more-scalable approach is to factor out some of the rendering logic into
protocol conformances on model types. Read this tutorial to learn how to best use protocol
conformances with the DSL.

In Swift DOM, all HTML rendering ultimately dispatches through the ``HTML.OutputStreamable``
protocol, although the DSL is transparent enough that this dispatch is almost always static, if
not fully inlinable.

## Topics

### Built-in conformances

There are several types that have built-in ``HTML.OutputStreamable`` conformances that are
always available.

-   ``String``
-   ``Substring``
-   ``Character``
-   ``Unicode.Scalar``

### Custom conformances

You can conform custom types to ``HTML.OutputStreamable`` by implementing the
``HTML.OutputStreamable/+=(_:_:) [46UV7]`` operator requirement. The protocol has two such
requirements, but only the ``HTML/ContentEncoder`` requirement needs a user-supplied witness.

-   ``HTML.OutputStreamable.+=(_:_:) [46UV7]``
-   ``HTML.OutputStreamable.+=(_:_:) [7MWYL]``

The content-encoding witness will always be called when encoding an instance of a conforming
type. The attribute-encoding witness will only be called when it is statically known that the
instance will be the only child of its parent element. This means that the two spellings below
have slightly different semantics, as the latter will not call the attribute-encoding witness.

@Snippet(id: "Protocols", slice: "ASSIGNMENT")
@Snippet(id: "Protocols", slice: "STREAMING")

## Implementing `HTML.OutputStreamable`

Suppose you have a type named `Score` defined as such.

@Snippet(id: "Protocols", slice: "SCORE")

To use `Score` with the DSL, you must conform it to ``HTML.OutputStreamable``.

@Snippet(id: "Protocols", slice: "SCORE_CONFORMANCE")

### Streaming attributes

The attribute-encoding witness adds a class named `score` to the parent element.

@Snippet(id: "Protocols", slice: "SCORE_WITNESS_ATTRIBUTE")

>   Important:
>   The attribute-encoding witness knows nothing about the parent element, so if the parent has
>   already been assigned a class externally, the witness will **duplicate** the attribute.
>   Although we use the `class` attribute here as an example, in practice it is a bad idea to
>   use attribute streaming with attributes that are likely to collide with external values.

### Streaming content

The content-encoding witness wraps the numerical `points` value in a `<span>` element, with the
class set to `positive` or `negative` depending on the value. It then appends the string
`" points"` as a text node.

@Snippet(id: "Protocols", slice: "SCORE_WITNESS_CONTENT")

>   Tip:
>   The `" points"` line is calling ``String``’s own ``HTML.OutputStreamable/+=(_:_:) [8MWWV]``
>   witness, which it inherits as a default implementation from ``StringProtocol``.

>   Experiment:
>   The implementation above renders negative scores with a leading hyphen (`-`). Try changing
>   the implementation to use a real Unicode minus sign (`−`) instead.

### Using the custom type

Putting it all together, you can now generate HTML for a list of scores.

@Snippet(id: "Protocols", slice: "DL")

```html
<dl>
    <dt>Score</dt>
    <dd class='score'><span class='positive'>1</span> points</dd>

    <dt>Score</dt>
    <dd class='score'><span class='positive'>4</span> points</dd>

    <dt>Score</dt>
    <dd class='score'><span class='negative'>-2</span> points</dd>

    <dt>Score</dt>
    <dd class='score'><span class='positive'>89</span> points</dd>
</dl>
```

## Setting the `id` attribute

As discussed above, streamable attributes can be hazardous when used incorrectly. Therefore,
it’s a good idea to rely on the library’s helper protocols when possible. One such protocol is
``HTML.OutputStreamableAnchor``, which is a refinement of ``HTML.OutputStreamable`` that also
requires an ``Identifiable`` conformance.

Here is an example of a type that conforms to ``HTML.OutputStreamableAnchor``. It provides an
``Identifiable/id [8T2WS]`` that is different from its textual description. The protocol will
provide a witness for the attribute-encoding ``HTML.OutputStreamable/+=(_:_:) [7MWYL]``
requirement that sets the `id` attribute on the parent element.

@Snippet(id: "Protocols", slice: "STATE")

@Snippet(id: "Protocols", slice: "STATE_RENDERED")

```html
<ul>
    <li id='il'>Illinois</li>
</ul>
```


## Using the `id` attribute with linkable headings

It is possible to go one step further and use the `id` attribute to create linkable headings.
The library implements this through the ``HTML.OutputStreamableHeading`` protocol, which further
refines ``HTML.OutputStreamableAnchor`` with an associated delegate type named
``HTML.OutputStreamableHeading/Display``. This protocol wraps the delegate in an `<a>` tag with
the `href` attribute pointing to the conforming instance’s own ``Identifiable/id [8T2WS]``.

Here is an example of a type that conforms to ``HTML.OutputStreamableHeading``. Instead of
implementing ``HTML.OutputStreamable/+=(_:_:) [46UV7]`` directly, it delegates to ``String``,
which already conforms to ``HTML.OutputStreamable``, via its
``HTML.OutputStreamableHeading/display [25686]`` witness.

@Snippet(id: "Protocols", slice: "HEADING")

@Snippet(id: "Protocols", slice: "HEADING_RENDERED")

```html
<main>
    <h2 id='followers'>
        <a href='#followers'>Followers</a>
    </h2>
    <h2 id='following'>
        <a href='#following'>Following</a>
    </h2>
</main>
```

>   Tip:
>   You could have also implemented ``CustomStringConvertible`` for `ProfileHeading` instead,
>   which would have provided a default implementation for the
>   ``HTML.OutputStreamableHeading/display [25686]`` requirement.
