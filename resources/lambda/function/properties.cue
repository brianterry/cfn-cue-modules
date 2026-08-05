package function

import "strings"

#Properties: {
	// The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is ``x86_64``.
	Architectures?: [..."x86_64" | "arm64"]
	// Configuration for the capacity provider that manages compute resources for Lambda functions.
	CapacityProviderConfig?: #CapacityProviderConfig
	// The code for the function. You can define your function code in multiple ways:
  +  For .zip deployment packages, you can specify the S3 location of the .zip file in the ``S3Bucket``, ``S3Key``, and ``S3ObjectVersion`` properties.
  +  For .zip deployment packages, you can alternatively define the function code inline in the ``ZipFile`` property. This method works only for Node.js and Python functions.
  +  For container images, specify the URI of your container image in the ECR registry in the ``ImageUri`` property.
	Code: #Code
	// To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.
	CodeSigningConfigArn?: string & =~"arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:code-signing-config:csc-[a-z0-9]{17}"
	// A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see [Dead-letter queues](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq).
	DeadLetterConfig?: #DeadLetterConfig
	// A description of the function.
	Description?: string & strings.MaxRunes(256)
	// Configuration settings for [durable functions](https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html), including execution timeout and retention period for execution history.
	DurableConfig?: #DurableConfig
	// Environment variables that are accessible from function code during execution.
	Environment?: #Environment
	// The size of the function's ``/tmp`` directory in MB. The default value is 512, but it can be any whole number between 512 and 10,240 MB.
	EphemeralStorage?: #EphemeralStorage
	// Connection settings for an Amazon EFS or Amazon S3 Files file system. To connect a function to a file system, a mount target must be available in every Availability Zone that your function connects to. If your template contains an [AWS::EFS::MountTarget](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html) or [AWS::S3Files::MountTarget](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3files-mounttarget.html) resource, you must also specify a ``DependsOn`` attribute to ensure that the mount target is created or updated before the function.
 For more information about using the ``DependsOn`` attribute, see [DependsOn Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html).
	FileSystemConfigs?: [...#FileSystemConfig]
	// The name of the Lambda function, up to 64 characters in length. If you don't specify a name, CFN generates one.
 If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
	FunctionName?: string & strings.MinRunes(1)
	// Configuration that defines the scaling behavior for a Lambda Managed Instances function, including the minimum and maximum number of execution environments that can be provisioned.
	FunctionScalingConfig?: #FunctionScalingConfig
	// The name of the method within your code that Lambda calls to run your function. Handler is required if the deployment package is a .zip file archive. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see [Lambda programming model](https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html).
	Handler?: string & =~"^[^\\s]+$" & strings.MaxRunes(128)
	// Configuration values that override the container image Dockerfile settings. For more information, see [Container image settings](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms).
	ImageConfig?: #ImageConfig
	// The ARN of the KMSlong (KMS) customer managed key that's used to encrypt the following resources:
  +  The function's [environment variables](https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption).
  +  The function's [Lambda SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html) snapshots.
  +  When used with ``SourceKMSKeyArn``, the unzipped version of the .zip deployment package that's used for function invocations. For more information, see [Specifying a customer managed key for Lambda](https://docs.aws.amazon.com/lambda/latest/dg/encrypt-zip-package.html#enable-zip-custom-encryption).
  +  The optimized version of the container image that's used for function invocations. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). For more information, see [Function lifecycle](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-lifecycle).
  
 If you don't provide a customer managed key, Lambda uses an [owned key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk) or an [](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
	KmsKeyArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
	// A list of [function layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html) to add to the function's execution environment. Specify each layer by its ARN, including the version.
	Layers?: [...string]
	// The function's Amazon CloudWatch Logs configuration settings.
	LoggingConfig?: #LoggingConfig
	// The amount of [memory available to the function](https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console) at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB. Note that new AWS accounts have reduced concurrency and memory quotas. AWS raises these quotas automatically based on your usage. You can also request a quota increase.
	MemorySize?: int
	// The type of deployment package. Set to ``Image`` for container image and set ``Zip`` for .zip file archive.
	PackageType?: "Image" | "Zip"
	PublishToLatestPublished?: bool
	// The status of your function's recursive loop detection configuration.
 When this value is set to ``Allow``and Lambda detects your function being invoked as part of a recursive loop, it doesn't take any action.
 When this value is set to ``Terminate`` and Lambda detects your function being invoked as part of a recursive loop, it stops your function being invoked and notifies you.
	RecursiveLoop?: #RecursiveLoop
	// The number of simultaneous executions to reserve for the function.
	ReservedConcurrentExecutions?: int & >=0
	// The Amazon Resource Name (ARN) of the function's execution role.
	Role: string & =~"^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"
	// The identifier of the function's [runtime](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html). Runtime is required if the deployment package is a .zip file archive. Specifying a runtime results in an error if you're deploying a function using a container image.
 The following list includes deprecated runtimes. Lambda blocks creating new functions and updating existing functions shortly after each runtime is deprecated. For more information, see [Runtime use after deprecation](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels).
 For a list of all currently supported runtimes, see [Supported runtimes](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported).
	Runtime?: string
	// Sets the runtime management configuration for a function's version. For more information, see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).
	RuntimeManagementConfig?: #RuntimeManagementConfig
	// The function's [SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html) setting.
	SnapStart?: #SnapStart
	// A list of [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to apply to the function.
  You must have the ``lambda:TagResource``, ``lambda:UntagResource``, and ``lambda:ListTags`` permissions for your [principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html) to manage the CFN stack. If you don't have these permissions, there might be unexpected behavior with stack-level tags propagating to the resource during resource creation and update.
	Tags?: [...#Tag]
	// The function's tenant isolation configuration settings. Determines whether the Lambda function runs on a shared or dedicated infrastructure per unique tenant.
	TenancyConfig?: #TenancyConfig
	// The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds. For more information, see [Lambda execution environment](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html).
	Timeout?: int & >=1
	// Set ``Mode`` to ``Active`` to sample and trace a subset of incoming requests with [X-Ray](https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html).
	TracingConfig?: #TracingConfig
	// For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more information, see [Configuring a Lambda function to access resources in a VPC](https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html).
	VpcConfig?: #VpcConfig
}

#CapacityProviderConfig: {
	// Configuration for Lambda-managed instances used by the capacity provider.
	LambdaManagedInstancesCapacityProviderConfig: #LambdaManagedInstancesCapacityProviderConfig
}

#Code: {
	// URI of a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html) in the Amazon ECR registry.
	ImageUri?: string
	// An Amazon S3 bucket in the same AWS-Region as your function. The bucket can be in a different AWS-account.
	S3Bucket?: string & =~"^[0-9A-Za-z\\.\\-_]*(?<!\\.)$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// The Amazon S3 key of the deployment package.
	S3Key?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	S3ObjectStorageMode?: "COPY" | "REFERENCE"
	// For versioned objects, the version of the deployment package object to use.
	S3ObjectVersion?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The ARN of the KMSlong (KMS) customer managed key that's used to encrypt your function's .zip deployment package. If you don't provide a customer managed key, Lambda uses an [owned key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk).
	SourceKMSKeyArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
	// (Node.js and Python) The source code of your Lambda function. If you include your function source inline with this parameter, CFN places it in a file named ``index`` and zips it to create a [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html). This zip file cannot exceed 4MB. For the ``Handler`` property, the first part of the handler identifier must be ``index``. For example, ``index.handler``.
  When you specify source code inline for a Node.js function, the ``index`` file that CFN creates uses the extension ``.js``. This means that Node.js treats the file as a CommonJS module.
 When using Node.js 24 or later, Node.js can automatically detect if a ``.js`` file should be treated as CommonJS or as an ES module. To enable auto-detection, add the ``--experimental-detect-module`` flag to the ``NODE_OPTIONS`` environment variable. For more information, see [Experimental Node.js features](https://docs.aws.amazon.com//lambda/latest/dg/lambda-nodejs.html#nodejs-experimental-features).
   For JSON, you must escape quotes and special characters such as newline (``\n``) with a backslash.
 If you specify a function that interacts with an AWS CloudFormation custom resource, you don't have to write your own functions to send responses to the custom resource that invoked the function. AWS CloudFormation provides a response module ([cfn-response](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-lambda-function-code-cfnresponsemodule.html)) that simplifies sending responses. See [Using Lambda with CloudFormation](https://docs.aws.amazon.com/lambda/latest/dg/services-cloudformation.html) for details.
	ZipFile?: string
}

#DeadLetterConfig: {
	// The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
	TargetArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
}

#DurableConfig: {
	// The maximum time (in seconds) that a durable execution can run before timing out. This timeout applies to the entire durable execution, not individual function invocations.
	ExecutionTimeout: int & >=1 & <=31622400
	KMSKeyArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
	// The number of days to retain execution history after a durable execution completes. After this period, execution history is no longer available through the GetDurableExecutionHistory API.
	RetentionPeriodInDays?: int & >=1 & <=90
}

#Environment: {
	// Environment variable key-value pairs. For more information, see [Using Lambda environment variables](https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html).
 If the value of the environment variable is a time or a duration, enclose the value in quotes.
	Variables?: {...}
}

#EphemeralStorage: {
	// The size of the function's ``/tmp`` directory.
	Size: int & >=512 & <=10240
}

#FileSystemConfig: {
	// The Amazon Resource Name (ARN) of the Amazon EFS or Amazon S3 Files access point that provides access to the file system.
	Arn: string & =~"^arn:aws[a-zA-Z-]*:elasticfilesystem:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:access-point/fsap-[a-f0-9]{17}$|^arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}$" & strings.MaxRunes(200)
	// The path where the function can access the file system, starting with ``/mnt/``.
	LocalMountPath: string & =~"^/mnt/[a-zA-Z0-9-_.]+$" & strings.MaxRunes(160)
}

#FunctionScalingConfig: {
	// The maximum number of execution environments that can be provisioned for the function.
	MaxExecutionEnvironments?: int & >=0 & <=15000
	// The minimum number of execution environments to maintain for the function.
	MinExecutionEnvironments?: int & >=0 & <=15000
}

#ImageConfig: {
	// Specifies parameters that you want to pass in with ENTRYPOINT. You can specify a maximum of 1,500 parameters in the list.
	Command?: [...string]
	// Specifies the entry point to their application, which is typically the location of the runtime executable. You can specify a maximum of 1,500 string entries in the list.
	EntryPoint?: [...string]
	// Specifies the working directory. The length of the directory string cannot exceed 1,000 characters.
	WorkingDirectory?: string
}

#LambdaManagedInstancesCapacityProviderConfig: {
	// The Amazon Resource Name (ARN) of the capacity provider.
	CapacityProviderArn: string & =~"^arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:capacity-provider:[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(140)
	// The amount of memory in GiB allocated per vCPU for execution environments.
	ExecutionEnvironmentMemoryGiBPerVCpu?: number & >=2 & <=8
	// The maximum number of concurrent executions that can run on each execution environment.
	PerExecutionEnvironmentMaxConcurrency?: int & >=1 & <=1600
}

#LoggingConfig: {
	// Set this property to filter the application logs for your function that Lambda sends to CloudWatch. Lambda only sends application logs at the selected level of detail and lower, where ``TRACE`` is the highest level and ``FATAL`` is the lowest.
	ApplicationLogLevel?: "TRACE" | "DEBUG" | "INFO" | "WARN" | "ERROR" | "FATAL"
	// The format in which Lambda sends your function's application and system logs to CloudWatch. Select between plain text and structured JSON.
	LogFormat?: "Text" | "JSON"
	// The name of the Amazon CloudWatch log group the function sends logs to. By default, Lambda functions send logs to a default log group named ``/aws/lambda/<function name>``. To use a different log group, enter an existing log group or enter a new log group name.
	LogGroup?: string & =~"[\\.\\-_/#A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(512)
	// Set this property to filter the system logs for your function that Lambda sends to CloudWatch. Lambda only sends system logs at the selected level of detail and lower, where ``DEBUG`` is the highest level and ``WARN`` is the lowest.
	SystemLogLevel?: "DEBUG" | "INFO" | "WARN"
}

#RuntimeManagementConfig: {
	// The ARN of the runtime version you want the function to use.
  This is only required if you're using the *Manual* runtime update mode.
	RuntimeVersionArn?: string
	// Specify the runtime update mode.
  +  *Auto (default)* - Automatically update to the most recent and secure runtime version using a [Two-phase runtime version rollout](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase). This is the best choice for most customers to ensure they always benefit from runtime updates.
  +  *FunctionUpdate* - LAM updates the runtime of you function to the most recent and secure runtime version when you update your function. This approach synchronizes runtime updates with function deployments, giving you control over when runtime updates are applied and allowing you to detect and mitigate rare runtime update incompatibilities early. When using this setting, you need to regularly update your functions to keep their runtime up-to-date.
  +  *Manual* - You specify a runtime version in your function configuration. The function will use this runtime version indefinitely. In the rare case where a new runtime version is incompatible with an existing function, this allows you to roll back your function to an earlier runtime version. For more information, see [Roll back a runtime version](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback).
  
 *Valid Values*: ``Auto`` | ``FunctionUpdate`` | ``Manual``
	UpdateRuntimeOn: "Auto" | "FunctionUpdate" | "Manual"
}

#SnapStart: {
	// Set ``ApplyOn`` to ``PublishedVersions`` to create a snapshot of the initialized execution environment when you publish a function version.
	ApplyOn: "PublishedVersions" | "None"
}

#SnapStartResponse: {
	// When set to ``PublishedVersions``, Lambda creates a snapshot of the execution environment when you publish a function version.
	ApplyOn?: "PublishedVersions" | "None"
	// When you provide a [qualified Amazon Resource Name (ARN)](https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using), this response element indicates whether SnapStart is activated for the specified function version.
	OptimizationStatus?: "On" | "Off"
}

#Tag: {
	// The key for this tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for this tag.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TenancyConfig: {
	// Tenant isolation mode allows for invocation to be sent to a corresponding execution environment dedicated to a specific tenant ID.
	TenantIsolationMode: "PER_TENANT"
}

#TracingConfig: {
	// The tracing mode.
	Mode?: "Active" | "PassThrough"
}

#VpcConfig: {
	// Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
	Ipv6AllowedForDualStack?: bool
	// A list of VPC security group IDs.
	SecurityGroupIds?: [...string]
	// A list of VPC subnet IDs.
	SubnetIds?: [...string]
}
