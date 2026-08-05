package deploymentgroup

#Properties: {
	// Information about the Amazon CloudWatch alarms that are associated with the deployment group.
	AlarmConfiguration?: #AlarmConfiguration
	// The name of an existing CodeDeploy application to associate this deployment group with.
	ApplicationName: string
	// Information about the automatic rollback configuration that is associated with the deployment group. If you specify this property, don't specify the Deployment property.
	AutoRollbackConfiguration?: #AutoRollbackConfiguration
	// A list of associated Auto Scaling groups that CodeDeploy automatically deploys revisions to when new instances are created. Duplicates are not allowed.
	AutoScalingGroups?: [...string]
	// Information about blue/green deployment options for a deployment group.
	BlueGreenDeploymentConfiguration?: #BlueGreenDeploymentConfiguration
	// The application revision to deploy to this deployment group. If you specify this property, your target application revision is deployed as soon as the provisioning process is complete. If you specify this property, don't specify the AutoRollbackConfiguration property.
	Deployment?: #Deployment
	// A deployment configuration name or a predefined configuration name. With predefined configurations, you can deploy application revisions to one instance at a time (CodeDeployDefault.OneAtATime), half of the instances at a time (CodeDeployDefault.HalfAtATime), or all the instances at once (CodeDeployDefault.AllAtOnce).
	DeploymentConfigName?: string
	// A name for the deployment group. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the deployment group name.
	DeploymentGroupName?: string
	// Attributes that determine the type of deployment to run and whether to route deployment traffic behind a load balancer. If you specify this property with a blue/green deployment type, don't specify the AutoScalingGroups, LoadBalancerInfo, or Deployment properties.
	DeploymentStyle?: #DeploymentStyle
	// The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format <clustername>:<servicename>.
	ECSServices?: [...#ECSService]
	// The Amazon EC2 tags that are already applied to Amazon EC2 instances that you want to include in the deployment group. CodeDeploy includes all Amazon EC2 instances identified by any of the tags you specify in this deployment group. Duplicates are not allowed. You can specify EC2TagFilters or Ec2TagSet, but not both.
	Ec2TagFilters?: [...#EC2TagFilter]
	// Information about groups of tags applied to Amazon EC2 instances. Use when the deployment group includes only Amazon EC2 instances identified by all the tag groups. Cannot be used in the same call as ec2TagFilter.
	Ec2TagSet?: #EC2TagSet
	// Information about the load balancer to use in a deployment.
	LoadBalancerInfo?: #LoadBalancerInfo
	// The on-premises instance tags already applied to on-premises instances that you want to include in the deployment group. CodeDeploy includes all on-premises instances identified by any of the tags you specify in this deployment group. Duplicates are not allowed. You can specify OnPremisesInstanceTagFilters or OnPremisesInstanceTagSet, but not both.
	OnPremisesInstanceTagFilters?: [...#TagFilter]
	// Information about groups of tags applied to on-premises instances. The deployment group includes only on-premises instances identified by all the tag groups. You can specify OnPremisesInstanceTagFilters or OnPremisesInstanceTagSet, but not both.
	OnPremisesTagSet?: #OnPremisesTagSet
	// Indicates what happens when new Amazon EC2 instances are launched mid-deployment and do not receive the deployed application revision. If this option is set to UPDATE or is unspecified, CodeDeploy initiates one or more 'auto-update outdated instances' deployments to apply the deployed application revision to the new Amazon EC2 instances. If this option is set to IGNORE, CodeDeploy does not initiate a deployment to update the new Amazon EC2 instances. This may result in instances having different revisions.
	OutdatedInstancesStrategy?: string
	// A service role Amazon Resource Name (ARN) that grants CodeDeploy permission to make calls to AWS services on your behalf. For more information, see 'Create a Service Role for AWS CodeDeploy' in the AWS CodeDeploy User Guide.
	ServiceRoleArn: string
	// The metadata that you apply to CodeDeploy deployment groups to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define.
	Tags?: [...#Tag]
	// Indicates whether the deployment group was configured to have CodeDeploy install a termination hook into an Auto Scaling group.
	TerminationHookEnabled?: bool
	// Information about triggers associated with the deployment group. Duplicates are not allowed.
	TriggerConfigurations?: [...#TriggerConfig]
}

#Alarm: {
	// The name of the alarm. Maximum length is 255 characters. Each alarm name can be used only once in a list of alarms.
	Name?: string
}

#AlarmConfiguration: {
	// A list of alarms configured for the deployment or deployment group. A maximum of 10 alarms can be added.
	Alarms?: [...#Alarm]
	// Indicates whether the alarm configuration is enabled.
	Enabled?: bool
	// Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from Amazon CloudWatch. The default value is false.
	IgnorePollAlarmFailure?: bool
}

#AutoRollbackConfiguration: {
	// Indicates whether a defined automatic rollback configuration is currently enabled.
	Enabled?: bool
	// The event type or types that trigger a rollback.
	Events?: [...string]
}

#BlueGreenDeploymentConfiguration: {
	// Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment.
	DeploymentReadyOption?: #DeploymentReadyOption
	// Information about how instances are provisioned for a replacement environment in a blue/green deployment.
	GreenFleetProvisioningOption?: #GreenFleetProvisioningOption
	// Information about whether to terminate instances in the original fleet during a blue/green deployment.
	TerminateBlueInstancesOnDeploymentSuccess?: #BlueInstanceTerminationOption
}

#BlueInstanceTerminationOption: {
	// The action to take on instances in the original environment after a successful blue/green deployment.
	Action?: string
	// For an Amazon EC2 deployment, the number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment. For an Amazon ECS deployment, the number of minutes before deleting the original (blue) task set. During an Amazon ECS deployment, CodeDeploy shifts traffic from the original (blue) task set to a replacement (green) task set. The maximum setting is 2880 minutes (2 days).
	TerminationWaitTimeInMinutes?: int
}

#Deployment: {
	// A description of the deployment.
	Description?: string
	// If true, then if an ApplicationStop, BeforeBlockTraffic, or AfterBlockTraffic deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event. If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails. If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted.
	IgnoreApplicationStopFailures?: bool
	// Information about the location of stored application artifacts and the service from which to retrieve them.
	Revision: #RevisionLocation
}

#DeploymentReadyOption: {
	// Information about when to reroute traffic from an original environment to a replacement environment in a blue/green deployment. CONTINUE_DEPLOYMENT: Register new instances with the load balancer immediately after the new application revision is installed on the instances in the replacement environment. STOP_DEPLOYMENT: Do not register new instances with a load balancer unless traffic rerouting is started using ContinueDeployment . If traffic rerouting is not started before the end of the specified wait period, the deployment status is changed to Stopped.
	ActionOnTimeout?: string
	// The number of minutes to wait before the status of a blue/green deployment is changed to Stopped if rerouting is not started manually. Applies only to the STOP_DEPLOYMENT option for actionOnTimeout.
	WaitTimeInMinutes?: int
}

#DeploymentStyle: {
	// Indicates whether to route deployment traffic behind a load balancer.
	DeploymentOption?: string
	// Indicates whether to run an in-place or blue/green deployment.
	DeploymentType?: string
}

#EC2TagFilter: {
	// The tag filter key.
	Key?: string
	// The tag filter type.
	Type?: string
	// The tag filter value.
	Value?: string
}

#EC2TagSet: {
	// The Amazon EC2 tags that are already applied to Amazon EC2 instances that you want to include in the deployment group. CodeDeploy includes all Amazon EC2 instances identified by any of the tags you specify in this deployment group.
	Ec2TagSetList?: [...#EC2TagSetListObject]
}

#EC2TagSetListObject: {
	// A list that contains other lists of Amazon EC2 instance tag groups. For an instance to be included in the deployment group, it must be identified by all of the tag groups in the list.
	Ec2TagGroup?: [...#EC2TagFilter]
}

#ECSService: {
	// The name of the cluster that the Amazon ECS service is associated with.
	ClusterName: string
	// The name of the target Amazon ECS service.
	ServiceName: string
}

#ELBInfo: {
	// For blue/green deployments, the name of the load balancer that is used to route traffic from original instances to replacement instances in a blue/green deployment. For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment is complete.
	Name?: string
}

#GitHubLocation: {
	// The SHA1 commit ID of the GitHub commit that represents the bundled artifacts for the application revision.
	CommitId: string
	// The GitHub account and repository pair that stores the application revision to be deployed.
	Repository: string
}

#GreenFleetProvisioningOption: {
	// The method used to add instances to a replacement environment.
	Action?: string
}

#LoadBalancerInfo: {
	// An array that contains information about the load balancers to use for load balancing in a deployment. If you're using Classic Load Balancers, specify those load balancers in this array.
	ElbInfoList?: [...#ELBInfo]
	// An array that contains information about the target groups to use for load balancing in a deployment. If you're using Application Load Balancers and Network Load Balancers, specify their associated target groups in this array.
	TargetGroupInfoList?: [...#TargetGroupInfo]
	// The target group pair information. This is an array of TargeGroupPairInfo objects with a maximum size of one.
	TargetGroupPairInfoList?: [...#TargetGroupPairInfo]
}

#OnPremisesTagSet: {
	// A list that contains other lists of on-premises instance tag groups. For an instance to be included in the deployment group, it must be identified by all of the tag groups in the list.
	OnPremisesTagSetList?: [...#OnPremisesTagSetListObject]
}

#OnPremisesTagSetListObject: {
	// Information about groups of on-premises instance tags.
	OnPremisesTagGroup?: [...#TagFilter]
}

#RevisionLocation: {
	GitHubLocation?: #GitHubLocation
	// The type of application revision.
	RevisionType?: string
	S3Location?: #S3Location
}

#S3Location: {
	// The name of the Amazon S3 bucket where the application revision is stored.
	Bucket: string
	// The file type of the application revision.
	BundleType?: string
	// The ETag of the Amazon S3 object that represents the bundled artifacts for the application revision. If the ETag is not specified as an input parameter, ETag validation of the object is skipped.
	ETag?: string
	// The name of the Amazon S3 object that represents the bundled artifacts for the application revision.
	Key: string
	// A specific version of the Amazon S3 object that represents the bundled artifacts for the application revision. If the version is not specified, the system uses the most recent version by default.
	Version?: string
}

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}

#TagFilter: {
	// The on-premises instance tag filter key.
	Key?: string
	// The on-premises instance tag filter type
	Type?: string
	// The on-premises instance tag filter value.
	Value?: string
}

#TargetGroupInfo: {
	// For blue/green deployments, the name of the target group that instances in the original environment are deregistered from, and instances in the replacement environment registered with. For in-place deployments, the name of the target group that instances are deregistered from, so they are not serving traffic during a deployment, and then re-registered with after the deployment completes. No duplicates allowed.
	Name?: string
}

#TargetGroupPairInfo: {
	// The path used by a load balancer to route production traffic when an Amazon ECS deployment is complete.
	ProdTrafficRoute?: #TrafficRoute
	// One pair of target groups. One is associated with the original task set. The second is associated with the task set that serves traffic after the deployment is complete.
	TargetGroups?: [...#TargetGroupInfo]
	// An optional path used by a load balancer to route test traffic after an Amazon ECS deployment. Validation can occur while test traffic is served during a deployment.
	TestTrafficRoute?: #TrafficRoute
}

#TrafficRoute: {
	// The Amazon Resource Name (ARN) of one listener. The listener identifies the route between a target group and a load balancer. This is an array of strings with a maximum size of one.
	ListenerArns?: [...string]
}

#TriggerConfig: {
	// The event type or types that trigger notifications.
	TriggerEvents?: [...string]
	// The name of the notification trigger.
	TriggerName?: string
	// The Amazon Resource Name (ARN) of the Amazon Simple Notification Service topic through which notifications about deployment or instance events are sent.
	TriggerTargetArn?: string
}
