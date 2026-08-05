package proactiveengagement

import "github.com/brianterry/cfn-cue-modules/cfn"

// Authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Shield::ProactiveEngagement"
	Properties: #Properties
}
