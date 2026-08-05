package backupplan

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Backup::BackupPlan
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::BackupPlan"
	Properties: #Properties
}
