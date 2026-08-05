package mlflowtrackingserver

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::MlflowTrackingServer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::MlflowTrackingServer"
	Properties: #Properties
}
