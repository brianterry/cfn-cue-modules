package containerrecipe

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the container recipe.
	Arn: string & =~"^arn:[^:]+:imagebuilder:[^:]+:[^:]+:container-recipe/.+$"
	// The latest version references of the container recipe.
	LatestVersion: #LatestVersion
}
