package sdisource

#Properties: {
	Mode?: #SdiSourceMode
	// The name of the SdiSource.
	Name: string
	// A collection of key-value pairs.
	Tags?: [...#Tags]
	Type: #SdiSourceType
}

#SdiSourceMode: "QUADRANT" | "INTERLEAVE"

#SdiSourceState: "IDLE" | "IN_USE" | "DELETED"

#SdiSourceType: "SINGLE" | "QUAD"

#Tags: {
	Key?: string
	Value?: string
}
