package predefinedattribute

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Last modified region.
	LastModifiedRegion: string & =~"[a-z]{2}(-[a-z]+){1,2}(-[0-9])?"
	// Last modified time.
	LastModifiedTime: number
}
