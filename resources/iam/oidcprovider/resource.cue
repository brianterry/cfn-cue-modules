package oidcprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IAM::OIDCProvider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::OIDCProvider"
	Properties: #Properties
}
