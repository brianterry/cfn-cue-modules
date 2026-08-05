package capacityprovider

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	State: #CapacityProviderState
	Arn: string & =~"^arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:capacity-provider:[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(140)
}
