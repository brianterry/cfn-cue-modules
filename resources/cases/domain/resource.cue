package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// A domain, which is a container for all case data, such as cases, fields, templates and layouts. Each Amazon Connect instance can be associated with only one Cases domain.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cases::Domain"
	Properties: #Properties
}
