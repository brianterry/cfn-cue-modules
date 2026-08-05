package authorizer

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGatewayV2::Authorizer`` resource creates an authorizer for a WebSocket API or an HTTP API. To learn more, see [Controlling and managing access to a WebSocket API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-control-access.html) and [Controlling and managing access to an HTTP API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-access-control.html) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::Authorizer"
	Properties: #Properties
}
