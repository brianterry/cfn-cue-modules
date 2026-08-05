package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::Application"
	Properties: #Properties
}
