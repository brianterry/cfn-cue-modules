package syncjob

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the SyncJob.
	Arn: string & =~"arn:((aws)|(aws-cn)|(aws-us-gov)):iottwinmaker:[a-z0-9-]+:[0-9]{12}:[\\/a-zA-Z0-9_\\-\\.:]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The date and time when the sync job was created.
	CreationDateTime: #DateTimeFormat
	// The date and time when the sync job was updated.
	UpdateDateTime: #DateTimeFormat
	// The state of SyncJob.
	State: string & =~"[a-zA-Z_\\-0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}
