package connectordefinitionversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::ConnectorDefinitionVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::ConnectorDefinitionVersion"
	Properties: #Properties
}
