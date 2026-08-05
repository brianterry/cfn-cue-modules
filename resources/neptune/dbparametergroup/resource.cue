package dbparametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::Neptune::DBParameterGroup creates a new DB parameter group. This type can be declared in a template and referenced in the DBParameterGroupName parameter of AWS::Neptune::DBInstance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Neptune::DBParameterGroup"
	Properties: #Properties
}
