package idmappingworkflow

import "strings"

#Properties: {
	// The description of the IdMappingWorkflow
	Description?: #Description
	IdMappingIncrementalRunConfig?: #IdMappingIncrementalRunConfig
	IdMappingTechniques: #IdMappingTechniques
	InputSourceConfig: [...#IdMappingWorkflowInputSource]
	OutputSourceConfig?: [...#IdMappingWorkflowOutputSource]
	RoleArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"
	Tags?: [...#Tag]
	// The name of the IdMappingWorkflow
	WorkflowName: #EntityName
}

#AttributeName: string & =~"^[a-zA-Z_0-9- \\t]*$" & strings.MinRunes(0) & strings.MaxRunes(255)

#CreatedAt: string

#Description: string & strings.MinRunes(0) & strings.MaxRunes(255)

#EntityName: string & =~"^[a-zA-Z_0-9-]*$" & strings.MinRunes(0) & strings.MaxRunes(255)

#IdMappingIncrementalRunConfig: {
	IncrementalRunType: "ON_DEMAND"
}

#IdMappingRuleBasedProperties: {
	AttributeMatchingModel: "ONE_TO_ONE" | "MANY_TO_MANY"
	RecordMatchingModel: "ONE_SOURCE_TO_ONE_TARGET" | "MANY_SOURCE_TO_ONE_TARGET"
	RuleDefinitionType?: "SOURCE" | "TARGET"
	Rules?: [...#Rule]
}

#IdMappingTechniques: {
	IdMappingType?: "PROVIDER" | "RULE_BASED"
	NormalizationVersion?: string
	ProviderProperties?: #ProviderProperties
	RuleBasedProperties?: #IdMappingRuleBasedProperties
}

#IdMappingWorkflowArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):entityresolution:.*:[0-9]+:(idmappingworkflow/.*)$"

#IdMappingWorkflowInputSource: {
	// An Glue table ARN for the input source table, MatchingWorkflow arn or IdNamespace ARN
	InputSourceARN: string & =~"^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(idnamespace/[a-zA-Z_0-9-]{1,255})$|^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(matchingworkflow/[a-zA-Z_0-9-]{1,255})$|^arn:(aws|aws-us-gov|aws-cn):glue:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:(table/[a-zA-Z_0-9-]{1,255}/[a-zA-Z_0-9-]{1,255})$"
	SchemaArn?: #SchemaMappingArn
	Type?: "SOURCE" | "TARGET"
}

#IdMappingWorkflowOutputSource: {
	KMSArn?: #KMSArn
	// The S3 path to which Entity Resolution will write the output table
	OutputS3Path: string & =~"^s3://([^/]+)/?(.*?([^/]+)/?)$"
}

#IntermediateSourceConfiguration: {
	// The s3 path that would be used to stage the intermediate data being generated during workflow execution.
	IntermediateS3Path: string
}

#KMSArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):kms:.*:[0-9]+:.*$"

#ProviderProperties: {
	IntermediateSourceConfiguration?: #IntermediateSourceConfiguration
	// Additional Provider configuration that would be required for the provider service. The Configuration must be in JSON string format
	ProviderConfiguration?: {...}
	// Arn of the Provider Service being used.
	ProviderServiceArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):(entityresolution):([a-z]{2}-[a-z]{1,10}-[0-9])::providerservice/([a-zA-Z0-9_-]{1,255})/([a-zA-Z0-9_-]{1,255})$"
}

#Rule: {
	MatchingKeys: [...#AttributeName]
	RuleName: string & =~"^[a-zA-Z_0-9- \\t]*$" & strings.MinRunes(0) & strings.MaxRunes(255)
}

#SchemaMappingArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):entityresolution:.*:[0-9]+:(schemamapping/.*)$"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#UpdatedAt: string
