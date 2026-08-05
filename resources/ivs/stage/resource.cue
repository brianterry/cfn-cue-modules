package stage

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::Stage.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::Stage"
	Properties: #Properties
}
