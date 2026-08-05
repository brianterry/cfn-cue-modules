package applicationsettings

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::ApplicationSettings
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::ApplicationSettings"
	Properties: #Properties
}
