package samlprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IAM::SAMLProvider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::SAMLProvider"
	Properties: #Properties
}
