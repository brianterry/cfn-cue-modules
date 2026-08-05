package dbsecuritygroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RDS::DBSecurityGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBSecurityGroup"
	Properties: #Properties
}
