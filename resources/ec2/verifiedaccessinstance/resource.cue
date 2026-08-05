package verifiedaccessinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::VerifiedAccessInstance resource creates an AWS EC2 Verified Access Instance.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VerifiedAccessInstance"
	Properties: #Properties
}
