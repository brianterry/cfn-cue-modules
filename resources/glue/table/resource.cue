package table

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Table
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Table"
	Properties: #Properties
}
