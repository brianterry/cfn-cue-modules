package publisher

#Properties: {
	// Whether you accept the terms and conditions for publishing extensions in the CloudFormation registry. You must accept the terms and conditions in order to publish public extensions to the CloudFormation registry. The terms and conditions can be found at https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf
	AcceptTermsAndConditions: bool
	// If you are using a Bitbucket or GitHub account for identity verification, the Amazon Resource Name (ARN) for your connection to that account.
	ConnectionArn?: string & =~"arn:aws(-[w]+)*:.+:.+:[0-9]{12}:.+"
}
