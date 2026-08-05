package schedulegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Scheduler::ScheduleGroup Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Scheduler::ScheduleGroup"
	Properties: #Properties
}
