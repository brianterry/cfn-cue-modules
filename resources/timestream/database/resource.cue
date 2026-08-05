package database

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Timestream::Database resource creates a Timestream database.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Timestream::Database"
	Properties: #Properties
}
