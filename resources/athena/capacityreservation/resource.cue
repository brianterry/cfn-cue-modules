package capacityreservation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Athena::CapacityReservation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Athena::CapacityReservation"
	Properties: #Properties
}
