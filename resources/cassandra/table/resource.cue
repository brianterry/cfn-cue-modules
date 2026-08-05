package table

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Cassandra::Table
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cassandra::Table"
	Properties: #Properties
}
