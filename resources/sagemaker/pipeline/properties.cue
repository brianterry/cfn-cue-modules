package pipeline

import "strings"

#Properties: {
	ParallelismConfiguration?: {
		MaxParallelExecutionSteps: int & >=1
	}
	PipelineDefinition: {
		PipelineDefinitionBody: string
	} | {
		PipelineDefinitionS3Location: #S3Location
	}
	// The description of the Pipeline.
	PipelineDescription?: string & strings.MinRunes(0) & strings.MaxRunes(3072)
	// The display name of the Pipeline.
	PipelineDisplayName?: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the Pipeline.
	PipelineName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Role Arn
	RoleArn: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
}

#S3Location: {
	// The name of the S3 bucket where the PipelineDefinition file is stored.
	Bucket: string
	// The Amazon S3 ETag (a file checksum) of the PipelineDefinition file. If you don't specify a value, SageMaker skips ETag validation of your PipelineDefinition file.
	ETag?: string
	// The file name of the PipelineDefinition file (Amazon S3 object name).
	Key: string
	// For versioning-enabled buckets, a specific version of the PipelineDefinition file.
	Version?: string
}

#Tag: {
	Key: string
	Value: string
}
