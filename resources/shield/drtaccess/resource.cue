package drtaccess

import "github.com/brianterry/cfn-cue-modules/cfn"

// Config the role and list of Amazon S3 log buckets used by the Shield Response Team (SRT) to access your AWS account while assisting with attack mitigation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Shield::DRTAccess"
	Properties: #Properties
}
