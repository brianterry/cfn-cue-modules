package app

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::App
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::App"
	Properties: #Properties
}
