package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppConfig::Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppConfig::Application"
	Properties: #Properties
}
