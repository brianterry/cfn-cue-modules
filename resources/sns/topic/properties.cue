package topic

#Properties: {
	// The ``ArchivePolicy`` determines the number of days SNS retains messages in FIFO topics. You can set a retention period ranging from 1 to 365 days. This property is only applicable to FIFO topics; attempting to use it with standard topics will result in a creation failure.
	ArchivePolicy?: {...}
	// ``ContentBasedDeduplication`` enables deduplication of messages based on their content for FIFO topics. By default, this property is set to false. If you create a FIFO topic with ``ContentBasedDeduplication`` set to false, you must provide a ``MessageDeduplicationId`` for each ``Publish`` action. When set to true, SNS automatically generates a ``MessageDeduplicationId`` using a SHA-256 hash of the message body (excluding message attributes). You can optionally override this generated value by specifying a ``MessageDeduplicationId`` in the ``Publish`` action. Note that this property only applies to FIFO topics; using it with standard topics will cause the creation to fail.
	ContentBasedDeduplication?: bool
	// The body of the policy document you want to use for this topic.
	// You can only add one policy per topic.
	// The policy must be in JSON string format.
	// Length Constraints: Maximum length of 30,720.
	DataProtectionPolicy?: {...}
	// The ``DeliveryStatusLogging`` configuration enables you to log the delivery status of messages sent from your Amazon SNS topic to subscribed endpoints with the following supported delivery protocols:
	// +  HTTP
	// +  Amazon Kinesis Data Firehose
	// +  AWS Lambda
	// +  Platform application endpoint
	// +  Amazon Simple Queue Service
	// Once configured, log entries are sent to Amazon CloudWatch Logs.
	DeliveryStatusLogging?: [...#LoggingConfig]
	// The display name to use for an SNS topic with SMS subscriptions. The display name must be maximum 100 characters long, including hyphens (-), underscores (_), spaces, and tabs.
	DisplayName?: string
	// Specifies the throughput quota and deduplication behavior to apply for the FIFO topic. Valid values are ``Topic`` or ``MessageGroup``.
	FifoThroughputScope?: string
	// Set to true to create a FIFO topic.
	FifoTopic?: bool
	// The ID of an AWS managed customer master key (CMK) for SNS or a custom CMK. For more information, see [Key terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms). For more examples, see ``KeyId`` in the *API Reference*.
	// This property applies only to [server-side-encryption](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html).
	KmsMasterKeyId?: string
	// The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS. By default, ``SignatureVersion`` is set to ``1``.
	SignatureVersion?: string
	// The SNS subscriptions (endpoints) for this topic.
	// If you specify the ``Subscription`` property in the ``AWS::SNS::Topic`` resource and it creates an associated subscription resource, the associated subscription is not deleted when the ``AWS::SNS::Topic`` resource is deleted.
	Subscription?: [...#Subscription]
	// The list of tags to add to a new topic.
	// To be able to tag a topic on creation, you must have the ``sns:CreateTopic`` and ``sns:TagResource`` permissions.
	Tags?: [...#Tag]
	// The name of the topic you want to create. Topic names must include only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. FIFO topic names must end with ``.fifo``.
	// If you don't specify a name, CFN generates a unique physical ID and uses that ID for the topic name. For more information, see [Name type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html).
	// If you specify a name, you can't perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
	TopicName?: string
	// Tracing mode of an SNS topic. By default ``TracingConfig`` is set to ``PassThrough``, and the topic passes through the tracing header it receives from an SNS publisher to its subscriptions. If set to ``Active``, SNS will vend X-Ray segment data to topic owner account if the sampled flag in the tracing header is true.
	TracingConfig?: string
}

#LoggingConfig: {
	// The IAM role ARN to be used when logging failed message deliveries in Amazon CloudWatch.
	FailureFeedbackRoleArn?: string
	// Indicates one of the supported protocols for the Amazon SNS topic.
	// At least one of the other three ``LoggingConfig`` properties is recommend along with ``Protocol``.
	Protocol: "http/s" | "sqs" | "lambda" | "firehose" | "application"
	// The IAM role ARN to be used when logging successful message deliveries in Amazon CloudWatch.
	SuccessFeedbackRoleArn?: string
	// The percentage of successful message deliveries to be logged in Amazon CloudWatch. Valid percentage values range from 0 to 100.
	SuccessFeedbackSampleRate?: string
}

#Subscription: {
	// The endpoint that receives notifications from the SNS topic. The endpoint value depends on the protocol that you specify. For more information, see the ``Endpoint`` parameter of the ``Subscribe`` action in the *API Reference*.
	Endpoint: string
	// The subscription's protocol. For more information, see the ``Protocol`` parameter of the ``Subscribe`` action in the *API Reference*.
	Protocol: string
}

#Tag: {
	// The required key portion of the tag.
	Key: string
	// The optional value portion of the tag.
	Value: string
}
