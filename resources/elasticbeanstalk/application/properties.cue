package application

#Properties: {
	// A name for the Elastic Beanstalk application. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the application name.
	ApplicationName?: string
	// Your description of the application.
	Description?: string
	// Specifies an application resource lifecycle configuration to prevent your application from accumulating too many versions.
	ResourceLifecycleConfig?: #ApplicationResourceLifecycleConfig
}

#ApplicationResourceLifecycleConfig: {
	// The ARN of an IAM service role that Elastic Beanstalk has permission to assume. The ServiceRole property is required the first time that you provide a ResourceLifecycleConfig for the application. After you provide it once, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again. You can, however, specify it in subsequent updates to change the Service Role to another value.
	ServiceRole?: string
	// Defines lifecycle settings for application versions.
	VersionLifecycleConfig?: #ApplicationVersionLifecycleConfig
}

#ApplicationVersionLifecycleConfig: {
	// Specify a max age rule to restrict the length of time that application versions are retained for an application.
	MaxAgeRule?: #MaxAgeRule
	// Specify a max count rule to restrict the number of application versions that are retained for an application.
	MaxCountRule?: #MaxCountRule
}

#MaxAgeRule: {
	// Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
	DeleteSourceFromS3?: bool
	// Specify true to apply the rule, or false to disable it.
	Enabled?: bool
	// Specify the number of days to retain an application versions.
	MaxAgeInDays?: int
}

#MaxCountRule: {
	// Set to true to delete a version's source bundle from Amazon S3 when Elastic Beanstalk deletes the application version.
	DeleteSourceFromS3?: bool
	// Specify true to apply the rule, or false to disable it.
	Enabled?: bool
	// Specify the maximum number of application versions to retain.
	MaxCount?: int
}
