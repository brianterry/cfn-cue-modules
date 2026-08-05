package eventstream

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::EventStream
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::EventStream"
	Properties: #Properties
}
