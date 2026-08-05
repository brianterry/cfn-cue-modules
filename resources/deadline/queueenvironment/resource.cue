package queueenvironment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::QueueEnvironment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::QueueEnvironment"
	Properties: #Properties
}
