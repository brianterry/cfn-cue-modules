package monitor

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::Monitor
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::Monitor"
	Properties: #Properties
}
