package apikey

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::ApiKey`` resource creates a unique key that you can distribute to clients who are executing API Gateway ``Method`` resources that require an API key. To specify which API key clients must use, map the API key with the ``RestApi`` and ``Stage`` resources that include the methods that require a key.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::ApiKey"
	Properties: #Properties
}
