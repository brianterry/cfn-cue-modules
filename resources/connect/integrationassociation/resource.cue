package integrationassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::IntegrationAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::IntegrationAssociation"
	Properties: #Properties
}
