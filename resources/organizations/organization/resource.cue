package organization

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Organizations::Organization
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Organizations::Organization"
	Properties: #Properties
}
