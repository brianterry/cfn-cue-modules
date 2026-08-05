package workflow

import "strings"

#Properties: {
	// The change description of the workflow.
	ChangeDescription?: string
	// The data of the workflow.
	Data?: string & strings.MinRunes(1) & strings.MaxRunes(16000)
	// The description of the workflow.
	Description?: string
	// The KMS key identifier used to encrypt the workflow.
	KmsKeyId?: string
	// The name of the workflow.
	Name: string
	// The tags associated with the workflow.
	Tags?: {...}
	// The type of the workflow denotes whether the workflow is used to build, test, or distribute.
	Type: "BUILD" | "TEST" | "DISTRIBUTION"
	// The uri of the workflow.
	Uri?: string
	// The version of the workflow.
	Version: string
}

#LatestVersion: {
	// The latest version ARN of the created workflow.
	Arn?: string
	// The latest version ARN of the created workflow, with the same major version.
	Major?: string
	// The latest version ARN of the created workflow, with the same minor version.
	Minor?: string
	// The latest version ARN of the created workflow, with the same patch version.
	Patch?: string
}
