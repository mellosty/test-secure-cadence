import ExampleToken from "./cadence/ExampleToken.cdc"

pub fun main(test: String): Bool {
  let compositeType = CompositeType(test) ?? panic("Failed")
  return compositeType == Type<@ExampleToken.Vault>()
}