package verifiedaccessgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the AWS Verified Access group.
	VerifiedAccessGroupId: string
	// Time this Verified Access Group was created.
	CreationTime: string
	// Time this Verified Access Group was last updated.
	LastUpdatedTime: string
	// The AWS account number that owns the group.
	Owner: string
	// The ARN of the Verified Access group.
	VerifiedAccessGroupArn: string
}
