package loggingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::NetworkFirewall::LoggingConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkFirewall::LoggingConfiguration"
	Properties: #Properties
}
