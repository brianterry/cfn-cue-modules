package eventintegration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppIntegrations::EventIntegration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppIntegrations::EventIntegration"
	Properties: #Properties
}
