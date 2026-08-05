package staticip

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::StaticIp
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::StaticIp"
	Properties: #Properties
}
