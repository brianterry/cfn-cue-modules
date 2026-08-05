package type

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Cassandra::Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cassandra::Type"
	Properties: #Properties
}
