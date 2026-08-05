package suitedefinition

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier for the suite definition.
	SuiteDefinitionId: string & strings.MinRunes(12) & strings.MaxRunes(36)
	// The Amazon Resource name for the suite definition.
	SuiteDefinitionArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The suite definition version of a test suite.
	SuiteDefinitionVersion: string & strings.MinRunes(2) & strings.MaxRunes(255)
}
