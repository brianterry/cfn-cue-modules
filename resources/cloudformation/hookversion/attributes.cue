package hookversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the type, here the HookVersion. This is used to uniquely identify a HookVersion resource
	Arn: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/hook/.+$"
	// Indicates if this type version is the current default version
	IsDefaultVersion: bool
	// The scope at which the type is visible and usable in CloudFormation operations.

Valid values include:

PRIVATE: The type is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any types you register as PRIVATE.

PUBLIC: The type is publically visible and usable within any Amazon account.
	Visibility: "PUBLIC" | "PRIVATE"
	// The ID of the version of the type represented by this hook instance.
	VersionId: string & =~"^[A-Za-z0-9-]{1,128}$"
	// The Amazon Resource Name (ARN) of the type without the versionID.
	TypeArn: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/hook/.+$"
}
