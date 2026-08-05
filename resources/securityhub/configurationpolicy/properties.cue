package configurationpolicy

import "strings"

#Properties: {
	ConfigurationPolicy: #Policy
	// The description of the configuration policy.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// The name of the configuration policy.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: #Tags
}

#ParameterConfiguration: {
	Value?: #ParameterValue
	// Identifies whether a control parameter uses a custom user-defined value or subscribes to the default AWS Security Hub behavior.
	ValueType: "DEFAULT" | "CUSTOM"
}

#ParameterValue: {
	// A control parameter that is a boolean.
	Boolean?: bool
	// A control parameter that is a double.
	Double?: number
	// A control parameter that is an enum.
	Enum?: string & strings.MaxRunes(2048)
	// A control parameter that is a list of enums.
	EnumList?: [...string & strings.MaxRunes(2048)]
	// A control parameter that is an integer.
	Integer?: int
	// A control parameter that is a list of integers.
	IntegerList?: [...int]
	// A control parameter that is a string.
	String?: string & strings.MaxRunes(2048)
	// A control parameter that is a list of strings.
	StringList?: [...string & strings.MaxRunes(2048)]
}

#Policy: {
	SecurityHub?: #SecurityHubPolicy
}

#SecurityControlCustomParameter: {
	// An object that specifies parameter values for a control in a configuration policy.
	Parameters?: {...}
	// The ID of the security control.
	SecurityControlId?: string & strings.MaxRunes(2048)
}

#SecurityControlsConfiguration: {
	// A list of security controls that are disabled in the configuration policy
	DisabledSecurityControlIdentifiers?: [...string & strings.MaxRunes(2048)]
	// A list of security controls that are enabled in the configuration policy.
	EnabledSecurityControlIdentifiers?: [...string & strings.MaxRunes(2048)]
	// A list of security controls and control parameter values that are included in a configuration policy.
	SecurityControlCustomParameters?: [...#SecurityControlCustomParameter]
}

#SecurityHubPolicy: {
	// A list that defines which security standards are enabled in the configuration policy.
	EnabledStandardIdentifiers?: [...string & strings.MaxRunes(2048)]
	SecurityControlsConfiguration?: #SecurityControlsConfiguration
	// Indicates whether Security Hub is enabled in the policy.
	ServiceEnabled?: bool
}

#Tags: {...}
