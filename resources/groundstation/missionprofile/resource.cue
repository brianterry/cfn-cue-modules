package missionprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Ground Station Mission Profile resource type for CloudFormation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GroundStation::MissionProfile"
	Properties: #Properties
}
