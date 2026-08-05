package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Domain
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Domain"
	Properties: #Properties
}
