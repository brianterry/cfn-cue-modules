package schedulingpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Batch::SchedulingPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Batch::SchedulingPolicy"
	Properties: #Properties
}
