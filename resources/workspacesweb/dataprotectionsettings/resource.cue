package dataprotectionsettings

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::WorkSpacesWeb::DataProtectionSettings Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpacesWeb::DataProtectionSettings"
	Properties: #Properties
}
