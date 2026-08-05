package template

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::Template
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::Template"
	Properties: #Properties
}
