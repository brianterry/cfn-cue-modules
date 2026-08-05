package containerrecipe

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ImageBuilder::ContainerRecipe
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::ContainerRecipe"
	Properties: #Properties
}
