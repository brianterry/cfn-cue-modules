package user

#Properties: {
	// The authentication type for the user.
	AuthenticationType: string
	// The first name, or given name, of the user.
	FirstName?: string
	// The last name, or surname, of the user.
	LastName?: string
	// The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent.
	MessageAction?: string
	// The email address of the user.
	UserName: string
}
