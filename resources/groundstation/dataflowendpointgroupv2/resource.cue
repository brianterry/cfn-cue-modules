package dataflowendpointgroupv2

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS Ground Station DataflowEndpointGroupV2
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GroundStation::DataflowEndpointGroupV2"
	Properties: #Properties
}
