package destination

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Logs::Destination resource specifies a CloudWatch Logs destination. A destination encapsulates a physical resource (such as an Amazon Kinesis data stream) and enables you to subscribe that resource to a stream of log events.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::Destination"
	Properties: #Properties
}
