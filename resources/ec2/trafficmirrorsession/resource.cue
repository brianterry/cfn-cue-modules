package trafficmirrorsession

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EC2::TrafficMirrorSession
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TrafficMirrorSession"
	Properties: #Properties
}
