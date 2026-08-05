package workloadidentity

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the workload identity.
	WorkloadIdentityArn: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The timestamp when the workload identity was created.
	CreatedTime: number
	// The timestamp when the workload identity was last updated.
	LastUpdatedTime: number
}
