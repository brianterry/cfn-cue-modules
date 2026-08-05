package suitedefinition

import "strings"

#Properties: {
	SuiteDefinitionConfiguration: {
		DevicePermissionRoleArn: #DevicePermissionRoleArn
		Devices?: #Devices
		IntendedForQualification?: #IntendedForQualification
		RootGroup: #RootGroup
		SuiteDefinitionName?: #SuiteDefinitionName
	}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#DeviceUnderTest: {
	CertificateArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	ThingArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
