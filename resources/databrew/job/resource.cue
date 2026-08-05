package job

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataBrew::Job.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataBrew::Job"
	Properties: #Properties
}
