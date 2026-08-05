package feature

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Evidently::Feature.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Evidently::Feature"
	Properties: #Properties
}
