package eventsourcemapping

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::Lambda::EventSourceMapping`` resource creates a mapping between an event source and an LAMlong function. LAM reads items from the event source and triggers the function.
// For details about each event source type, see the following topics. In particular, each of the topics describes the required and optional parameters for the specific event source.
// +   [Configuring a Dynamo DB stream as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)
// +   [Configuring a Kinesis stream as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)
// +   [Configuring an SQS queue as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)
// +   [Configuring an MQ broker as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)
// +   [Configuring MSK as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)
// +   [Configuring Self-Managed Apache Kafka as an event source](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)
// +   [Configuring Amazon DocumentDB as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::EventSourceMapping"
	Properties: #Properties
}
