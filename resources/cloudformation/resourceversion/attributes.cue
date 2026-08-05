package resourceversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the type, here the ResourceVersion. This is used to uniquely identify a ResourceVersion resource
	Arn: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/resource/.+$"
	// Indicates if this type version is the current default version
	IsDefaultVersion: bool
	// The provisioning behavior of the type. AWS CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted.
	ProvisioningType: "NON_PROVISIONABLE" | "IMMUTABLE" | "FULLY_MUTABLE"
	// The scope at which the type is visible and usable in CloudFormation operations.
	// Valid values include:
	// PRIVATE: The type is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any types you register as PRIVATE.
	// PUBLIC: The type is publically visible and usable within any Amazon account.
	Visibility: "PUBLIC" | "PRIVATE"
	// The ID of the version of the type represented by this resource instance.
	VersionId: string & =~"^[A-Za-z0-9-]{1,128}$"
	// The Amazon Resource Name (ARN) of the type without the versionID.
	TypeArn: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/resource/.+$"
}
