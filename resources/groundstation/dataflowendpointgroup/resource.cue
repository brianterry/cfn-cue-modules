package dataflowendpointgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Ground Station DataflowEndpointGroup schema for CloudFormation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GroundStation::DataflowEndpointGroup"
	Properties: #Properties
}
