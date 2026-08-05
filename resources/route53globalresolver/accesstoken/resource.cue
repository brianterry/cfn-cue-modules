package accesstoken

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53GlobalResolver::AccessToken
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53GlobalResolver::AccessToken"
	Properties: #Properties
}
