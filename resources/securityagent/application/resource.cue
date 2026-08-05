package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecurityAgent::Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityAgent::Application"
	Properties: #Properties
}
