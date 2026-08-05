package domainnamev2

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApiGateway::DomainNameV2.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::DomainNameV2"
	Properties: #Properties
}
