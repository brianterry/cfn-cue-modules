package clusterpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::ClusterPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::ClusterPolicy"
	Properties: #Properties
}
