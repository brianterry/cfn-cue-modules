package accesskey

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IAM::AccessKey
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::AccessKey"
	Properties: #Properties
}
