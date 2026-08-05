package clusterparametergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Redshift::ClusterParameterGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::ClusterParameterGroup"
	Properties: #Properties
}
