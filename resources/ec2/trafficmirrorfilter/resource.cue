package trafficmirrorfilter

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EC2::TrafficMirrorFilter
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TrafficMirrorFilter"
	Properties: #Properties
}
