package objecttype

import "github.com/brianterry/cfn-cue-modules/cfn"

// An ObjectType resource of Amazon Connect Customer Profiles
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::ObjectType"
	Properties: #Properties
}
