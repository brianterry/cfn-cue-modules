package capacityreservation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::CapacityReservation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::CapacityReservation"
	Properties: #Properties
}
