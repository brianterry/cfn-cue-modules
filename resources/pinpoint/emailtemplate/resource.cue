package emailtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::EmailTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::EmailTemplate"
	Properties: #Properties
}
