package domainnameaccessassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApiGateway::DomainNameAccessAssociation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::DomainNameAccessAssociation"
	Properties: #Properties
}
