package capacityreservationfleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::CapacityReservationFleet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::CapacityReservationFleet"
	Properties: #Properties
}
