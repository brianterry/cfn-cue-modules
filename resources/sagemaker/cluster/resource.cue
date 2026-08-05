package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Cluster"
	Properties: #Properties
}
