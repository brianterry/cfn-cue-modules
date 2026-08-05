package notebookinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::NotebookInstance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::NotebookInstance"
	Properties: #Properties
}
