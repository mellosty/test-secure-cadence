import Foo from "./Foo.cdc"
import FungibleToken from "./FungibleToken.cdc"

pub contract Test {

    pub let foos: @[Foo.FooResource]

    // Public function that returns our friendly greeting!
    pub fun addFoo(_ index: Int, capability: Capability<&{FungibleToken.Receiver}>): &Foo.FooResource? {
        self.foos.append(<- Foo.createFooResource(capability: capability))
        return &self.foos[index] as &Foo.FooResource?
    }

    init() {
      self.foos <- []
    }
}
 