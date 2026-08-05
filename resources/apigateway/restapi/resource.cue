package restapi

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::RestApi`` resource creates a REST API. For more information, see [restapi:create](https://docs.aws.amazon.com/apigateway/latest/api/API_CreateRestApi.html) in the *Amazon API Gateway REST API Reference*.
  On January 1, 2016, the Swagger Specification was donated to the [OpenAPI initiative](https://docs.aws.amazon.com/https://www.openapis.org/), becoming the foundation of the OpenAPI Specification.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::RestApi"
	Properties: #Properties
}
