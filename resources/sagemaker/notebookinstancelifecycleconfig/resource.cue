package notebookinstancelifecycleconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::NotebookInstanceLifecycleConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::NotebookInstanceLifecycleConfig"
	Properties: #Properties
}
