# Getting started with HTML in Swift

Swift DOM is a DSL for encoding HTML or related formats, such as SVG. Generating HTML with the
DSL usually involves using a **subscript-assignment** interface alongside a **streaming**
interface. Read this tutorial to learn the basic patterns to use in order to get the most out of
this library.

Like Swift result builders, the DSL is a closure-based DSL. But unlike result builders, the
library is oriented around mutating an output stream through some type-safe encoding interface.
The encoder is usually denoted by `$0`, which is understood to be either an
``HTML.ContentEncoder`` or an ``HTML.AttributeEncoder``.

Swift DOM is a unidirectional HTML encoder. This means that you can only generate HTML with it;
you cannot use it to parse HTML.

>   Tip:
>   We recommend architecting your application to **avoid using
>   HTML as a schema format** in the first place, as HTML is a poor choice for data storage.
>   Instead, you should think of HTML as the web equivalent of a render buffer – something that
>   is generated dynamically for display purposes and immediately transferred to the client.
>   This helps keep your storage costs down and also reduces binary size.


## Entrypoints

The main entrypoint for Swift DOM is the ``HTML`` type, which wraps an output stream of UTF-8
text. You can generate a fragment of HTML using the ``HTML.init(with:)`` initializer.

@Snippet(id: "Entrypoints", slice: "FRAGMENT")

To generate a complete HTML document, use the ``HTML.document(with:)`` constructor, which
behaves similarly to ``HTML.init(with:)`` except it prepends the `<!DOCTYPE html>` declaration
to the output stream.

@Snippet(id: "Entrypoints", slice: "DOCUMENT")

You can load a string from the output buffer with string interpolation.

@Snippet(id: "Entrypoints", slice: "RENDER")

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Barbie onboarding</title>
    </head>
    <body>
        <section>Hi Barbie!</section>
    </body>
</html>
```

>   Note:
>   Swift DOM always minifies the output HTML. The example outputs in this tutorial have been
>   reformatted for readability.

Many applications are better-off loading the UTF-8 buffer directly from ``HTML.utf8``.


## Assignment patterns

The most-recoginzable pattern in Swift DOM is the **subscript-assignment** pattern. A snippet
is worth a thousand words:

@Snippet(id: "Patterns", slice: "DIV")

```html
<div>Hi Barbie!</div>
```

The subscript-assignment pattern works with any type that conforms to ``HTML.OutputStreamable``.
Although it is possible to retroactively conform types such as ``Int`` to this protocol, we
generally recommend encoding such types through string interpolation instead, as this makes the
intent clearer.

@Snippet(id: "Patterns", slice: "DIV_INTERPOLATION")

```html
<div>1959</div>
```

### Subscript-assignment is not idempotent

The subscript-assignment pattern is not idempotent. If you assign to an
``HTML.ContentEncoder``’s subscript multiple times, you will generate multiple elements.

@Snippet(id: "Patterns", slice: "DIV_MULTIPLE_ASSIGNMENT")

```html
<div>A</div><div>B</div><div>C</div>
```

### Subscript-assignment is optional

The getters of ``HTML.ContentEncoder``’s assignable subscripts always return nil. This means
that the setters also accept nil assignments, which the encoder will always ignore. This is
useful because it provides a concise syntax for eliding empty elements.

@Snippet(id: "Patterns", slice: "ELISION")

```html
<li>Home</li><li>Contact</li>
```

### Encoding attributes

You can add attributes to an element by passing a trailing closure to the subscript. Unlike
elements, attributes use property syntax instead of subscript syntax.

If you assign nil to a subscript with attributes, the encoder will not execute the closure.

@Snippet(id: "Patterns", slice: "ATTRIBUTES")

```html
<span class='timeinterval'>5 hours ago</span>
```

Like element encoding, attribute encoding is not idempotent. The encoder will always emit
attributes in the order they were assigned, and it will not prevent you from emitting the same
attribute multiple times.

@Snippet(id: "Patterns", slice: "ATTRIBUTES_MULTIPLE_ASSIGNMENT")

```html
<button class='premium' class='area' type='submit'>Purchase</button>
```

### Encoding attributes without values

You can encode attributes without values by assigning a boolean value to the attribute’s setter.
The attribute will only appear in the output if the value is true.

@Snippet(id: "Patterns", slice: "ATTRIBUTES_BOOLEAN")

```html
<input disabled type='text'><input type='text'>
```

>   Note:
>   The `<input>` element is a ``HTML/VoidElement``, which means it can never have content. This
>   means you can never assign a value to a subscript that accepts ``HTML/VoidElement``. Swift
>   DOM enforces the distinction between ``HTML.VoidElement`` and ``HTML.ContainerElement`` in
>   the type system to prevent you from making this mistake.

### Encoding attributes with special characters

Swift DOM always escapes special characters in attribute values.

@Snippet(id: "Patterns", slice: "ATTRIBUTES_ESCAPING")

```html
<input placeholder='Hawai&#39;i' type='text'>
```

### Encoding attributes dynamically

Although it is an exceptionally rare use case, you can encode attributes dynamically by passing
instances of ``HTML.Attribute`` to ``HTML.AttributeEncoder/subscript(name:) [7PXKH]``.

A slightly more common use case is to encode `data-` attributes using
``HTML.AttributeEncoder/subscript(data:)``.

@Snippet(id: "Patterns", slice: "ATTRIBUTES_DATA")

```html
<span data-likes='117'>117 likes</span>
```

>   Warning:
>   Although Swift DOM escapes illegal characters in attribute values, it does **not** escape
>   illegal characters in custom attribute names. It is your responsibility to ensure that
>   dynamically-supplied attribute names are valid.

### Encoding nested elements

You can encode nested markup by passing an additional trailing closure to the subscript.
If you are also encoding attributes, you must label the closure `content:`.

@Snippet(id: "Patterns", slice: "NESTED_ELEMENTS")

```html
<ol id='barbieland-constitution'>
    <li>
        <h2>Article I</h2><p>Executive branch</p>
    </li>
    <li>
        <h2>Article II</h2><p>Legislative branch</p>
    </li>
    <li>
        <h2>Article III</h2><p>Judicial branch</p>
    </li>
</ol>
```

Some users may prefer the equivalent syntax that does not use labeled closures.

@Snippet(id: "Patterns", slice: "NESTED_ELEMENTS_ALT")

### Encoding empty elements

Unlike the subscript-assignment pattern, the nested closure syntax always generates the
container element passed to the subscript, even if nothing is written from within the closure.

@Snippet(id: "Patterns", slice: "EMPTY_ELEMENTS")

```html
<ol id='barbieland-constitution'></ol>
```

>   Note:
>   Empty elements are different from void elements. In the previous example, the `<ol>` element
>   has a paired `</ol>` closing tag. A void element, such as `<input>`, cannot be paired with a
>   closing tag.

Because Swift DOM distinguishes between void and container elements at compile-time, you can
also safely omit the trailing braces when encoding empty elements.

@Snippet(id: "Patterns", slice: "EMPTY_ELEMENTS_ALT")

### Encoding nested elements with elision

As a syntactic convenience, Swift DOM allows you to use optional subscript assignment with
multiple layers of **single-element wrappers**.

@Snippet(id: "Patterns", slice: "NESTED_ELEMENT_ELISION")

```html
<ol>
    <li class='warning'><p>Do not feed the humans.</p></li>
</ol>
```

This syntax passes through the variadic ``HTML.ContentEncoder/subscript(_:_:exterior:)``
overload, which applies any associated attributes to the **outermost** element.

>   Note:
>   This interface applies attributes to the outermost element because that is the hardest
>   markup pattern to express without the elision syntax. To aid readability of code that uses
>   the DSL, there is no equivalent syntax for applying attributes to the innermost element.

### Encoding unsafe content

Some HTML elements are inherently unsafe to encode, as their text content must satisfy rules
that are not easily enforced at compile-time. There are two such elements in HTML.

1.  ``HTML.UnsafeElement/script``
2.  ``HTML.UnsafeElement/style``

You can encode such elements using the ``HTML.ContentEncoder/subscript(unsafe:_:)`` interface.


## Streaming patterns

The closure-based encoding pattern comes with a **streaming interface** analogous to the
subscript-assignment interface.

### Streaming values

Most prose rendering requires interpolating text nodes with HTML elements. The basic interface
to use for interpolated streaming is the ``HTML.OutputStreamable/+=(_:_:) [46UV7]`` operator.

@Snippet(id: "Patterns", slice: "STREAMING")

```html
<p>Welcome Barbie! You have <span class='notifications'>5</span> unread notifications.</p>
```

### Streaming values with elision

Like the subscript-assignment interface, the streaming interface supports elision with the
``Swift.Optional/?=(_:_:) [8IW6N]`` operator.

@Snippet(id: "Patterns", slice: "STREAMING_ELISION")

```html
<p></p>
```

>   Warning:
>   In many situations, `$0[x] { $0 ?= y }` is equivalent to `$0[x] = y`, but they are not
>   exactly the same. Custom types that conform to ``HTML.OutputStreamable`` may support
>   [streamable attributes](doc:Using-protocols) that only appear if it is statically known
>   that the element will be the only child of its parent element. Because only the
>   subscript-assignment syntax can provide this guarantee at compile-time, the streaming
>   interface will not include such attributes!


### Streaming existentials

For performance reasons, most of Swift DOM’s encoding interfaces are generic. You can stream
existentials by using the ``HTML.ContentEncoder/*=(_:_:)`` operator.

@Snippet(id: "Patterns", slice: "STREAMING_EXISTENTIAL")

```html
<p>string</p>
```
