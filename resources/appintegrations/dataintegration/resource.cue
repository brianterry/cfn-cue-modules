package dataintegration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppIntegrations::DataIntegration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppIntegrations::DataIntegration"
	Properties: #Properties
}
