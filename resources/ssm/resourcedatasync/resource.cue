package resourcedatasync

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSM::ResourceDataSync
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::ResourceDataSync"
	Properties: #Properties
}
