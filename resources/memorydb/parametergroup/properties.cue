package parametergroup

import "strings"

#Properties: {
	// A description of the parameter group.
	Description?: string
	// The name of the parameter group family that this parameter group is compatible with.
	Family: string
	// The name of the parameter group.
	ParameterGroupName: string
	// An map of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional.
	Parameters?: {...}
	// An array of key-value pairs to apply to this parameter group.
	Tags?: [...#Tag]
}

#Tag: {
	// The key for the tag. May not be null.
	Key: string & =~"^(?!aws:)(?!memorydb:)[a-zA-Z0-9 _\\.\\/=+:\\-@]{1,128}$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value. May be null.
	Value: string & =~"^(?!aws:)(?!memorydb:)[a-zA-Z0-9 _\\.\\/=+:\\-@]{1,256}$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
