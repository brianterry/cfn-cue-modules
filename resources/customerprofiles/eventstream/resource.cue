package eventstream

import "github.com/brianterry/cfn-cue-modules/cfn"

// An Event Stream resource of Amazon Connect Customer Profiles
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::EventStream"
	Properties: #Properties
}
