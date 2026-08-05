package permission

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::Lambda::Permission`` resource grants an AWS service or another account permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function.
 To grant permission to another account, specify the account ID as the ``Principal``. To grant permission to an organization defined in AOlong, specify the organization ID as the ``PrincipalOrgID``. For AWS services, the principal is a domain-style identifier defined by the service, like ``s3.amazonaws.com`` or ``sns.amazonaws.com``. For AWS services, you can also specify the ARN of the associated resource as the ``SourceArn``. If you grant permission to a service principal without specifying the source, other accounts could potentially configure resources in their account to invoke your Lambda function.
 If your function has a function URL, you can specify the ``FunctionUrlAuthType`` parameter. This adds a condition to your permission that only applies when your function URL's ``AuthType`` matches the specified ``FunctionUrlAuthType``. For more information about the ``AuthType`` parameter, see [Control access to function URLs](https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html).
 This resource adds a statement to a resource-based permission policy for the function. For more information about function policies, see [Lambda Function Policies](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::Permission"
	Properties: #Properties
}
