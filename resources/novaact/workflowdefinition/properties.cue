package workflowdefinition

import "strings"

#Properties: {
	// An optional description of the workflow definition's purpose and functionality.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(4000)
	ExportConfig?: #WorkflowExportConfig
	// The name of the workflow definition. Must be unique within your account and region.
	Name: string & =~"^[a-zA-Z0-9_-]{1,40}$" & strings.MinRunes(1) & strings.MaxRunes(40)
}

#WorkflowExportConfig: {
	// The name of the Amazon S3 bucket for exporting workflow data.
	S3BucketName: string & =~"^[a-z0-9][a-z0-9.-]*[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// An optional prefix for Amazon S3 object keys to organize exported data.
	S3KeyPrefix?: string & =~"^[a-zA-Z0-9!\\-_.*'()]+(?:/[a-zA-Z0-9!\\-_.*'()]+)*$" & strings.MinRunes(1) & strings.MaxRunes(100)
}
