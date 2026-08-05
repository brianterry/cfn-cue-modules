package dbclusterparametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DocDB::DBClusterParameterGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DocDB::DBClusterParameterGroup"
	Properties: #Properties
}
