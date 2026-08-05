package crossaccountattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GlobalAccelerator::CrossAccountAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GlobalAccelerator::CrossAccountAttachment"
	Properties: #Properties
}
