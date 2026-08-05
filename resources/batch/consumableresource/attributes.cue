package consumableresource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ConsumableResourceArn: #ResourceArn
	CreatedAt: int
	// In-use Quantity of ConsumableResource.
	InUseQuantity: int
	// Available Quantity of ConsumableResource.
	AvailableQuantity: int
}
