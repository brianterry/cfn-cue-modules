package deployment

import "strings"

#Properties: {
	// Workload deployment pattern name
	DeploymentPatternName: string & =~"^[A-Za-z0-9][a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Name of LaunchWizard deployment
	Name: string & =~"^[A-Za-z0-9_\\s\\.-]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	// LaunchWizard deployment specifications
	Specifications?: #DeploymentSpecifications
	// Tags for LaunchWizard deployment
	Tags?: [...#Tags]
	// Workload Name for LaunchWizard deployment
	WorkloadName: string & =~"^[A-Za-z][a-zA-Z0-9-_]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#DeploymentSpecifications: {...}

#DeploymentStatus: "COMPLETED" | "CREATING" | "DELETE_IN_PROGRESS" | "DELETE_INITIATING" | "DELETE_FAILED" | "DELETED" | "FAILED" | "IN_PROGRESS" | "VALIDATING"

#Tags: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
