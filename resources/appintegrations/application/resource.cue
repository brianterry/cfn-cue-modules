package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS:AppIntegrations::Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppIntegrations::Application"
	Properties: #Properties
}
