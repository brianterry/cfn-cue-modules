package eventtrigger

import "github.com/brianterry/cfn-cue-modules/cfn"

// An event trigger resource of Amazon Connect Customer Profiles
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::EventTrigger"
	Properties: #Properties
}
