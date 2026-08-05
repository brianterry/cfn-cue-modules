package inapptemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::InAppTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::InAppTemplate"
	Properties: #Properties
}
