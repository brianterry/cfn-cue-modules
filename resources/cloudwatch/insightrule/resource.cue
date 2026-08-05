package insightrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudWatch::InsightRule. Creates a Contributor Insights rule that analyzes log data to identify top contributors and usage patterns.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::InsightRule"
	Properties: #Properties
}
