package rule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Rbin::Rule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Rbin::Rule"
	Properties: #Properties
}
