package routeresponse

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGatewayV2::RouteResponse`` resource creates a route response for a WebSocket API. For more information, see [Set up Route Responses for a WebSocket API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-route-response.html) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::RouteResponse"
	Properties: #Properties
}
