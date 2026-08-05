package backupvault

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Backup::BackupVault
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::BackupVault"
	Properties: #Properties
}
