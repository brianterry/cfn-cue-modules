package querydefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// The resource schema for AWSLogs QueryDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::QueryDefinition"
	Properties: #Properties
}
