package appinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Chime::AppInstance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Chime::AppInstance"
	Properties: #Properties
}
