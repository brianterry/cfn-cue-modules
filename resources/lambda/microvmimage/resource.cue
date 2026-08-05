package microvmimage

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lambda::MicrovmImage
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::MicrovmImage"
	Properties: #Properties
}
