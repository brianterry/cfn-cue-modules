package idnamespace

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	IdMappingWorkflowProperties?: [...#IdNamespaceIdMappingWorkflowProperties]
	IdNamespaceName: #EntityName
	InputSourceConfig?: [...#IdNamespaceInputSource]
	RoleArn?: string & =~"^arn:(aws|aws-us-gov|aws-cn):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(32) & strings.MaxRunes(512)
	Tags?: [...#Tag]
	Type: "SOURCE" | "TARGET"
}

#IdNamespaceIdMappingWorkflowProperties: {
	IdMappingType: "PROVIDER" | "RULE_BASED"
	ProviderProperties?: #NamespaceProviderProperties
	RuleBasedProperties?: #NamespaceRuleBasedProperties
}

#IdNamespaceInputSource: {
	InputSourceARN: string & =~"^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(matchingworkflow/[a-zA-Z_0-9-]{1,255})$|^arn:(aws|aws-us-gov|aws-cn):glue:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(table/[a-zA-Z_0-9-]{1,255}/[a-zA-Z_0-9-]{1,255})$"
	SchemaName?: #EntityName
}

#NamespaceProviderProperties: {
	// Additional Provider configuration that would be required for the provider service. The Configuration must be in JSON string format.
	ProviderConfiguration?: {...}
	ProviderServiceArn: #ProviderServiceArn
}

#NamespaceRuleBasedProperties: {
	AttributeMatchingModel?: "ONE_TO_ONE" | "MANY_TO_MANY"
	RecordMatchingModels?: [...#RecordMatchingModel]
	RuleDefinitionTypes?: [...#RuleDefinitionType]
	Rules?: [...#Rule]
}

#Rule: {
	MatchingKeys: [...#AttributeName]
	RuleName: string & =~"^[a-zA-Z_0-9- \\t]*$" & strings.MinRunes(0) & strings.MaxRunes(255)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
