package encoderconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::EncoderConfiguration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::EncoderConfiguration"
	Properties: #Properties
}
