package organizationalunit

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of this OU.
	Arn: string & =~"^arn:aws.*:organizations::\\d{12}:ou/o-[a-z0-9]{10,32}/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}"
	// The unique identifier (ID) associated with this OU.
	Id: string & =~"^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$" & strings.MaxRunes(68)
	// The path in the organization where this OU exists.
	Path: string & =~"^(o-[a-z0-9]{10,32}/r-[0-9a-z]{4,32}(/ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})*(/\\d{12})*)/"
}
