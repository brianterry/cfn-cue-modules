package trafficmirrorfilterrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for for AWS::EC2::TrafficMirrorFilterRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TrafficMirrorFilterRule"
	Properties: #Properties
}
