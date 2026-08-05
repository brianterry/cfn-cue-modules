package appinstancebot

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Chime::AppInstanceBot
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Chime::AppInstanceBot"
	Properties: #Properties
}
