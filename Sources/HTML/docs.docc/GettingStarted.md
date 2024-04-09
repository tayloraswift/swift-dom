# Getting started with HTML in Swift

Swift DOM is a DSL for encoding HTML and related formats in pure Swift. Read this tutorial to
learn the basic patterns of and motivations for this library.

Swift DOM is a unidirectional HTML encoder. This means that you can only generate HTML with it;
you cannot use it to parse HTML. If you really need to parse HTML, you should use a library like
[SwiftSoup](https://github.com/scinfu/SwiftSoup). However, we recommend architecting your
application to **avoid using HTML as a schema format** in the first place, as HTML is a poor choice
for data storage. Instead, you should think of HTML as the web equivalent of a render buffer –
something that is generated dynamically for display purposes and immediately transferred to the
client. This helps keep your storage costs down and also reduces binary size.

## Why another HTML DSL?

Many HTML libraries are built around the idea of an
[Abstract Syntax Tree](https://en.wikipedia.org/wiki/Abstract_syntax_tree) (AST). Under this
model, you build up a tree of nodes that represent the structure of the document, and then a
rendering engine performs a tree traversal to emit the HTML text. This is an intuitive mental
model for many developers, and dovetails well with Swift result builders and Swift’s general
ethos of immutable value semantics.

On the other hand, AST-based rendering can be memory-intensive, as it involves a large number of
intermediate allocations. AST-oriented data structures also struggle with static typing, as they
must balance the internal need to model the polymorphic nature of HTML nodes with the external
need to present a type-safe API.

Many AST-based HTML libraries mitigate this problem by providing voluminous convenience APIs
and multiple levels of abstraction, but these APIs do not always compose well, and can be
difficult to learn. The large number of “concise” spellings also tends to trip up AI code
generation tools who often struggle to distinguish between existent and non-existent APIs.


## Philosophy

Swift DOM is designed to be **composable and easy to learn**, with a small number of patterns
that developers must internalize. Instead of outlawing as many invalid states as possible at
compile-time, Swift DOM relies on a small number of high-impact static typing rules to eliminate
common mistakes without confusing developers with too many highly-specialized guardrails. The
tradeoff is that some understanding of the HTML format is required to use Swift DOM correctly,
as the library makes no effort to abstract away the underlying markup language.

Although Swift DOM is flexible enough to accommodate a broad range of project layouts, the
library encourages you to factor HTML rendering logic into protocol conformances on model types.
Thus, whereas you would pass around AST nodes as objects when using other libraries, with Swift
DOM you instead pass around the original model values and convert them to HTML as needed. While
this sometimes means that the same value will be rendered multiple times, much of the actual
overhead of AST-based HTML rendering comes from the AST construction itself and the intermediate
allocations needed to cache the rendered text. Therefore, re-rendering the same value is not as
expensive as one might assume when using a different library.


## Patterns

The most-recoginzable pattern in Swift DOM is the **subscript-assignment** pattern. A snippet
is worth a thousand words:

@Snippet(id: "Patterns", slice: "DIV")

The subscript-assignment pattern works with any type that conforms to ``HTML.OutputStreamable``.
Although it is possible to retroactively conform types such as ``Int`` to this protocol, we
generally recommend encoding such types through string interpolation instead, as this makes the
intent clearer.

@Snippet(id: "Patterns", slice: "DIV_INTERPOLATION")
