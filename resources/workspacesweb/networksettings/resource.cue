package networksettings

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::WorkSpacesWeb::NetworkSettings Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpacesWeb::NetworkSettings"
	Properties: #Properties
}
