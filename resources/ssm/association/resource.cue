package association

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SSM::Association resource associates an SSM document in AWS Systems Manager with EC2 instances that contain a configuration agent to process the document.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::Association"
	Properties: #Properties
}
