package basepathmapping

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::BasePathMapping`` resource creates a base path that clients who call your API must use in the invocation URL. Supported only for public custom domain names.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::BasePathMapping"
	Properties: #Properties
}
