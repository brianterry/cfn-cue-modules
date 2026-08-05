package schema

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Personalize::Schema.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Personalize::Schema"
	Properties: #Properties
}
