package jobtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaConvert::JobTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConvert::JobTemplate"
	Properties: #Properties
}
