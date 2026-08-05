package clustersubnetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Redshift::ClusterSubnetGroup. Specifies an Amazon Redshift subnet group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::ClusterSubnetGroup"
	Properties: #Properties
}
