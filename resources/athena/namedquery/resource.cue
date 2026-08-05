package namedquery

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Athena::NamedQuery
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Athena::NamedQuery"
	Properties: #Properties
}
