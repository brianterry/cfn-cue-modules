package workflowversion

import "strings"

#Properties: {
	Accelerators?: #Accelerators
	ContainerRegistryMap?: #ContainerRegistryMap
	ContainerRegistryMapUri?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(750)
	DefinitionRepository?: #DefinitionRepository
	DefinitionUri?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Description?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Engine?: #WorkflowEngine
	Main?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	ParameterTemplate?: #WorkflowParameterTemplate
	// Path to the primary workflow parameter template JSON file inside the repository
	ParameterTemplatePath?: string & =~"^[\\S]+$"
	StorageCapacity?: number & >=0 & <=100000
	StorageType?: #StorageType
	Tags?: #TagMap
	VersionName: string & =~"^[A-Za-z0-9][A-Za-z0-9\\-\\._]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	WorkflowBucketOwnerId?: string & =~"^[0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(12)
	WorkflowId: string & =~"^[0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(18)
	// The markdown content for the workflow's README file. This provides documentation and usage information for users of the workflow.
	readmeMarkdown?: string
	// The path to the workflow README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the README.md file from the root directory of the repository will be used.
	readmePath?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The S3 URI of the README file for the workflow. This file provides documentation and usage information for the workflow. The S3 URI must begin with s3://USER-OWNED-BUCKET/. The requester must have access to the S3 bucket and object. The max README content length is 500 KiB.
	readmeUri?: string & =~"^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/((.{1,1024}))$"
}

#ContainerRegistryMap: {
	ImageMappings?: [...#ImageMapping]
	RegistryMappings?: [...#RegistryMapping]
}

#DefinitionRepository: {
	connectionArn?: string & =~"^arn:aws(-[\\\\w]+)*:.+:.+:[0-9]{12}:.+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	excludeFilePatterns?: [...string]
	fullRepositoryId?: string & =~".+/.+"
	sourceReference?: #SourceReference
}

#ImageMapping: {
	DestinationImage?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(750)
	SourceImage?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(750)
}

#RegistryMapping: {
	EcrAccountId?: string & =~"^[0-9]+$" & strings.MinRunes(12) & strings.MaxRunes(12)
	EcrRepositoryPrefix?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	UpstreamRegistryUrl?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(750)
	UpstreamRepositoryPrefix?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(2) & strings.MaxRunes(30)
}

#SourceReference: {
	type?: "BRANCH" | "TAG" | "COMMIT"
	value?: string
}

#WorkflowParameter: {
	Description?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(0) & strings.MaxRunes(256)
	Optional?: bool
}
