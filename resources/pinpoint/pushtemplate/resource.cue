package pushtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::PushTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::PushTemplate"
	Properties: #Properties
}
