package accesspoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS::S3Outposts::AccessPoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Outposts::AccessPoint"
	Properties: #Properties
}
