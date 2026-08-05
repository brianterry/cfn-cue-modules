package imagebuilder

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::ImageBuilder
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::ImageBuilder"
	Properties: #Properties
}
