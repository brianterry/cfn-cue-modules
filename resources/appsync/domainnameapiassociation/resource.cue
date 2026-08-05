package domainnameapiassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppSync::DomainNameApiAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::DomainNameApiAssociation"
	Properties: #Properties
}
