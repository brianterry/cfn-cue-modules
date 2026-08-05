package dbproxytargetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::RDS::DBProxyTargetGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBProxyTargetGroup"
	Properties: #Properties
}
