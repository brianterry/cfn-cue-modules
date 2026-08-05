package config

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Ground Station config resource type for CloudFormation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GroundStation::Config"
	Properties: #Properties
}
