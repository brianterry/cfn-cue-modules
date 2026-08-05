package pipeline

import "github.com/brianterry/cfn-cue-modules/cfn"

// An OpenSearch Ingestion Service Data Prepper pipeline running Data Prepper.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OSIS::Pipeline"
	Properties: #Properties
}
