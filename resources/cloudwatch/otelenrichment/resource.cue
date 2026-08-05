package otelenrichment

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::CloudWatch::OTelEnrichment enables OTel metric enrichment in CloudWatch, allowing CloudWatch vended metrics to be available for PromQL querying enriched with AWS resource tags and metadata.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::OTelEnrichment"
	Properties: #Properties
}
