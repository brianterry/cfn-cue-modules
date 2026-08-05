package optiongroup

import "strings"

#Properties: {
	// Specifies the name of the engine that this option group should be associated with.
	// Valid Values:
	// +   ``mariadb``
	// +   ``mysql``
	// +   ``oracle-ee``
	// +   ``oracle-ee-cdb``
	// +   ``oracle-se2``
	// +   ``oracle-se2-cdb``
	// +   ``postgres``
	// +   ``sqlserver-ee``
	// +   ``sqlserver-se``
	// +   ``sqlserver-ex``
	// +   ``sqlserver-web``
	EngineName: string
	// Specifies the major version of the engine that this option group should be associated with.
	MajorEngineVersion: string
	// A list of all available options for an option group.
	OptionConfigurations?: [...#OptionConfiguration]
	// The description of the option group.
	OptionGroupDescription: string
	// The name of the option group to be created.
	// Constraints:
	// +  Must be 1 to 255 letters, numbers, or hyphens
	// +  First character must be a letter
	// +  Can't end with a hyphen or contain two consecutive hyphens
	// Example: ``myoptiongroup``
	// If you don't specify a value for ``OptionGroupName`` property, a name is automatically created for the option group.
	// This value is stored as a lowercase string.
	OptionGroupName?: string
	// Tags to assign to the option group.
	Tags?: [...#Tag]
}

#OptionConfiguration: {
	// A list of DB security groups used for this option.
	DBSecurityGroupMemberships?: [...string]
	// The configuration of options to include in a group.
	OptionName: string
	// The option settings to include in an option group.
	OptionSettings?: [...#OptionSetting]
	// The version for the option.
	OptionVersion?: string
	// The optional port for the option.
	Port?: int
	// A list of VPC security group names used for this option.
	VpcSecurityGroupMemberships?: [...string]
}

#OptionSetting: {
	// The name of the option that has settings that you can set.
	Name?: string
	// The current value of the option setting.
	Value?: string
}

#Tag: {
	// A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with ``aws:`` or ``rds:``. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with ``aws:`` or ``rds:``. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
