package sink

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Oam::Sink
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Oam::Sink"
	Properties: #Properties
}
