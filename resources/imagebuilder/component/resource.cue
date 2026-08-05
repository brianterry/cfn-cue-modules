package component

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ImageBuilder::Component
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::Component"
	Properties: #Properties
}
