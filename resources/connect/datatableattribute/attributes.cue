package datatableattribute

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	AttributeId: #AttributeId
	LockVersion: {
	Attribute?: string
	DataTable?: string
}
	LastModifiedRegion: string & =~"[a-z]{2}(-[a-z]+){1,2}(-[0-9])?"
	LastModifiedTime: number
}
