package accesspoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Files::AccessPoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Files::AccessPoint"
	Properties: #Properties
}
