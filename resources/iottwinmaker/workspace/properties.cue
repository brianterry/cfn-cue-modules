package workspace

import "strings"

#Properties: {
	// The description of the workspace.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// The ARN of the execution role associated with the workspace.
	Role: string & =~"arn:((aws)|(aws-cn)|(aws-us-gov)):iam::[0-9]{12}:role/.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The ARN of the S3 bucket where resources associated with the workspace are stored.
	S3Location: string
	// A map of key-value pairs to associate with a resource.
	Tags?: {...}
	// The ID of the workspace.
	WorkspaceId: string & =~"[a-zA-Z_0-9][a-zA-Z_\\-0-9]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}
