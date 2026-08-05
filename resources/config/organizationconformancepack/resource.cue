package organizationconformancepack

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::OrganizationConformancePack.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::OrganizationConformancePack"
	Properties: #Properties
}
