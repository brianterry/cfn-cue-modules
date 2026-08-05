package volume

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::FSx::Volume
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FSx::Volume"
	Properties: #Properties
}
