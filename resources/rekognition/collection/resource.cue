package collection

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Rekognition::Collection type creates an Amazon Rekognition Collection. A collection is a logical grouping of information about detected faces which can later be referenced for searches on the group
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Rekognition::Collection"
	Properties: #Properties
}
