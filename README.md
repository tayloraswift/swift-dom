<p align="center">
  <strong><em><code>document</code></em></strong><br><small>server-side swift submodule</small>
</p>

This is a non-resilient Swift submodule. It should be imported as a Git submodule, not an SPM package. 

**This submodule will add the following top-level symbols to your namespace**:

* `enum XML`
* `enum SVG`
* `enum HTML`

In addition, it adds symbols to the following standard-library namespaces:

* `extension Swift.Never` (adds conformance to `XML.ID` and an unreachable `xmlId:String { get }` property)

All declarations are `internal`.
