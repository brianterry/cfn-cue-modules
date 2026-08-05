package tapepool

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the custom tape pool.
	PoolARN: string & strings.MinRunes(50) & strings.MaxRunes(500)
	// The unique identifier of the custom tape pool, extracted from the ARN.
	PoolId: string
}
