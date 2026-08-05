package stackuserassociation

#Properties: {
	// The authentication type for the user who is associated with the stack. You must specify USERPOOL.
	AuthenticationType: string
	// Specifies whether a welcome email is sent to a user after the user is created in the user pool.
	SendEmailNotification?: bool
	// The name of the stack that is associated with the user.
	StackName: string
	// The name of the user who is associated with the stack.
	UserName: string
}
