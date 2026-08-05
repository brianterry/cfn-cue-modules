package standard

#Properties: {
	// Specifies which controls are to be disabled in a standard.
	// *Maximum*: ``100``
	DisabledStandardsControls?: [...#StandardsControl]
	// The ARN of the standard that you want to enable. To view a list of available ASH standards and their ARNs, use the [DescribeStandards](https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_DescribeStandards.html) API operation.
	StandardsArn: string & =~"arn:aws\\S*:securityhub:\\S"
}

#StandardsControl: {
	// A user-defined reason for changing a control's enablement status in a specified standard. If you are disabling a control, then this property is required.
	Reason?: string
	// The Amazon Resource Name (ARN) of the control.
	StandardsControlArn: string & =~"arn:aws\\S*:securityhub:\\S*"
}
