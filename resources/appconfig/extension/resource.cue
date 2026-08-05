package extension

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppConfig::Extension
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppConfig::Extension"
	Properties: #Properties
}
