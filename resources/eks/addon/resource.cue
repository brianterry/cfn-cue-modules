package addon

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::EKS::Addon
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EKS::Addon"
	Properties: #Properties
}
