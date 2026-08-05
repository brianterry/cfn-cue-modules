package deployment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppConfig::Deployment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppConfig::Deployment"
	Properties: #Properties
}
