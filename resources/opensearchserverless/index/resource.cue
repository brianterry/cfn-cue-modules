package index

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::OpenSearchServerless::Index
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::Index"
	Properties: #Properties
}
