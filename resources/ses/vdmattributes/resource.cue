package vdmattributes

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::VdmAttributes
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::VdmAttributes"
	Properties: #Properties
}
