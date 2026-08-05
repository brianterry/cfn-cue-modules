package applicationreferencedatasource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource"
	Properties: #Properties
}
