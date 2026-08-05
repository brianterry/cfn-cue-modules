package container

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ContainerArn: string
	// The publicly accessible URL of the container service.
	Url: string
	// The principal ARN of the container service.
	PrincipalArn: string
	// A Boolean value to indicate whether the container service has access to private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories.
	PrivateRegistryAccess: #PrivateRegistryAccess
}
