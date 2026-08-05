package customdataidentifier

#Properties: {
	// Description of custom data identifier.
	Description?: string
	// Words to be ignored.
	IgnoreWords?: [...string]
	// Keywords to be matched against.
	Keywords?: [...string]
	// Maximum match distance.
	MaximumMatchDistance?: int
	// Name of custom data identifier.
	Name: string
	// Regular expression for custom data identifier.
	Regex: string
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}
