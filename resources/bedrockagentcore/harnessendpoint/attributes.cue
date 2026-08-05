package harnessendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the endpoint.
	Arn: string
	// The name of the harness that the endpoint belongs to.
	HarnessName: string
	Status: #HarnessEndpointStatus
	// The harness version that the endpoint is currently serving.
	LiveVersion: string & =~"^([1-9][0-9]{0,4})$" & strings.MinRunes(1) & strings.MaxRunes(5)
	// The timestamp when the endpoint was created.
	CreatedAt: string
	// The timestamp when the endpoint was last updated.
	UpdatedAt: string
}
