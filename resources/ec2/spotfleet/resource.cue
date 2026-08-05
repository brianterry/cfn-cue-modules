package spotfleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::SpotFleet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SpotFleet"
	Properties: #Properties
}
