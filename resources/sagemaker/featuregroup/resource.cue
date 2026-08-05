package featuregroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::FeatureGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::FeatureGroup"
	Properties: #Properties
}
