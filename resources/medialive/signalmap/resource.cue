package signalmap

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::SignalMap Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::SignalMap"
	Properties: #Properties
}
