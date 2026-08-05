package imagerecipe

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ImageBuilder::ImageRecipe
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::ImageRecipe"
	Properties: #Properties
}
