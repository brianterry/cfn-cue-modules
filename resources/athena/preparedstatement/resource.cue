package preparedstatement

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Athena::PreparedStatement
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Athena::PreparedStatement"
	Properties: #Properties
}
