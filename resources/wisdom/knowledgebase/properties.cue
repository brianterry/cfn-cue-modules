package knowledgebase

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	KnowledgeBaseType: #KnowledgeBaseType
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	RenderingConfiguration?: #RenderingConfiguration
	ServerSideEncryptionConfiguration?: #ServerSideEncryptionConfiguration
	SourceConfiguration?: #SourceConfiguration
	Tags?: [...#Tag]
	VectorIngestionConfiguration?: #VectorIngestionConfiguration
}

#AppIntegrationsConfiguration: {
	AppIntegrationArn: string & =~"^arn:[a-z-]+?:[a-z-]+?:[a-z0-9-]*?:([0-9]{12})?:[a-zA-Z0-9-:/]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ObjectFields?: [...string & strings.MinRunes(1) & strings.MaxRunes(4096)]
}

#BedrockFoundationModelConfiguration: {
	ModelArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model\\/anthropic.claude-3-haiku-20240307-v1:0$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ParsingPrompt?: {
		ParsingPromptText: string & strings.MinRunes(1) & strings.MaxRunes(10000)
	}
}

#FixedSizeChunkingConfiguration: {
	MaxTokens: number & >=1
	OverlapPercentage: number & >=1 & <=99
}

#HierarchicalChunkingConfiguration: {
	LevelConfigurations: [...#HierarchicalChunkingLevelConfiguration]
	OverlapTokens: number & >=1
}

#HierarchicalChunkingLevelConfiguration: {
	MaxTokens: number & >=1 & <=8192
}

#KnowledgeBaseType: "EXTERNAL" | "CUSTOM" | "MESSAGE_TEMPLATES" | "MANAGED" | "QUICK_RESPONSES"

#ManagedSourceConfiguration: {
	WebCrawlerConfiguration: #WebCrawlerConfiguration
}

#RenderingConfiguration: {
	TemplateUri?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#SeedUrl: {
	Url?: string & =~"^https?://[A-Za-z0-9][^\\s]*$"
}

#SemanticChunkingConfiguration: {
	BreakpointPercentileThreshold: number & >=50 & <=99
	BufferSize: number & >=0 & <=1
	MaxTokens: number & >=1
}

#ServerSideEncryptionConfiguration: {
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#SourceConfiguration: {
	AppIntegrations: #AppIntegrationsConfiguration
} | {
	ManagedSourceConfiguration: #ManagedSourceConfiguration
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#UrlFilterList: [...#UrlFilterPattern]

#UrlFilterPattern: string & strings.MinRunes(1) & strings.MaxRunes(1000)

#VectorIngestionConfiguration: {
	ChunkingConfiguration?: {
		ChunkingStrategy: "FIXED_SIZE" | "NONE" | "HIERARCHICAL" | "SEMANTIC"
		FixedSizeChunkingConfiguration?: #FixedSizeChunkingConfiguration
		HierarchicalChunkingConfiguration?: #HierarchicalChunkingConfiguration
		SemanticChunkingConfiguration?: #SemanticChunkingConfiguration
	}
	ParsingConfiguration?: {
		BedrockFoundationModelConfiguration?: #BedrockFoundationModelConfiguration
		ParsingStrategy: "BEDROCK_FOUNDATION_MODEL"
	}
}

#WebCrawlerConfiguration: {
	CrawlerLimits?: {
		RateLimit?: number & >=1 & <=3000
	}
	ExclusionFilters?: #UrlFilterList
	InclusionFilters?: #UrlFilterList
	Scope?: "HOST_ONLY" | "SUBDOMAINS"
	UrlConfiguration: {
		SeedUrls?: [...#SeedUrl]
	}
}
