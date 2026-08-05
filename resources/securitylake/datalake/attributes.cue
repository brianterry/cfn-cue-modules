package datalake

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) created by you to provide to the subscriber.
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(1011)
	// The ARN for the Amazon Security Lake Amazon S3 bucket.
	S3BucketArn: string
}
