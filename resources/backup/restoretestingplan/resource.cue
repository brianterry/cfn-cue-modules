package restoretestingplan

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Backup::RestoreTestingPlan Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::RestoreTestingPlan"
	Properties: #Properties
}
