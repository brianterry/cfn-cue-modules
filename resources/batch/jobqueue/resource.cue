package jobqueue

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Batch::JobQueue
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Batch::JobQueue"
	Properties: #Properties
}
