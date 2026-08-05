package placementgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::PlacementGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::PlacementGroup"
	Properties: #Properties
}
