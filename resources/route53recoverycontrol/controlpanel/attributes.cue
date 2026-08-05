package controlpanel

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the cluster.
	ControlPanelArn: string & =~"^[A-Za-z0-9:\\/_-]*$"
	// The deployment status of control panel. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.
	Status: "PENDING" | "DEPLOYED" | "PENDING_DELETION"
	// Count of associated routing controls
	RoutingControlCount: int
	// A flag that Amazon Route 53 Application Recovery Controller sets to true to designate the default control panel for a cluster. When you create a cluster, Amazon Route 53 Application Recovery Controller creates a control panel, and sets this flag for that control panel. If you create a control panel yourself, this flag is set to false.
	DefaultControlPanel: bool
}
