package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApplicationInsights::Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApplicationInsights::Application"
	Properties: #Properties
}
