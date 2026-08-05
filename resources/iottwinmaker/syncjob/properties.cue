package syncjob

import "strings"

#Properties: {
	// The IAM Role that execute SyncJob.
	SyncRole: string & =~"arn:((aws)|(aws-cn)|(aws-us-gov)):iam::[0-9]{12}:role/.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The source of the SyncJob.
	SyncSource: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A key-value pair to associate with a resource.
	Tags?: {...}
	// The ID of the workspace.
	WorkspaceId: string & =~"[a-zA-Z_0-9][a-zA-Z_\\-0-9]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}
