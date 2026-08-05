package instance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Instance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Instance"
	Properties: #Properties
}
