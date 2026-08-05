package deployment

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::Deployment`` resource deploys an API Gateway ``RestApi`` resource to a stage so that clients can call the API over the internet. The stage acts as an environment.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::Deployment"
	Properties: #Properties
}
