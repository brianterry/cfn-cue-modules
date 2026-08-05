package loggingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// A WAFv2 Logging Configuration Resource Provider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFv2::LoggingConfiguration"
	Properties: #Properties
}
