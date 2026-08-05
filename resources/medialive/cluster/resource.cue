package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::Cluster Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::Cluster"
	Properties: #Properties
}
