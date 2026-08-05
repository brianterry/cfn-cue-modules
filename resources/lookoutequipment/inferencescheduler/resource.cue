package inferencescheduler

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for LookoutEquipment InferenceScheduler.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LookoutEquipment::InferenceScheduler"
	Properties: #Properties
}
