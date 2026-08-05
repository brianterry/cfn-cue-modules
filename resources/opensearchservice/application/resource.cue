package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Amazon OpenSearchService application resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchService::Application"
	Properties: #Properties
}
