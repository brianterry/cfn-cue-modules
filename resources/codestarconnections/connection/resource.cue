package connection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for AWS::CodeStarConnections::Connection resource which can be used to connect external source providers with AWS CodePipeline
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeStarConnections::Connection"
	Properties: #Properties
}
