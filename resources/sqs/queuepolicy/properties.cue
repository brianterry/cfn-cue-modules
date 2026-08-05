package queuepolicy

#Properties: {
	// A policy document that contains the permissions for the specified SQS queues. For more information about SQS policies, see [Using custom policies with the access policy language](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html) in the *Developer Guide*.
	PolicyDocument: {...}
	// The URLs of the queues to which you want to add the policy. You can use the ``Ref`` function to specify an ``AWS::SQS::Queue`` resource.
	Queues: [...string]
}
