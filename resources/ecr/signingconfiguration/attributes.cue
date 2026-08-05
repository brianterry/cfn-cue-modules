package signingconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// 12-digit AWS account ID of the ECR registry.
	RegistryId: string & =~"^[0-9]{12}$"
}
