package sdisource

#Properties: {
	Mode?: #SdiSourceMode
	// The name of the SdiSource.
	Name: string
	// A collection of key-value pairs.
	Tags?: [...#Tags]
	Type: #SdiSourceType
}

#Tags: {
	Key?: string
	Value?: string
}
