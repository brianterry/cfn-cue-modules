package image

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the image.
	Arn: string & =~"^arn:[^:]+:imagebuilder:[^:]+:[^:]+:image/.+$"
	// The name of the image.
	Name: string
	// The AMI ID of the EC2 AMI in current region.
	ImageId: string
	// URI for containers created in current Region with default ECR image tag
	ImageUri: string
	// The latest version references of the image.
	LatestVersion: #LatestVersion
}
