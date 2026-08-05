package tenant

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::Tenant
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::Tenant"
	Properties: #Properties
}
