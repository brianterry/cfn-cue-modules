package model

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGatewayV2::Model`` resource updates data model for a WebSocket API. For more information, see [Model Selection Expressions](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-model-selection-expressions) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::Model"
	Properties: #Properties
}
