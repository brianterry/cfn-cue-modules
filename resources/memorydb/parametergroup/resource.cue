package parametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::MemoryDB::ParameterGroup resource creates an Amazon MemoryDB ParameterGroup.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MemoryDB::ParameterGroup"
	Properties: #Properties
}
