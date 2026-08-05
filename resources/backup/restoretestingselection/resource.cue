package restoretestingselection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Backup::RestoreTestingSelection
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::RestoreTestingSelection"
	Properties: #Properties
}
