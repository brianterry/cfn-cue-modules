package locationfsxlustre

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the Amazon FSx for Lustre file system location that is created.
	LocationArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:location/loc-[0-9a-z]{17}$" & strings.MaxRunes(128)
	// The URL of the FSx for Lustre location that was described.
	LocationUri: string & =~"^(efs|nfs|s3|smb|fsxw|hdfs|fsxl)://[a-zA-Z0-9.:/\\-]+$" & strings.MaxRunes(4356)
}
