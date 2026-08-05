package awslogsource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecurityLake::AwsLogSource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityLake::AwsLogSource"
	Properties: #Properties
}
