package snapshot

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Definition for snapshot resource
	Snapshot: #Snapshot
	// The owner account of the snapshot.
	OwnerAccount: string
}
