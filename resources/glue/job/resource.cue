package job

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Job
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Job"
	Properties: #Properties
}
