package integration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The resource schema for creating an Amazon Connect Customer Profiles Integration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::Integration"
	Properties: #Properties
}
