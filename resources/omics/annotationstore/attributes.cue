package annotationstore

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreationTime: string
	Id: string & =~"^[a-f0-9]{12}$"
	Status: #StoreStatus
	StatusMessage: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	StoreArn: string & =~"^arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	StoreSizeBytes: number
	UpdateTime: string
}
