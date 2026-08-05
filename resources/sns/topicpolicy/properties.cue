package topicpolicy

#Properties: {
	// A policy document that contains permissions to add to the specified SNS topics.
	PolicyDocument: {...}
	// The Amazon Resource Names (ARN) of the topics to which you want to add the policy. You can use the ``Ref`` function to specify an ``AWS::SNS::Topic`` resource.
	Topics: [...string]
}
