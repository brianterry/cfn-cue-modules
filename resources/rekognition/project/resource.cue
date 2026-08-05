package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Rekognition::Project type creates an Amazon Rekognition CustomLabels Project. A project is a grouping of the resources needed to create and manage Dataset and ProjectVersions.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Rekognition::Project"
	Properties: #Properties
}
