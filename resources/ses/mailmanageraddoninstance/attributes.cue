package mailmanageraddoninstance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	AddonInstanceArn: string
	AddonInstanceId: string & =~"^ai-[a-zA-Z0-9]{1,64}$" & strings.MinRunes(4) & strings.MaxRunes(67)
	AddonName: string
}
