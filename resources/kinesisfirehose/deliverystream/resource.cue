package deliverystream

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::KinesisFirehose::DeliveryStream
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisFirehose::DeliveryStream"
	Properties: #Properties
}
