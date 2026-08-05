package tieringconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Backup::TieringConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Backup::TieringConfiguration"
	Properties: #Properties
}
