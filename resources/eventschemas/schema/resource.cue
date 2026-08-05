package schema

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EventSchemas::Schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EventSchemas::Schema"
	Properties: #Properties
}
