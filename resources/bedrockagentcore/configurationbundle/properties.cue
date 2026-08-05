package configurationbundle

import "strings"

#Properties: {
	// The branch name for version tracking.
	BranchName?: string & =~"^[a-zA-Z][a-zA-Z0-9_/-]{0,127}$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The name for the configuration bundle. Names must be unique within your account.
	BundleName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,99}$"
	// A commit message describing the version of the configuration bundle.
	CommitMessage?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// A map of component identifiers to their configurations.
	Components: {...}
	CreatedBy?: #VersionCreatedBySource
	// The description for the configuration bundle.
	Description?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	// The ARN of the KMS key used to encrypt component configurations.
	KmsKeyArn?: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Tags to assign to the configuration bundle.
	Tags?: [...#Tag]
}

#ComponentConfiguration: {
	// The configuration values as a flexible JSON document.
	Configuration: {...}
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VersionCreatedBySource: {
	// The Amazon Resource Name (ARN) of the source, if applicable.
	Arn?: string
	// The name of the source (for example, user, optimization-job, or system).
	Name: string
}

#VersionLineageMetadata: {
	// The branch name for this version.
	BranchName?: string & =~"^[a-zA-Z][a-zA-Z0-9_/-]{0,127}$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A commit message describing the changes in this version.
	CommitMessage?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	CreatedBy?: #VersionCreatedBySource
	// A list of parent version identifiers.
	ParentVersionIds?: [...string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"]
}
