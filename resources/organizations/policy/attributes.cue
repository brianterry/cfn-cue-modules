package policy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the Policy
	Id: string & =~"^p-[0-9a-zA-Z_]{8,128}$" & strings.MaxRunes(130)
	// ARN of the Policy
	Arn: string & =~"^arn:aws.*:organizations::[0-9]{12}:policy/o-[a-z0-9]{10}/(service_control|tag|backup|aiservices_opt_out)_policy/p-[a-z0-9]{8}"
	// A boolean value that indicates whether the specified policy is an AWS managed policy. If true, then you can attach the policy to roots, OUs, or accounts, but you cannot edit it.
	AwsManaged: bool
}
