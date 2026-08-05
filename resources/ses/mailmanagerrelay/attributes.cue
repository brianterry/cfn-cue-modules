package mailmanagerrelay

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	RelayArn: string
	RelayId: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}
