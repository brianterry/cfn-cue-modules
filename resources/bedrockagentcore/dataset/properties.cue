package dataset

import "strings"

#Properties: {
	// Human-readable name for the dataset. Unique within the account (case-insensitive). Immutable after creation.
	DatasetName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,47}$"
	// A description of the dataset.
	Description?: string & strings.MaxRunes(200)
	// Optional AWS KMS key ARN for SSE-KMS on service S3 writes.
	KmsKeyArn?: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Versioned schema type governing the structure of examples. Immutable after creation.
	SchemaType: "AGENTCORE_EVALUATION_PREDEFINED_V1" | "AGENTCORE_EVALUATION_SIMULATED_V1"
	Source?: #DataSourceType
	// A list of tags to assign to the dataset.
	Tags?: [...#Tag]
}

#DataSourceType: {
	InlineExamples?: #InlineExamplesSource
	S3Source?: #S3Source
}

#InlineExamplesSource: {
	// Examples to add. Each example is a free-form JSON document validated against the declared schemaType.
	Examples: [...{...}]
}

#S3Source: {
	// S3 URI of the JSONL file (e.g. s3://my-bucket/path/to/examples.jsonl).
	S3Uri: string & =~"^s3://[a-z0-9][a-z0-9.\\-]{1,61}[a-z0-9]/.{1,1024}$"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
