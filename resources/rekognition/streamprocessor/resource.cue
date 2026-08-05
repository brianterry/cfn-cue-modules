package streamprocessor

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Rekognition::StreamProcessor type is used to create an Amazon Rekognition StreamProcessor that you can use to analyze streaming videos.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Rekognition::StreamProcessor"
	Properties: #Properties
}
