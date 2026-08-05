package fargateprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::EKS::FargateProfile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EKS::FargateProfile"
	Properties: #Properties
}
