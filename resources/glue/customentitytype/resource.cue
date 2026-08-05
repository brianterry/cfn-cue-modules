package customentitytype

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::CustomEntityType
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::CustomEntityType"
	Properties: #Properties
}
