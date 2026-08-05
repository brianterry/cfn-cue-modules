package mounttarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Files::MountTarget
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Files::MountTarget"
	Properties: #Properties
}
