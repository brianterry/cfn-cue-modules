package component

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the component.
	Arn: string & =~"^arn:[^:]+:imagebuilder:[^:]+:[^:]+:component/.+$"
	// The type of the component denotes whether the component is used to build the image or only to test it.
	Type: "BUILD" | "TEST"
	// The encryption status of the component.
	Encrypted: bool
	// The latest version references of the component.
	LatestVersion: #LatestVersion
}
