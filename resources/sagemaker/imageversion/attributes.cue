package imageversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ImageVersionArn: #ImageVersionArn
	ImageArn: #ImageArn
	Version: #Version
	ContainerImage: #ContainerImage
}
