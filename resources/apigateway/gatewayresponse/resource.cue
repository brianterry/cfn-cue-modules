package gatewayresponse

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::GatewayResponse`` resource creates a gateway response for your API. When you delete a stack containing this resource, your custom gateway responses are reset. For more information, see [API Gateway Responses](https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html#api-gateway-gatewayResponse-definition) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::GatewayResponse"
	Properties: #Properties
}
