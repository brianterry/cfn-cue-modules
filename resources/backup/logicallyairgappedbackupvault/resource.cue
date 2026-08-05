package logicallyairgappedbackupvault

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Backup::LogicallyAirGappedBackupVault
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::LogicallyAirGappedBackupVault"
	Properties: #Properties
}
