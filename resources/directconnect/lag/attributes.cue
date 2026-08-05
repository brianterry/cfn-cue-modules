package lag

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the LAG.
	LagArn: string & =~"^arn:aws[a-z-]*:directconnect:[a-z0-9-]+:[0-9]{12}:dxlag/dxlag-[a-z0-9]{8,21}$"
	// The ID of the LAG.
	LagId: string & =~"^dxlag-[a-z0-9]{8,21}$"
	// The state of the LAG.
	LagState: string & =~"^(requested|pending|available|down|deleting|deleted|unknown)$"
}
