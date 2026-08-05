package pulltimeupdateexclusion

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ARN of the IAM principal to remove from the pull time update exclusion list.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECR::PullTimeUpdateExclusion"
	Properties: #Properties
}
