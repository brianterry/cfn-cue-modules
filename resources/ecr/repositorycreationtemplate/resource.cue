package repositorycreationtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// The details of the repository creation template associated with the request.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECR::RepositoryCreationTemplate"
	Properties: #Properties
}
