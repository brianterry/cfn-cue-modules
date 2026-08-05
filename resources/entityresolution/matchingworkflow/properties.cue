package matchingworkflow

import "strings"

#Properties: {
	// The description of the MatchingWorkflow
	Description?: #Description
	IncrementalRunConfig?: #IncrementalRunConfig
	InputSourceConfig: [...#InputSource]
	OutputSourceConfig: [...#OutputSource]
	ResolutionTechniques: #ResolutionTechniques
	RoleArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"
	Tags?: [...#Tag]
	// The name of the MatchingWorkflow
	WorkflowName: #EntityName
}

#CustomerProfilesIntegrationConfig: {
	DomainArn: #CustomerProfilesDomainArn
	ObjectTypeArn: #CustomerProfilesObjectTypeArn
}

#IncrementalRunConfig: {
	IncrementalRunType: "IMMEDIATE"
}

#InputSource: {
	ApplyNormalization?: bool
	// An Glue table ARN for the input source table
	InputSourceARN: string & =~"arn:(aws|aws-us-gov|aws-cn):.*:.*:[0-9]+:.*$"
	SchemaArn: #SchemaMappingArn
}

#IntermediateSourceConfiguration: {
	// The s3 path that would be used to stage the intermediate data being generated during workflow execution.
	IntermediateS3Path: string
}

#MatchingConfig: {
	// Enables transitive matching to process records across all rule levels and connect unmatched records to existing match groups
	EnableTransitiveMatching?: bool
}

#OutputAttribute: {
	Hashed?: bool
	Name: #AttributeName
}

#OutputSource: {
	ApplyNormalization?: bool
	CustomerProfilesIntegrationConfig?: #CustomerProfilesIntegrationConfig
	KMSArn?: #KMSArn
	Output: [...#OutputAttribute]
	// The S3 path to which Entity Resolution will write the output table
	OutputS3Path?: string & =~"^s3://([^/]+)/?(.*?([^/]+)/?)$"
}

#ProviderProperties: {
	IntermediateSourceConfiguration?: #IntermediateSourceConfiguration
	// Additional Provider configuration that would be required for the provider service. The Configuration must be in JSON string format
	ProviderConfiguration?: {...}
	// Arn of the Provider service being used.
	ProviderServiceArn: string
}

#ResolutionTechniques: {
	// Enables the workflow to use real-time matching. Can only be set on creation for RULE_MATCHING workflows that define RuleConditionProperties.
	EnableRealTimeMatching?: bool
	ProviderProperties?: #ProviderProperties
	ResolutionType?: #ResolutionType
	RuleBasedProperties?: #RuleBasedProperties
	RuleConditionProperties?: #RuleConditionProperties
}

#Rule: {
	MatchingKeys: [...#AttributeName]
	RuleName: string & =~"^[a-zA-Z_0-9- \\t]*$" & strings.MinRunes(0) & strings.MaxRunes(255)
}

#RuleBasedProperties: {
	AttributeMatchingModel: "ONE_TO_ONE" | "MANY_TO_MANY"
	MatchPurpose?: "IDENTIFIER_GENERATION" | "INDEXING"
	Rules: [...#Rule]
}

#RuleCondition: {
	Condition?: string
	RuleName?: #AttributeName
}

#RuleConditionProperties: {
	MatchingConfig?: #MatchingConfig
	Rules: [...#RuleCondition]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
