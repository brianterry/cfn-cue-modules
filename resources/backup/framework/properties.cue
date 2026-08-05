package framework

import "strings"

#Properties: {
	// Contains detailed information about all of the controls of a framework. Each framework must contain at least one control.
	FrameworkControls: [...#FrameworkControl]
	// An optional description of the framework with a maximum 1,024 characters.
	FrameworkDescription?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The unique name of a framework. This name is between 1 and 256 characters, starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).
	FrameworkName?: string & =~"[a-zA-Z][_a-zA-Z0-9]*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Metadata that you can assign to help organize the frameworks that you create. Each tag is a key-value pair.
	FrameworkTags?: [...#Tag]
}

#ControlInputParameter: {
	ParameterName: string
	ParameterValue: string
}

#FrameworkControl: {
	// A list of ParameterName and ParameterValue pairs.
	ControlInputParameters?: [...#ControlInputParameter]
	// The name of a control. This name is between 1 and 256 characters.
	ControlName: string
	// The scope of a control. The control scope defines what the control will evaluate. Three examples of control scopes are: a specific backup plan, all backup plans with a specific tag, or all backup plans.
	ControlScope?: {
		ComplianceResourceIds?: [...string]
		ComplianceResourceTypes?: [...string]
		Tags?: [...#Tag]
	}
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
