package registrypolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ECR::RegistryPolicy`` resource creates or updates the permissions policy for a private registry.
// A private registry policy is used to specify permissions for another AWS-account and is used when configuring cross-account replication. For more information, see [Registry permissions](https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html) in the *Amazon Elastic Container Registry User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECR::RegistryPolicy"
	Properties: #Properties
}
