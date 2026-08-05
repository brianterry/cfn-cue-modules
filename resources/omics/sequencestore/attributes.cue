package sequencestore

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The store's ARN.
	Arn: string & =~"^arn:.+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	// When the store was created.
	CreationTime: string
	// This is ARN of the access point associated with the S3 bucket storing read sets.
	S3AccessPointArn: string & =~"^arn:[^:]*:s3:[^:]*:[^:]*:accesspoint/.*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The S3 URI of the sequence store.
	S3Uri: string & =~"^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/(.{1,1024})$"
	SequenceStoreId: string & =~"^[0-9]+$" & strings.MinRunes(10) & strings.MaxRunes(36)
	Status: #SequenceStoreStatus
	// The status message of the sequence store.
	StatusMessage: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	// The last-updated time of the sequence store.
	UpdateTime: string
}
