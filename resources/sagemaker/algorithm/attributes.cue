package algorithm

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the algorithm.
	AlgorithmArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// A timestamp specifying when the algorithm was created.
	CreationTime: string
}
