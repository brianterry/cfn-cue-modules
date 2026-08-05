package testcase

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the test case.
	TestCaseArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/test-case/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(500)
	// Last modified region.
	LastModifiedRegion: string & =~"[a-z]{2}(-[a-z]+){1,2}(-[0-9])?"
	// Last modified time.
	LastModifiedTime: #Timestamp
}
