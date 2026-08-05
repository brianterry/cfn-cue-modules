package approvalteam

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MPA::ApprovalTeam.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MPA::ApprovalTeam"
	Properties: #Properties
}
