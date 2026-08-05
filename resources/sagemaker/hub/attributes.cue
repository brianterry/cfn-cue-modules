package hub

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the hub.
	HubArn: string & =~".*" & strings.MaxRunes(255)
	// The status of the hub.
	HubStatus: "InService" | "Creating" | "Updating" | "Deleting" | "CreateFailed" | "UpdateFailed" | "DeleteFailed"
	// The date and time that the hub was created.
	CreationTime: string
	// The date and time that the hub was last modified.
	LastModifiedTime: string
}
