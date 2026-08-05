package input

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaLive::Input
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::Input"
	Properties: #Properties
}
