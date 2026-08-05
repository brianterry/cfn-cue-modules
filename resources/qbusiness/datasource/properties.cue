package datasource

import "strings"

#Properties: {
	ApplicationId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	Configuration: string
	Description?: string & =~"^[\\s\\S]*$" & strings.MinRunes(0) & strings.MaxRunes(1000)
	DisplayName: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(1000)
	DocumentEnrichmentConfiguration?: #DocumentEnrichmentConfiguration
	IndexId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	MediaExtractionConfiguration?: #MediaExtractionConfiguration
	RoleArn?: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	SyncSchedule?: string & =~"^[\\s\\S]*$" & strings.MaxRunes(998)
	Tags?: [...#Tag]
	VpcConfiguration?: #DataSourceVpcConfiguration
}

#AudioExtractionConfiguration: {
	AudioExtractionStatus: #AudioExtractionStatus
}

#DataSourceVpcConfiguration: {
	SecurityGroupIds: [...string & =~"^[-0-9a-zA-Z]+$" & strings.MinRunes(1) & strings.MaxRunes(200)]
	SubnetIds: [...string & =~"^[-0-9a-zA-Z]+$" & strings.MinRunes(1) & strings.MaxRunes(200)]
}

#DocumentAttributeCondition: {
	Key: string & =~"^[a-zA-Z0-9_][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Operator: #DocumentEnrichmentConditionOperator
	Value?: #DocumentAttributeValue
}

#DocumentAttributeTarget: {
	AttributeValueOperator?: #AttributeValueOperator
	Key: string & =~"^[a-zA-Z0-9_][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Value?: #DocumentAttributeValue
}

#DocumentEnrichmentConfiguration: {
	InlineConfigurations?: [...#InlineDocumentEnrichmentConfiguration]
	PostExtractionHookConfiguration?: #HookConfiguration
	PreExtractionHookConfiguration?: #HookConfiguration
}

#HookConfiguration: {
	InvocationCondition?: #DocumentAttributeCondition
	LambdaArn?: string & =~"^arn:aws[a-zA-Z-]*:lambda:[a-z-]*-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	RoleArn?: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	S3BucketName?: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(63)
}

#ImageExtractionConfiguration: {
	ImageExtractionStatus: #ImageExtractionStatus
}

#InlineDocumentEnrichmentConfiguration: {
	Condition?: #DocumentAttributeCondition
	DocumentContentOperator?: #DocumentContentOperator
	Target?: #DocumentAttributeTarget
}

#MediaExtractionConfiguration: {
	AudioExtractionConfiguration?: #AudioExtractionConfiguration
	ImageExtractionConfiguration?: #ImageExtractionConfiguration
	VideoExtractionConfiguration?: #VideoExtractionConfiguration
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VideoExtractionConfiguration: {
	VideoExtractionStatus: #VideoExtractionStatus
}
