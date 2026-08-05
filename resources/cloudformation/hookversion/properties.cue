package hookversion

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the IAM execution role to use to register the type. If your resource type calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. CloudFormation then assumes that execution role to provide your resource type with the appropriate credentials.
	ExecutionRoleArn?: string & =~"arn:.+:iam::[0-9]{12}:role/.+" & strings.MaxRunes(256)
	// Specifies logging configuration information for a type.
	LoggingConfig?: #LoggingConfig
	// A url to the S3 bucket containing the schema handler package that contains the schema, event handlers, and associated files for the type you want to register.

For information on generating a schema handler package for the type you want to register, see submit in the CloudFormation CLI User Guide.
	SchemaHandlerPackage: string & strings.MaxRunes(4096)
	// The name of the type being registered.

We recommend that type names adhere to the following pattern: company_or_organization::service::type.
	TypeName: string & =~"^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}$"
}

#LoggingConfig: {
	// The Amazon CloudWatch log group to which CloudFormation sends error logging information when invoking the type's handlers.
	LogGroupName?: string & =~"^[\\.\\-_/#A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The ARN of the role that CloudFormation should assume when sending log entries to CloudWatch logs.
	LogRoleArn?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
