package configuration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique resource identifier for the configuration.
	Arn: string & =~"^arn:.+$" & strings.MinRunes(1) & strings.MaxRunes(190)
	// Unique identifier for the configuration.
	Uuid: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Current configuration status.
	Status: "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "DELETED" | "FAILED"
	// Configuration creation timestamp.
	CreationTime: string
}
