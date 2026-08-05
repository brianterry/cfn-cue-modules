package securityprofile

import "strings"

#Properties: {
	// The identifier of the hierarchy group that a security profile uses to restrict access to resources in Amazon Connect.
	AllowedAccessControlHierarchyGroupId?: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(0) & strings.MaxRunes(127)
	// The list of tags that a security profile uses to restrict access to resources in Amazon Connect.
	AllowedAccessControlTags?: [...#Tag]
	// The list of flow-module resources to be linked to a security profile in Amazon Connect.
	AllowedFlowModules?: [...#FlowModule]
	// A list of third-party applications that the security profile will give access to.
	Applications?: [...#Application]
	// The description of the security profile.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(250)
	GranularAccessControlConfiguration?: {
		DataTableAccessControlConfiguration?: #DataTableAccessControlConfiguration
	}
	// The list of resources that a security profile applies hierarchy restrictions to in Amazon Connect.
	HierarchyRestrictedResources?: [...#ResourceName]
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// Permissions assigned to the security profile.
	Permissions?: [...#Permission]
	// The name of the security profile.
	SecurityProfileName: string & =~"^[ a-zA-Z0-9_@-]+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	// The list of resources that a security profile applies tag restrictions to in Amazon Connect.
	TagRestrictedResources?: [...#ResourceName]
	// The tags used to organize, track, or control access for this resource.
	Tags?: [...#Tag]
}

#Application: {
	// The permissions that the agent is granted on the application
	ApplicationPermissions?: [...#ApplicationPermission]
	// Namespace of the application that you want to give access to.
	Namespace?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The type of the application.
	Type?: "MCP" | "THIRD_PARTY_APPLICATION"
}

#DataTableAccessControlConfiguration: {
	PrimaryAttributeAccessControlConfiguration?: #PrimaryAttributeAccessControlConfigurationItem
}

#FlowModule: {
	// The identifier of the application that you want to give access to.
	FlowModuleId?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The type of the first-party application
	Type?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#PrimaryAttributeAccessControlConfigurationItem: {
	// An array of PrimaryAttributeValue objects.
	PrimaryAttributeValues?: [...#PrimaryAttributeValue]
}

#PrimaryAttributeValue: {
	// Specifies the type of access granted. Currently, only "ALLOW" is supported
	AccessType?: "ALLOW"
	// The name of the primary attribute.
	AttributeName?: string & =~"^(?!aws:|connect:)[\\p{L}\\p{Z}\\p{N}\\-_.:=@'|]+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	// An array of allowed primary values for the specified primary attribute.
	Values?: [...string & =~"^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]+$" & strings.MinRunes(1) & strings.MaxRunes(1000)]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
