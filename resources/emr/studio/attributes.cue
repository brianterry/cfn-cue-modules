package studio

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the EMR Studio.
	StudioId: string & =~"^es-[0-9A-Z]+" & strings.MinRunes(4) & strings.MaxRunes(256)
	// The Amazon Resource Name (ARN) of the EMR Studio.
	Arn: #Arn
	// The unique Studio access URL.
	Url: string & =~"^https://[0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])(:[0-9]*)*([?/#].*)?$" & strings.MaxRunes(4096)
}
