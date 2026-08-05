package connectordefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::ConnectorDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::ConnectorDefinition"
	Properties: #Properties
}
