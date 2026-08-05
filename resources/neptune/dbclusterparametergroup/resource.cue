package dbclusterparametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Neptune::DBClusterParameterGroup resource creates a new Amazon Neptune DB cluster parameter group
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Neptune::DBClusterParameterGroup"
	Properties: #Properties
}
