package enabledcontrol

import "strings"

#Properties: {
	// Arn of the control.
	ControlIdentifier: string & =~"^arn:aws[0-9a-zA-Z_\\-:\\/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Parameters to configure the enabled control behavior.
	Parameters?: [...#EnabledControlParameter]
	// A set of tags to assign to the enabled control.
	Tags?: [...#Tag]
	// Arn for Organizational unit to which the control needs to be applied
	TargetIdentifier: string & =~"^arn:aws[0-9a-zA-Z_\\-:\\/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#EnabledControlParameter: {
	Key: string
	Value: [...string | number | {...} | bool] | string | number | {...} | bool
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
