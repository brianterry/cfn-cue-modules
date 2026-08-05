package documentationpart

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::DocumentationPart`` resource creates a documentation part for an API. For more information, see [Representation of API Documentation in API Gateway](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api-content-representation.html) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::DocumentationPart"
	Properties: #Properties
}
