package connector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::AppFlow::Connector
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppFlow::Connector"
	Properties: #Properties
}
