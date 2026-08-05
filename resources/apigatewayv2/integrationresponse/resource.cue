package integrationresponse

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGatewayV2::IntegrationResponse`` resource updates an integration response for an WebSocket API. For more information, see [Set up WebSocket API Integration Responses in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-integration-responses.html) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::IntegrationResponse"
	Properties: #Properties
}
