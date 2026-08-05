package securityconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::SecurityConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::SecurityConfiguration"
	Properties: #Properties
}
