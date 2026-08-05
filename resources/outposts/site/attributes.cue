package site

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	SiteId: string & =~"^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:site/)?(os-[a-f0-9]{17})$" & strings.MinRunes(1) & strings.MaxRunes(255)
	SiteArn: string & =~"^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:site/(os-[a-f0-9]{17})$" & strings.MinRunes(1) & strings.MaxRunes(255)
}
