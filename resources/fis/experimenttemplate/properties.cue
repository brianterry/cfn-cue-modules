package experimenttemplate

import "strings"

#Properties: {
	Actions?: #ExperimentTemplateActionMap
	Description: #ExperimentTemplateDescription
	ExperimentOptions?: #ExperimentTemplateExperimentOptions
	ExperimentReportConfiguration?: #ExperimentTemplateExperimentReportConfiguration
	LogConfiguration?: #ExperimentTemplateLogConfiguration
	RoleArn: #RoleArn
	StopConditions: #ExperimentTemplateStopConditionList
	Tags?: {...}
	Targets: #ExperimentTemplateTargetMap
}

#ActionId: string & strings.MaxRunes(64)

#CloudWatchDashboard: {
	DashboardIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#ExperimentTemplateAction: {
	ActionId: #ActionId
	Description?: #ExperimentTemplateActionItemDescription
	// The parameters for the action, if applicable.
	Parameters?: {...}
	StartAfter?: #ExperimentTemplateActionItemStartAfterList
	// One or more targets for the action.
	Targets?: {...}
}

#ExperimentTemplateActionItemDescription: string & strings.MaxRunes(512)

#ExperimentTemplateActionItemParameter: string & strings.MaxRunes(1024)

#ExperimentTemplateActionItemStartAfter: string & strings.MaxRunes(64)

#ExperimentTemplateActionItemStartAfterList: [...#ExperimentTemplateActionItemStartAfter]

#ExperimentTemplateActionItemTarget: string & strings.MaxRunes(64)

#ExperimentTemplateActionMap: {...}

#ExperimentTemplateDescription: string & strings.MaxRunes(512)

#ExperimentTemplateExperimentOptions: {
	// The account targeting setting for the experiment template.
	AccountTargeting?: "multi-account" | "single-account"
	// The target resolution failure mode for the experiment template.
	EmptyTargetResolutionMode?: "fail" | "skip"
}

#ExperimentTemplateExperimentReportConfiguration: {
	DataSources?: {
		CloudWatchDashboards?: [...#CloudWatchDashboard]
	}
	Outputs: {
		ExperimentReportS3Configuration: {
			BucketName: string & strings.MinRunes(3) & strings.MaxRunes(63)
			Prefix?: string & strings.MinRunes(1) & strings.MaxRunes(256)
		}
	}
	PostExperimentDuration?: string
	PreExperimentDuration?: string
}

#ExperimentTemplateId: string

#ExperimentTemplateLogConfiguration: {
	CloudWatchLogsConfiguration?: {
		LogGroupArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	}
	LogSchemaVersion: int & >=1
	S3Configuration?: {
		BucketName: string & strings.MinRunes(3) & strings.MaxRunes(63)
		Prefix?: string & strings.MinRunes(1) & strings.MaxRunes(700)
	}
}

#ExperimentTemplateStopCondition: {
	Source: #StopConditionSource
	Value?: #StopConditionValue
}

#ExperimentTemplateStopConditionList: [...#ExperimentTemplateStopCondition]

#ExperimentTemplateTarget: {
	Filters?: #ExperimentTemplateTargetFilterList
	Parameters?: {...}
	ResourceArns?: #ResourceArnList
	ResourceTags?: {...}
	ResourceType: #ResourceType
	SelectionMode: #ExperimentTemplateTargetSelectionMode
}

#ExperimentTemplateTargetFilter: {
	Path: #ExperimentTemplateTargetFilterPath
	Values: #ExperimentTemplateTargetFilterValues
}

#ExperimentTemplateTargetFilterList: [...#ExperimentTemplateTargetFilter]

#ExperimentTemplateTargetFilterPath: string & strings.MaxRunes(256)

#ExperimentTemplateTargetFilterValue: string & strings.MaxRunes(128)

#ExperimentTemplateTargetFilterValues: [...#ExperimentTemplateTargetFilterValue]

#ExperimentTemplateTargetMap: {...}

#ExperimentTemplateTargetSelectionMode: string & strings.MaxRunes(64)

#ResourceArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)

#ResourceArnList: [...#ResourceArn]

#ResourceType: string & strings.MaxRunes(64)

#RoleArn: string & strings.MaxRunes(1224)

#StopConditionSource: string & strings.MaxRunes(64)

#StopConditionValue: string & strings.MinRunes(20) & strings.MaxRunes(2048)
