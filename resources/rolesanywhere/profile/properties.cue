package profile

import "strings"

#Properties: {
	AcceptRoleSessionName?: bool
	AttributeMappings?: [...#AttributeMapping]
	DurationSeconds?: number & >=900 & <=43200
	Enabled?: bool
	ManagedPolicyArns?: [...string]
	Name: string
	RequireInstanceProperties?: bool
	RoleArns: [...string & strings.MinRunes(1) & strings.MaxRunes(1011)]
	SessionPolicy?: string
	Tags?: [...#Tag]
}

#AttributeMapping: {
	CertificateField: #CertificateField
	MappingRules: [...#MappingRule]
}

#MappingRule: {
	Specifier: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
