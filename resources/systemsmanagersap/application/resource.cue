package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::SystemsManagerSAP::Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SystemsManagerSAP::Application"
	Properties: #Properties
}
