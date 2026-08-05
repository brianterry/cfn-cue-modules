package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::LookoutVision::Project type creates an Amazon Lookout for Vision project. A project is a grouping of the resources needed to create and manage a Lookout for Vision model.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LookoutVision::Project"
	Properties: #Properties
}
