package permission

import "strings"

#Properties: {
	// The action that the principal can use on the function. For example, ``lambda:InvokeFunction`` or ``lambda:GetFunction``.
	Action: string & =~"^(lambda:[*]|lambda:[a-zA-Z]+|[*])$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// For Alexa Smart Home functions, a token that the invoker must supply.
	EventSourceToken?: string & =~"^[a-zA-Z0-9._\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name or ARN of the Lambda function, version, or alias.
	// **Name formats**
	// +  *Function name* – ``my-function`` (name-only), ``my-function:v1`` (with alias).
	// +  *Function ARN* – ``arn:aws:lambda:us-west-2:123456789012:function:my-function``.
	// +  *Partial ARN* – ``123456789012:function:my-function``.
	// You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
	FunctionName: string & =~"^(arn:(aws[a-zA-Z-]*)?:lambda:)?((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST(\\.PUBLISHED)?|[a-zA-Z0-9-_]+))?$" & strings.MinRunes(1) & strings.MaxRunes(140)
	// The type of authentication that your function URL uses. Set to ``AWS_IAM`` if you want to restrict access to authenticated users only. Set to ``NONE`` if you want to bypass IAM authentication to create a public endpoint. For more information, see [Control access to Lambda function URLs](https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html).
	FunctionUrlAuthType?: "AWS_IAM" | "NONE"
	// Indicates whether the permission applies when the function is invoked through a function URL.
	InvokedViaFunctionUrl?: bool
	// The AWS-service, AWS-account, IAM user, or IAM role that invokes the function. If you specify a service, use ``SourceArn`` or ``SourceAccount`` to limit who can invoke the function through that service.
	Principal: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The identifier for your organization in AOlong. Use this to grant permissions to all the AWS-accounts under this organization.
	PrincipalOrgID?: string & =~"^o-[a-z0-9]{10,32}$" & strings.MinRunes(12) & strings.MaxRunes(34)
	// For AWS-service, the ID of the AWS-account that owns the resource. Use this together with ``SourceArn`` to ensure that the specified account owns the resource. It is possible for an Amazon S3 bucket to be deleted by its owner and recreated by another account.
	SourceAccount?: string & =~"^\\d{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// For AWS-services, the ARN of the AWS resource that invokes the function. For example, an Amazon S3 bucket or Amazon SNS topic.
	// Note that Lambda configures the comparison using the ``StringLike`` operator.
	SourceArn?: string & =~"^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$" & strings.MinRunes(12) & strings.MaxRunes(1024)
}
