package browsersettings

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::WorkSpacesWeb::BrowserSettings Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpacesWeb::BrowserSettings"
	Properties: #Properties
}
