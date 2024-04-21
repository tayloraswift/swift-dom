# ``HTML``

This module provides tools for encoding HTML/SVG.


## Why another HTML DSL?

Many HTML libraries are built around the idea of an
[Abstract Syntax Tree](https://en.wikipedia.org/wiki/Abstract_syntax_tree) (AST). You build up a
tree of nodes that represents the structure of the document, and then a rendering engine
performs a tree traversal to generate the HTML. This is an intuitive mental model for many
developers, and dovetails well with Swift result builders and Swift’s general ethos of immutable
value semantics.

On the other hand, AST-based rendering can use a lot of memory, as it involves a large number of
intermediate allocations. AST-based data structures also struggle with static typing, as they
must balance the internal need to model the polymorphic nature of HTML nodes with the external
need to present a type-safe API.

Many AST-based HTML libraries mitigate this problem by providing voluminous convenience APIs
and multiple levels of abstraction, but these APIs do not always compose well, and can be
difficult to learn. The large number of “concise” spellings also tends to trip up AI code
generation tools who struggle to distinguish between real and imaginary APIs.


## Philosophy

Swift DOM is designed to be **composable and easy to learn**, with a small number of patterns
that developers must internalize. Instead of outlawing as many invalid states as possible at
compile-time, Swift DOM relies on a small number of high-impact static typing rules to eliminate
common mistakes without confusing developers with too many highly-specialized guardrails. The
tradeoff is that some understanding of the HTML format is required to use Swift DOM correctly,
as the library makes no effort to abstract away the underlying markup language.

Although Swift DOM is flexible enough to accommodate a broad range of project layouts, the
library encourages you to factor HTML rendering logic into [protocol conformances on model
types](doc:Using-protocols).
Thus, whereas you would pass around AST nodes as objects when using other libraries, with Swift
DOM you instead pass around the original model values and convert them to HTML as needed. While
this sometimes means that the same value will be rendered multiple times, much of the actual
overhead of AST-based HTML rendering comes from the AST construction itself and the intermediate
allocations needed to cache the rendered text. Therefore, re-rendering the same value is not as
expensive as one might assume when using a different library.


## Topics

### Tutorials

-   <doc:Getting-started>
-   <doc:Using-protocols>
-   <doc:Using-inline-SVG>

### Attributes

-   ``HTML.Attribute``
-   ``HTML.Attribute.Property``
-   ``HTML.Attribute.Rel``

### Elements

-   ``HTML.ContainerElement``
-   ``HTML.UnsafeElement``
-   ``HTML.VoidElement``

### Streaming

-   ``HTML``
-   ``HTML.ContentEncoder``
-   ``HTML.AttributeEncoder``

### Streaming protocols

-   ``HTML.OutputStreamable``
-   ``HTML.OutputStreamableAnchor``
-   ``HTML.OutputStreamableHeading``

### SVG

-   ``SVG``
-   ``SVG.Attribute``
-   ``SVG.ContainerElement``
-   ``SVG.OutputStreamable``

### SVG helpers

-   ``SVG.Point``
