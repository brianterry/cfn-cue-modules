package container

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Container
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Container"
	Properties: #Properties
}
