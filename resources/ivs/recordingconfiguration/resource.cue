package recordingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::RecordingConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::RecordingConfiguration"
	Properties: #Properties
}
