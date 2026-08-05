package filesystem

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreationTime: string
	FileSystemArn: string & =~"^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40})$"
	FileSystemId: string & =~"^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}|fs-[0-9a-f]{17,40})$" & strings.MaxRunes(128)
	Status: "creating" | "available" | "updating" | "deleting" | "deleted" | "error"
	StatusMessage: string
	OwnerId: string
	SynchronizationConfiguration: #SynchronizationConfiguration
}
