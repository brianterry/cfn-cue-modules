package appinstanceuser

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Chime::AppInstanceUser
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Chime::AppInstanceUser"
	Properties: #Properties
}
