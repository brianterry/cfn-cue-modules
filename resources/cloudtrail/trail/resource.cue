package trail

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudTrail::Trail"
	Properties: #Properties
}
