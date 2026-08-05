package accessgrant

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID assigned to this access grant.
	AccessGrantId: string
	// The Amazon Resource Name (ARN) of the specified access grant.
	AccessGrantArn: #AccessGrantArn
	// The S3 path of the data to which you are granting access. It is a combination of the S3 path of the registered location and the subprefix.
	GrantScope: string
}
