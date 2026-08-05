package dbsecuritygroupingress

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RDS::DBSecurityGroupIngress
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBSecurityGroupIngress"
	Properties: #Properties
}
