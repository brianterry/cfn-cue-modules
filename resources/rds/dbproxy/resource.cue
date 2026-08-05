package dbproxy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::RDS::DBProxy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBProxy"
	Properties: #Properties
}
