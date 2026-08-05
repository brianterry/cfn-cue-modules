package predefinedattribute

import "strings"

#Properties: {
	// Custom metadata associated to a Predefined attribute that controls how the attribute behaves when used by upstream services.
	AttributeConfiguration?: {
		EnableValueValidationOnAssociation?: bool
		IsReadOnly?: bool
	}
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The name of the predefined attribute.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The assigned purposes of the predefined attribute.
	Purposes?: [...#Purpose]
	// The values of a predefined attribute.
	Values?: {
		StringList?: #StringList
	}
}
