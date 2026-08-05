package s3accesspointattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::FSx::S3AccessPointAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FSx::S3AccessPointAttachment"
	Properties: #Properties
}
