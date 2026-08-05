package streamkey

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::StreamKey
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::StreamKey"
	Properties: #Properties
}
