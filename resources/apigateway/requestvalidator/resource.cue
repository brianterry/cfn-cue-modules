package requestvalidator

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::RequestValidator`` resource sets up basic validation rules for incoming requests to your API. For more information, see [Enable Basic Request Validation for an API in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::RequestValidator"
	Properties: #Properties
}
