package jobtemplate

import "strings"

#Properties: {
	// The criteria that determine when and how a job abort takes place.
	AbortConfig?: {
		CriteriaList: [...#AbortCriteria]
	}
	// A description of the Job Template.
	Description: string & =~"[^\\p{C}]+" & strings.MaxRunes(2028)
	DestinationPackageVersions?: [...#DestinationPackageVersion]
	// The job document. Required if you don't specify a value for documentSource.
	Document?: string & strings.MaxRunes(32768)
	// An S3 link to the job document to use in the template. Required if you don't specify a value for document.
	DocumentSource?: string & strings.MinRunes(1) & strings.MaxRunes(1350)
	// Optional for copying a JobTemplate from a pre-existing Job configuration.
	JobArn?: string
	JobExecutionsRetryConfig?: {
		RetryCriteriaList?: [...#RetryCriteria]
	}
	// Allows you to create a staged rollout of a job.
	JobExecutionsRolloutConfig?: {
		ExponentialRolloutRate?: #ExponentialRolloutRate
		MaximumPerMinute?: #MaximumPerMinute
	}
	JobTemplateId: string & =~"[a-zA-Z0-9_-]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	MaintenanceWindows?: [...#MaintenanceWindow]
	// Configuration for pre-signed S3 URLs.
	PresignedUrlConfig?: {
		ExpiresInSec?: #ExpiresInSec
		RoleArn: #RoleArn
	}
	// Metadata that can be used to manage the JobTemplate.
	Tags?: [...#Tag]
	// Specifies the amount of time each device has to finish its execution of the job.
	TimeoutConfig?: {
		InProgressTimeoutInMinutes: #InProgressTimeoutInMinutes
	}
}

#AbortCriteria: {
	// The type of job action to take to initiate the job abort.
	Action: #Action
	// The type of job execution failures that can initiate a job abort.
	FailureType: #FailureType
	// The minimum number of things which must receive job execution notifications before the job can be aborted.
	MinNumberOfExecutedThings: #MinNumberOfExecutedThings
	// The minimum percentage of job execution failures that must occur to initiate the job abort.
	ThresholdPercentage: #ThresholdPercentage
}

#ExponentialRolloutRate: {
	// The minimum number of things that will be notified of a pending job, per minute at the start of job rollout. This parameter allows you to define the initial rate of rollout.
	BaseRatePerMinute: #BaseRatePerMinute
	// The exponential factor to increase the rate of rollout for a job.
	IncrementFactor: #IncrementFactor
	// The criteria to initiate the increase in rate of rollout for a job.
	RateIncreaseCriteria: #RateIncreaseCriteria
}

#MaintenanceWindow: {
	DurationInMinutes?: int & >=1 & <=1430
	StartTime?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#RateIncreaseCriteria: {
	NumberOfNotifiedThings?: #NumberOfNotifiedThings
	NumberOfSucceededThings?: #NumberOfSucceededThings
}

#RetryCriteria: {
	FailureType?: #JobRetryFailureType
	NumberOfRetries?: int & >=0 & <=10
}

#Tag: {
	// The tag's key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
