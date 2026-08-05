package apigatewaymanagedoverrides

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApiGatewayV2::ApiGatewayManagedOverrides
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::ApiGatewayManagedOverrides"
	Properties: #Properties
}
