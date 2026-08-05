package organizationadmin

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Detective::OrganizationAdmin
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Detective::OrganizationAdmin"
	Properties: #Properties
}
