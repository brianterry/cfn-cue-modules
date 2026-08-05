package database

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Database
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Database"
	Properties: #Properties
}
