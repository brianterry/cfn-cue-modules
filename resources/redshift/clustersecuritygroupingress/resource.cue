package clustersecuritygroupingress

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Redshift::ClusterSecurityGroupIngress
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::ClusterSecurityGroupIngress"
	Properties: #Properties
}
