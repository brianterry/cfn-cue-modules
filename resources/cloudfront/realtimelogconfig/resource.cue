package realtimelogconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// A real-time log configuration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::RealtimeLogConfig"
	Properties: #Properties
}
