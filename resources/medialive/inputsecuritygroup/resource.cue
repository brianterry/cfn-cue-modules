package inputsecuritygroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaLive::InputSecurityGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::InputSecurityGroup"
	Properties: #Properties
}
