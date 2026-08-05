package publicrepository

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ECR::PublicRepository`` resource specifies an Amazon Elastic Container Registry Public (Amazon ECR Public) repository, where users can push and pull Docker images, Open Container Initiative (OCI) images, and OCI compatible artifacts. For more information, see [Amazon ECR public repositories](https://docs.aws.amazon.com/AmazonECR/latest/public/public-repositories.html) in the *Amazon ECR Public User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECR::PublicRepository"
	Properties: #Properties
}
