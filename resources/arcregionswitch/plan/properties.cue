package plan

import "strings"

#Properties: {
	AssociatedAlarms?: #AssociatedAlarmMap
	Description?: string
	ExecutionRole: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	Name: string & =~"^[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,30}[a-zA-Z0-9])?$" & strings.MinRunes(1) & strings.MaxRunes(32)
	PrimaryRegion?: string & =~"^[a-z]{2}-[a-z-]+-\\d+$"
	RecoveryApproach: #RecoveryApproach
	RecoveryTimeObjectiveMinutes?: number & >=1 & <=10080
	Regions: [...string & =~"^[a-z]{2}-[a-z-]+-\\d+$"]
	ReportConfiguration?: #ReportConfiguration
	Tags?: #Tags
	Triggers?: [...#Trigger]
	Workflows: [...#Workflow]
}

#ArcRoutingControlConfiguration: {
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
	RegionAndRoutingControls: #RegionAndRoutingControls
	TimeoutMinutes?: number & >=1
}

#ArcRoutingControlState: {
	RoutingControlArn: string
	State: #RoutingControlStateChange
}

#Asg: {
	Arn?: string & =~"^arn:aws[a-zA-Z-]*:autoscaling:[a-z0-9-]+:\\d{12}:autoScalingGroup:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}:autoScalingGroupName/[\\S\\s]{1,255}$"
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
}

#AssociatedAlarm: {
	AlarmType: #AlarmType
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
	ResourceIdentifier: string
}

#AuroraProvisionedScalingConfiguration: {
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
	GlobalClusterIdentifier: string & =~"^[A-Za-z][0-9A-Za-z-:._]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	InstanceArns: #RegionAuroraInstanceArnMap
	RegionDatabaseClusterArns: #RegionAuroraClusterMap
	TimeoutMinutes?: number & >=1
}

#AuroraServerlessScalingConfiguration: {
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
	GlobalClusterIdentifier: string & =~"^[A-Za-z][0-9A-Za-z-:._]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	RegionDatabaseClusterArns: #RegionAuroraClusterMap
	TargetPercent?: number
	TimeoutMinutes?: number & >=1
}

#CustomActionLambdaConfiguration: {
	Lambdas: [...#Lambdas]
	RegionToRun: #RegionToRunIn
	RetryIntervalMinutes: number
	TimeoutMinutes?: number & >=1
	Ungraceful?: #LambdaUngraceful
}

#DocumentDbConfiguration: {
	Behavior: string
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	DatabaseClusterArns: [...string & =~"^arn:aws[a-zA-Z-]*:rds:[a-z0-9-]+:\\d{12}:cluster:[a-zA-Z0-9][a-zA-Z0-9-_]{0,99}$"]
	ExternalId?: string
	GlobalClusterIdentifier: string & =~"^[A-Za-z][0-9A-Za-z-:._]*$"
	TimeoutMinutes?: number & >=1
	Ungraceful?: #DocumentDbUngraceful
}

#DocumentDbUngraceful: {
	Ungraceful?: #DocumentDbUngracefulBehavior
}

#Ec2AsgCapacityIncreaseConfiguration: {
	Asgs: [...#Asg]
	CapacityMonitoringApproach?: string
	TargetPercent?: number
	TimeoutMinutes?: number & >=1
	Ungraceful?: #Ec2Ungraceful
}

#Ec2Ungraceful: {
	MinimumSuccessPercentage: number & >=0 & <=99
}

#EcsCapacityIncreaseConfiguration: {
	CapacityMonitoringApproach?: string
	Services: [...#Service]
	TargetPercent?: number
	TimeoutMinutes?: number & >=1
	Ungraceful?: #EcsUngraceful
}

#EcsUngraceful: {
	MinimumSuccessPercentage: number & >=0 & <=99
}

#EksCluster: {
	ClusterArn: string & =~"^arn:aws[a-zA-Z-]*:eks:[a-z0-9-]+:\\d{12}:cluster/[a-zA-Z0-9][a-zA-Z0-9-_]{0,99}$"
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
}

#EksResourceScalingConfiguration: {
	CapacityMonitoringApproach?: string
	EksClusters?: [...#EksCluster]
	KubernetesResourceType: #KubernetesResourceType
	ScalingResources?: [...#KubernetesScalingApplication]
	TargetPercent?: number & >=1
	TimeoutMinutes?: number & >=1
	Ungraceful?: #EksResourceScalingUngraceful
}

#EksResourceScalingUngraceful: {
	MinimumSuccessPercentage: number & >=0 & <=99
}

#EventSourceMapping: {
	Arn: string & =~"^arn:aws[a-zA-Z-]*:lambda:[a-z0-9-]+:\\d{12}:event-source-mapping:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
}

#ExecutionApprovalConfiguration: {
	ApprovalRole: string
	TimeoutMinutes?: number & >=1
}

#GlobalAuroraConfiguration: {
	Behavior: string
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	DatabaseClusterArns: [...string]
	ExternalId?: string
	GlobalClusterIdentifier: string
	TimeoutMinutes?: number & >=1
	Ungraceful?: #GlobalAuroraUngraceful
}

#GlobalAuroraUngraceful: {
	Ungraceful?: #GlobalAuroraUngracefulBehavior
}

#HealthCheckState: {
	HealthCheckId?: string
	Region?: string
}

#KubernetesResourceType: {
	ApiVersion: string
	Kind: string
}

#KubernetesScalingResource: {
	HpaName?: string
	Name: string
	Namespace: string & =~"^[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$"
}

#LambdaEventSourceMappingConfiguration: {
	Action: "enable" | "disable"
	RegionEventSourceMappings: #RegionEventSourceMappingMap
	TimeoutMinutes?: number & >=1
	Ungraceful?: #LambdaEventSourceMappingUngraceful
}

#LambdaEventSourceMappingUngraceful: {
	Behavior?: "skip"
}

#LambdaUngraceful: {
	Behavior?: string
}

#Lambdas: {
	Arn?: string
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
}

#NeptuneGlobalDatabaseConfiguration: {
	Behavior: string
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
	GlobalClusterIdentifier: string & =~"^[A-Za-z][0-9A-Za-z-]*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	RegionDatabaseClusterArns: #RegionNeptuneClusterArnMap
	TimeoutMinutes?: number & >=1
	Ungraceful?: #NeptuneUngraceful
}

#NeptuneUngraceful: {
	Ungraceful?: #NeptuneUngracefulBehavior
}

#ParallelExecutionBlockConfiguration: {
	Steps: [...#Step]
}

#RdsCreateCrossRegionReplicaConfiguration: {
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	DbInstanceArnMap: #RdsDbInstanceArnMap
	ExternalId?: string
	TimeoutMinutes?: number & >=1
}

#RdsPromoteReadReplicaConfiguration: {
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	DbInstanceArnMap: #RdsDbInstanceArnMap
	ExternalId?: string
	TimeoutMinutes?: number & >=1
}

#RegionSwitchPlanConfiguration: {
	Arn: string & =~"^arn:aws[a-zA-Z-]*:arc-region-switch::[0-9]{12}:plan/([a-zA-Z0-9](?:[a-zA-Z0-9-]{0,30}[a-zA-Z0-9])?):([a-z0-9]{6})$"
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
}

#ReportConfiguration: {
	ReportOutput?: [...#ReportOutputConfiguration]
}

#Route53HealthCheckConfiguration: {
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
	HostedZoneId: string & strings.MinRunes(1) & strings.MaxRunes(32)
	RecordName: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	RecordSets?: [...#Route53ResourceRecordSet]
	TimeoutMinutes?: number & >=1
}

#Route53ResourceRecordSet: {
	RecordSetIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Region?: string & =~"^[a-z]{2}-[a-z-]+-\\d+$"
}

#S3ReportOutputConfiguration: {
	BucketOwner?: string & =~"^\\d{12}$"
	BucketPath?: string & =~"^(?:s3://)?[a-z0-9][a-z0-9-]{1,61}[a-z0-9](?:/[^/ ][^/]*)*/?$" & strings.MinRunes(3) & strings.MaxRunes(512)
}

#Service: {
	ClusterArn?: string & =~"^arn:aws[a-zA-Z-]*:ecs:[a-z0-9-]+:\\d{12}:cluster/[a-zA-Z0-9_-]{1,255}$"
	CrossAccountRole?: string & =~"^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"
	ExternalId?: string
	ServiceArn?: string & =~"^arn:aws[a-zA-Z-]*:ecs:[a-z0-9-]+:\\d{12}:service/[a-zA-Z0-9_-]+/[a-zA-Z0-9_-]{1,255}$"
}

#Step: {
	Description?: string
	ExecutionBlockConfiguration: #ExecutionBlockConfiguration
	ExecutionBlockType: #ExecutionBlockType
	Name: string
}

#Trigger: {
	Action: #WorkflowTargetAction
	Conditions: [...#TriggerCondition]
	Description?: string
	MinDelayMinutesBetweenExecutions: number
	TargetRegion: string & =~"^[a-z]{2}-[a-z-]+-\\d+$"
}

#TriggerCondition: {
	AssociatedAlarmName: string
	Condition: #AlarmCondition
}

#Workflow: {
	Steps?: [...#Step]
	WorkflowDescription?: string
	WorkflowTargetAction: #WorkflowTargetAction
	WorkflowTargetRegion?: string & =~"^[a-z]{2}-[a-z-]+-\\d+$"
}
