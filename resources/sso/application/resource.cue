package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Identity Center (SSO) Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSO::Application"
	Properties: #Properties
}
