package organizationalunitassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Notifications::OrganizationalUnitAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Notifications::OrganizationalUnitAssociation"
	Properties: #Properties
}
