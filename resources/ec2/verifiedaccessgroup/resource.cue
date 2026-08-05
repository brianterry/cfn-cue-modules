package verifiedaccessgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::VerifiedAccessGroup resource creates an AWS EC2 Verified Access Group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VerifiedAccessGroup"
	Properties: #Properties
}
