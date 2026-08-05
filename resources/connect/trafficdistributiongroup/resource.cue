package trafficdistributiongroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::TrafficDistributionGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::TrafficDistributionGroup"
	Properties: #Properties
}
