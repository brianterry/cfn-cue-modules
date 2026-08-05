package connection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for AWS::CodeConnections::Connection resource which can be used to connect external source providers with other AWS services (i.e. AWS CodePipeline)
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeConnections::Connection"
	Properties: #Properties
}
