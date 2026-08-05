package backupselection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Backup::BackupSelection
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::BackupSelection"
	Properties: #Properties
}
