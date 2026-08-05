package productsubscription

#Properties: {
	// The generic ARN of the product being subscribed to
	ProductArn: string & =~"arn:aws\\S*:securityhub:\\S*"
}
