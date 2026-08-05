package locationfsxontap

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the Amazon FSx ONTAP file system location that is created.
	LocationArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:location/loc-[0-9a-z]{17}$" & strings.MaxRunes(128)
	// The URL of the FSx ONTAP file system that was described.
	LocationUri: string & =~"^(efs|nfs|s3|smb|hdfs|fsx[a-z0-9-]+)://[a-zA-Z0-9.:/\\-]+$" & strings.MaxRunes(4360)
	// The Amazon Resource Name (ARN) for the FSx ONAP file system.
	FsxFilesystemArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]+:[0-9]{12}:file-system/fs-[0-9a-f]+$" & strings.MaxRunes(128)
	Protocol: #Protocol
}
