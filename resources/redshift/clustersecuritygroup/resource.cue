package clustersecuritygroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Redshift::ClusterSecurityGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::ClusterSecurityGroup"
	Properties: #Properties
}
