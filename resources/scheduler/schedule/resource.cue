package schedule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Scheduler::Schedule Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Scheduler::Schedule"
	Properties: #Properties
}
