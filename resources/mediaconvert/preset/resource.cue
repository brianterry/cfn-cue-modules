package preset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaConvert::Preset
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConvert::Preset"
	Properties: #Properties
}
