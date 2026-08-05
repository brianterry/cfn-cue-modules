package parametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DAX::ParameterGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DAX::ParameterGroup"
	Properties: #Properties
}
