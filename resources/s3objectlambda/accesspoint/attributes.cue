package accesspoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"arn:[^:]+:s3-object-lambda:[^:]*:\\d{12}:accesspoint/.*"
	Alias: #Alias
	PolicyStatus: #PolicyStatus
	// The date and time when the Object lambda Access Point was created.
	CreationDate: string
	// The PublicAccessBlock configuration that you want to apply to this Access Point. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status 'The Meaning of Public' in the Amazon Simple Storage Service Developer Guide.
	PublicAccessBlockConfiguration: #PublicAccessBlockConfiguration
}
