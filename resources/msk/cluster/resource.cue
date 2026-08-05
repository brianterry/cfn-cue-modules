package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::Cluster"
	Properties: #Properties
}
