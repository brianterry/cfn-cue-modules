package codesigningconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lambda::CodeSigningConfig.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::CodeSigningConfig"
	Properties: #Properties
}
