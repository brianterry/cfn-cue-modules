package identitycenterconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::IdentityCenterConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::IdentityCenterConfiguration"
	Properties: #Properties
}
