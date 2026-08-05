package certificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Certificate.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Certificate"
	Properties: #Properties
}
