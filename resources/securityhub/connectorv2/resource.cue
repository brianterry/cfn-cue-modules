package connectorv2

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::SecurityHub::ConnectorV2
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::ConnectorV2"
	Properties: #Properties
}
