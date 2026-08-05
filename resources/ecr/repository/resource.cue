package repository

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ECR::Repository`` resource specifies an Amazon Elastic Container Registry (Amazon ECR) repository, where users can push and pull Docker images, Open Container Initiative (OCI) images, and OCI compatible artifacts. For more information, see [Amazon ECR private repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html) in the *Amazon ECR User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECR::Repository"
	Properties: #Properties
}
