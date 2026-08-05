package oauthclientapplication

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QuickSight::OAuthClientApplication Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::OAuthClientApplication"
	Properties: #Properties
}
