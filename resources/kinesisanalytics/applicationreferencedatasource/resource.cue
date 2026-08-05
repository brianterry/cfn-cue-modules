package applicationreferencedatasource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::KinesisAnalytics::ApplicationReferenceDataSource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisAnalytics::ApplicationReferenceDataSource"
	Properties: #Properties
}
