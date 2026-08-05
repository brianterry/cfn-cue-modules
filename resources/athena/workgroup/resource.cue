package workgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Athena::WorkGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Athena::WorkGroup"
	Properties: #Properties
}
