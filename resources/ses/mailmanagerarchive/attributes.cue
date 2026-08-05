package mailmanagerarchive

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ArchiveArn: string
	ArchiveId: string & strings.MinRunes(1) & strings.MaxRunes(66)
	ArchiveState: #ArchiveState
}
