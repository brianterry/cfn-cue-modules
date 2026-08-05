package mltransform

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::MLTransform
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::MLTransform"
	Properties: #Properties
}
