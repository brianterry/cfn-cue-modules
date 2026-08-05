package loggingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::IVSChat::LoggingConfiguration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVSChat::LoggingConfiguration"
	Properties: #Properties
}
