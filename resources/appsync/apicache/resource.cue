package apicache

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppSync::ApiCache
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::ApiCache"
	Properties: #Properties
}
