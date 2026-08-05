package image

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ImageBuilder::Image
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::Image"
	Properties: #Properties
}
