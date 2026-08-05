package api

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGatewayV2::Api`` resource creates an API. WebSocket APIs and HTTP APIs are supported. For more information about WebSocket APIs, see [About WebSocket APIs in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-overview.html) in the *API Gateway Developer Guide*. For more information about HTTP APIs, see [HTTP APIs](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api.html) in the *API Gateway Developer Guide.*
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::Api"
	Properties: #Properties
}
