package document

import "strings"

#Properties: {
	// A list of key and value pairs that describe attachments to a version of a document.
	Attachments?: [...#AttachmentsSource]
	// The content for the Systems Manager document in JSON, YAML or String format.
	Content: {...}
	// Specify the document format for the request. The document format can be either JSON or YAML. JSON is the default format.
	DocumentFormat?: "YAML" | "JSON" | "TEXT"
	// The type of document to create.
	DocumentType?: "ApplicationConfiguration" | "ApplicationConfigurationSchema" | "Automation" | "Automation.ChangeTemplate" | "AutoApprovalPolicy" | "ChangeCalendar" | "CloudFormation" | "Command" | "DeploymentStrategy" | "ManualApprovalPolicy" | "Package" | "Policy" | "ProblemAnalysis" | "ProblemAnalysisTemplate" | "Session"
	// A name for the Systems Manager document.
	Name?: string & =~"^[a-zA-Z0-9_\\-.]{3,128}$"
	// A list of SSM documents required by a document. For example, an ApplicationConfiguration document requires an ApplicationConfigurationSchema document.
	Requires?: [...#DocumentRequires]
	// Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment.
	Tags?: [...#Tag]
	// Specify a target type to define the kinds of resources the document can run on.
	TargetType?: string & =~"^\\/[\\w\\.\\-\\:\\/]*$"
	// Update method - when set to 'Replace', the update will replace the existing document; when set to 'NewVersion', the update will create a new version.
	UpdateMethod?: "Replace" | "NewVersion"
	// An optional field specifying the version of the artifact you are creating with the document. This value is unique across all versions of a document, and cannot be changed.
	VersionName?: string & =~"^[a-zA-Z0-9_\\-.]{1,128}$"
}

#AttachmentsSource: {
	// The key of a key-value pair that identifies the location of an attachment to a document.
	Key?: "SourceUrl" | "S3FileUrl" | "AttachmentReference"
	// The name of the document attachment file.
	Name?: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of a key-value pair that identifies the location of an attachment to a document. The format for Value depends on the type of key you specify.
	Values?: [...string & strings.MinRunes(1) & strings.MaxRunes(100000)]
}

#DocumentRequires: {
	// The name of the required SSM document. The name can be an Amazon Resource Name (ARN).
	Name?: string & =~"^[a-zA-Z0-9_\\-.:/]{3,200}$" & strings.MaxRunes(200)
	// The document version required by the current document.
	Version?: string & =~"([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)" & strings.MaxRunes(8)
}

#Tag: {
	// The name of the tag.
	Key?: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of the tag.
	Value?: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
