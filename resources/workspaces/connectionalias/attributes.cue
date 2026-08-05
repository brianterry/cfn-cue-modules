package connectionalias

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ConnectionAliasState: "CREATING" | "CREATED" | "DELETING"
	AliasId: string & =~"^wsca-[0-9a-z]{8,63}$" & strings.MinRunes(13) & strings.MaxRunes(68)
	Associations: [...#ConnectionAliasAssociation]
}
