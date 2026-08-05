package datalakesettings

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::LakeFormation::DataLakeSettings
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LakeFormation::DataLakeSettings"
	Properties: #Properties
}
