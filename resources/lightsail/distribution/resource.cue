package distribution

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Distribution
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Distribution"
	Properties: #Properties
}
