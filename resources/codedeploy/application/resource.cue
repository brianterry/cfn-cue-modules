package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::CodeDeploy::Application resource creates an AWS CodeDeploy application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeDeploy::Application"
	Properties: #Properties
}
