package apikey

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppSync::ApiKey
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::ApiKey"
	Properties: #Properties
}
