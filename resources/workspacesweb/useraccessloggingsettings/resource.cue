package useraccessloggingsettings

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::WorkSpacesWeb::UserAccessLoggingSettings Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpacesWeb::UserAccessLoggingSettings"
	Properties: #Properties
}
