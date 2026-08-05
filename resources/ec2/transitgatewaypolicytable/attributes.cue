package transitgatewaypolicytable

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Id of transit gateway policy table.
	TransitGatewayPolicyTableId: string
	// State of the transit gateway policy table
	State: string
	// Creation time of the transit gateway policy table
	CreationTime: string
}
