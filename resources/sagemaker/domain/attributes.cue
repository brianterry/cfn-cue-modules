package domain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the created domain.
	DomainArn: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:domain/.*" & strings.MaxRunes(256)
	// The URL to the created domain.
	Url: string & strings.MaxRunes(1024)
	// The domain name.
	DomainId: string & =~"^d-(-*[a-z0-9])+" & strings.MaxRunes(63)
	// The ID of the Amazon Elastic File System (EFS) managed by this Domain.
	HomeEfsFileSystemId: string & strings.MaxRunes(32)
	// The ID of the security group that authorizes traffic between the RSessionGateway apps and the RStudioServerPro app.
	SecurityGroupIdForDomainBoundary: string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)
	// The SSO managed application instance ID.
	SingleSignOnManagedApplicationInstanceId: string & strings.MaxRunes(256)
	// The ARN of the application managed by SageMaker in IAM Identity Center. This value is only returned for domains created after October 1, 2023.
	SingleSignOnApplicationArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::[0-9]+:application/[a-zA-Z0-9-_.]+/apl-[a-zA-Z0-9]+$"
}
