package datatable

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The arn of the Data Table
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The lock version of the Data Table
	LockVersion: {
	DataTable?: string
}
	// The creation time of the Data Table
	CreatedTime: #Timestamp
	// Last modified region.
	LastModifiedRegion: string & =~"[a-z]{2}(-[a-z]+){1,2}(-[0-9])?"
	// Last modified time.
	LastModifiedTime: #Timestamp
}
