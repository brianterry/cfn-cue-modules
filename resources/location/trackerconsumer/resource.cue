package trackerconsumer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Location::TrackerConsumer Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Location::TrackerConsumer"
	Properties: #Properties
}
