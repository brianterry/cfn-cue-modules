package alias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lambda::Alias
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::Alias"
	Properties: #Properties
}
