package storagevirtualmachine

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ResourceARN: string
	UUID: string
	StorageVirtualMachineId: string
}
