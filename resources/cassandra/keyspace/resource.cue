package keyspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Cassandra::Keyspace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cassandra::Keyspace"
	Properties: #Properties
}
