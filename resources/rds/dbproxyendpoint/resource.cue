package dbproxyendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::RDS::DBProxyEndpoint.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBProxyEndpoint"
	Properties: #Properties
}
