package trafficmirrortarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// The description of the Traffic Mirror target.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TrafficMirrorTarget"
	Properties: #Properties
}
