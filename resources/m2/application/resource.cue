package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents an application that runs on an AWS Mainframe Modernization Environment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::M2::Application"
	Properties: #Properties
}
