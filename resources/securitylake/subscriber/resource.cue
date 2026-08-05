package subscriber

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecurityLake::Subscriber
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityLake::Subscriber"
	Properties: #Properties
}
