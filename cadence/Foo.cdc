import FungibleToken from "./FungibleToken.cdc"

pub contract Foo {

    pub resource FooResource {
        pub let hello: String

        init() {
            self.hello = "Hello"
        }
    }

    pub fun createFooResource(capability: Capability<&{FungibleToken.Receiver}>): @FooResource {
        // Doing nothing with the capability on purpose
        return <- create FooResource()
    }
}