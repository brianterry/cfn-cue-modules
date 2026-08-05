package rule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Events::Rule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Events::Rule"
	Properties: #Properties
}
