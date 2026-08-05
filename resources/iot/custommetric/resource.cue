package custommetric

import "github.com/brianterry/cfn-cue-modules/cfn"

// A custom metric published by your devices to Device Defender.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::CustomMetric"
	Properties: #Properties
}
