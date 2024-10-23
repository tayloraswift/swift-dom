# Using inline SVG with HTML in Swift

SVG is closely related to HTML, and it can be embedded directly in HTML documents. This tutorial
will show you how to use inline SVG with the HTML DSL.

## Opening an SVG encoding context

The HTML DSL can encode SVG directly without needing to render to an intermediate buffer. But
SVG is a large namespace, and SVG elements can only appear inside an `<svg>` element.
Conversely, normal HTML elements *cannot* appear inside an `<svg>` element. Therefore, the DSL
enforces the separation between HTML and SVG in the type system.

To open an SVG context, use the ``HTML.ContentEncoder.subscript(_:_:content:) [2XP4C]``
overload. It accepts an element of type ``SVG.Embedded``, which is an enum with a single case,
``SVG.Embedded/svg``. An SVG context looks visually identical to a
[nested HTML context](doc:Getting-started), but it yields an ``SVG.ContentEncoder`` instead of
an ``HTML.ContentEncoder``.


## Encoding inline SVG

Here is an example that generates an HTML document containing an SVG circle inside a `<figure>`
element.

@Snippet(id: "SVG embedded", slice: "EMBEDDED")

```html
<!DOCTYPE html>
<html>
    <head>
        <title>SVG example</title>
    </head>
    <body>
        <figure>
            <svg viewBox='-1 -1 2 2'>
                <circle cx='0' cy='0' r='0.5' fill='#ff4096'></circle>
            </svg>
        </figure>
    </body>
</html>
```

>   Tip:
>   You should always specify the ``SVG.Attribute/viewBox`` of the SVG image. Unlike the HTML
>   DSL, you cannot omit the attribute-encoding closure from the root element.


## Using SVG resource files

You can also generate full SVG documents that can be referenced as resources. Below is an
example that generates an identical image as the previous example, but as a resource file.

@Snippet(id: "SVG resource", slice: "RESOURCE")

```svg
<?xml version='1.0' encoding='UTF-8' standalone='no'?>
<svg viewBox='-1 -1 2 2' xmlns='http://www.w3.org/2000/svg'>
    <circle cx='0' cy='0' r='0.5' fill='#ff4096'></circle>
</svg>
```

Note that without the ``SVG.AttributeEncoder/xmlns`` attribute, some browsers may display the
SVG as an XML tree instead of an image.
