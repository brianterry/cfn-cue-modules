package stackset

import "strings"

#Properties: {
	// The Amazon Resource Number (ARN) of the IAM role to use to create this stack set. Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account.
	AdministrationRoleARN?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to the target organization or organizational unit (OU). Specify only if PermissionModel is SERVICE_MANAGED.
	AutoDeployment?: #AutoDeployment
	// Specifies the AWS account that you are acting from. By default, SELF is specified. For self-managed permissions, specify SELF; for service-managed permissions, if you are signed in to the organization's management account, specify SELF. If you are signed in to a delegated administrator account, specify DELEGATED_ADMIN.
	CallAs?: "SELF" | "DELEGATED_ADMIN"
	// In some cases, you must explicitly acknowledge that your stack set template contains certain capabilities in order for AWS CloudFormation to create the stack set and related stack instances.
	Capabilities?: [...#Capability]
	// A description of the stack set. You can use the description to identify the stack set's purpose or other important information.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the AWSCloudFormationStackSetExecutionRole role for the stack set operation.
	ExecutionRoleName?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
	ManagedExecution?: {
		Active?: #Active
	}
	OperationPreferences?: #OperationPreferences
	// The input parameters for the stack set template.
	Parameters?: [...#Parameter]
	// Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.
	PermissionModel: "SERVICE_MANAGED" | "SELF_MANAGED"
	// A group of stack instances with parameters in some specific accounts and regions.
	StackInstancesGroup?: [...#StackInstances]
	// The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
	StackSetName: string & =~"^[a-zA-Z][a-zA-Z0-9\\-]{0,127}$" & strings.MaxRunes(128)
	// The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.
	Tags?: [...#Tag]
	// The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes.
	TemplateBody?: string & strings.MinRunes(1) & strings.MaxRunes(51200)
	// Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket.
	TemplateURL?: string & strings.MinRunes(1) & strings.MaxRunes(5120)
}

#Account: string & =~"^[0-9]{12}$"

#Active: bool

#AutoDeployment: {
	// A list of StackSet ARNs that this StackSet depends on for auto-deployment operations. When auto-deployment is triggered, operations will be sequenced to ensure all dependencies complete successfully before this StackSet's operation begins.
	DependsOn?: [...#StackSetArn]
	// If set to true, StackSets automatically deploys additional stack instances to AWS Organizations accounts that are added to a target organization or organizational unit (OU) in the specified Regions. If an account is removed from a target organization or OU, StackSets deletes stack instances from the account in the specified Regions.
	Enabled?: bool
	// If set to true, stack resources are retained when an account is removed from a target organization or OU. If set to false, stack resources are deleted. Specify only if Enabled is set to True.
	RetainStacksOnAccountRemoval?: bool
}

#Capability: "CAPABILITY_IAM" | "CAPABILITY_NAMED_IAM" | "CAPABILITY_AUTO_EXPAND"

#ConcurrencyMode: "STRICT_FAILURE_TOLERANCE" | "SOFT_FAILURE_TOLERANCE"

#DeploymentTargets: {
	// The filter type you want to apply on organizational units and accounts.
	AccountFilterType?: "NONE" | "UNION" | "INTERSECTION" | "DIFFERENCE"
	// AWS accounts that you want to create stack instances in the specified Region(s) for.
	Accounts?: [...#Account]
	// Returns the value of the AccountsUrl property.
	AccountsUrl?: string & =~"(s3://|http(s?)://).+" & strings.MinRunes(1) & strings.MaxRunes(5120)
	// The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
	OrganizationalUnitIds?: [...#OrganizationalUnitId]
}

#OperationPreferences: {
	ConcurrencyMode?: #ConcurrencyMode
	FailureToleranceCount?: int & >=0
	FailureTolerancePercentage?: int & >=0 & <=100
	MaxConcurrentCount?: int & >=1
	MaxConcurrentPercentage?: int & >=0 & <=100
	RegionConcurrencyType?: #RegionConcurrencyType
	RegionOrder?: [...#Region]
}

#OrganizationalUnitId: string & =~"^(ou-[a-z0-9]{4,32}-[a-z0-9]{8,32}|r-[a-z0-9]{4,32})$"

#Parameter: {
	// The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.
	ParameterKey: string
	// The input value associated with the parameter.
	ParameterValue: string
}

#Region: string & =~"^[a-zA-Z0-9-]{1,128}$"

#RegionConcurrencyType: "SEQUENTIAL" | "PARALLEL"

#StackInstances: {
	DeploymentTargets: #DeploymentTargets
	// A list of stack set parameters whose values you want to override in the selected stack instances.
	ParameterOverrides?: [...#Parameter]
	// The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
	Regions: [...#Region]
}

#StackSetArn: string

#Tag: {
	// A string used to identify this tag. You can specify a maximum of 127 characters for a tag key.
	Key: string & =~"^(?!aws:.*)[a-zA-Z0-9\\s\\:\\_\\.\\/\\=\\+\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
