package basepathmappingv2

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApiGateway::BasePathMappingV2
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::BasePathMappingV2"
	Properties: #Properties
}
