package app

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	AppId: string & =~"d[a-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(20)
	AppName: string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(255)
	Arn: string & =~"(?s).*" & strings.MaxRunes(1000)
	DefaultDomain: string & strings.MinRunes(0) & strings.MaxRunes(1000)
}
