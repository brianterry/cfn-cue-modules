package memory

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	MemoryArn: #MemoryArn
	MemoryId: #MemoryId
	Status: #MemoryStatus
	CreatedAt: string
	UpdatedAt: string
	FailureReason: string
	MemoryStrategies: #MemoryStrategies
}
