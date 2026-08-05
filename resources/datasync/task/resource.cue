package task

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataSync::Task.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::Task"
	Properties: #Properties
}
