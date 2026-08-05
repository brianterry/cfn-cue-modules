package organization

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier (ID) of an organization.
	Id: string & =~"^o-[a-z0-9]{10,32}$"
	// The Amazon Resource Name (ARN) of an organization.
	Arn: string & =~"^arn:aws.*:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32}"
	// The Amazon Resource Name (ARN) of the account that is designated as the management account for the organization.
	ManagementAccountArn: string & =~"^arn:aws.*:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}"
	// The unique identifier (ID) of the management account of an organization.
	ManagementAccountId: string & =~"^\\d{12}$"
	// The email address that is associated with the AWS account that is designated as the management account for the organization.
	ManagementAccountEmail: string & =~"[^\\s@]+@[^\\s@]+\\.[^\\s@]+" & strings.MinRunes(6) & strings.MaxRunes(64)
	// The unique identifier (ID) for the root.
	RootId: string & =~"^r-[0-9a-z]{4,32}$" & strings.MaxRunes(64)
}
