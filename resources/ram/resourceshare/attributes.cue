package resourceshare

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string
	// The current status of the resource share.
	Status: "PENDING" | "ACTIVE" | "FAILED" | "DELETING" | "DELETED"
	// The date and time when the resource share was created.
	CreationTime: string
	// The date and time when the resource share was last updated.
	LastUpdatedTime: string
	// The feature set of the resource share.
	FeatureSet: "CREATED_FROM_POLICY" | "PROMOTING_TO_STANDARD" | "STANDARD"
	// The ID of the AWS account that owns the resource share.
	OwningAccountId: string
}
