package routingrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a routing rule. When the incoming request to a domain name matches the conditions for a rule, API Gateway invokes a stage of a target API. Supported only for REST APIs.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::RoutingRule"
	Properties: #Properties
}
