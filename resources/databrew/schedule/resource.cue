package schedule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataBrew::Schedule.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataBrew::Schedule"
	Properties: #Properties
}
