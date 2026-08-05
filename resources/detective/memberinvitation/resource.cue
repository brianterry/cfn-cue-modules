package memberinvitation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Detective::MemberInvitation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Detective::MemberInvitation"
	Properties: #Properties
}
