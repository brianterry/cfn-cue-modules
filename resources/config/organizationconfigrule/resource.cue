package organizationconfigrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::OrganizationConfigRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::OrganizationConfigRule"
	Properties: #Properties
}
