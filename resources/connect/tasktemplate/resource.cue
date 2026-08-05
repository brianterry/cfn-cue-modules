package tasktemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::TaskTemplate.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::TaskTemplate"
	Properties: #Properties
}
