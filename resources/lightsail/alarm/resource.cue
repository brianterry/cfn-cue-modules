package alarm

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Alarm
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Alarm"
	Properties: #Properties
}
