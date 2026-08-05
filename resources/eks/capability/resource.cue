package capability

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for EKS Capability.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EKS::Capability"
	Properties: #Properties
}
