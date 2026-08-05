package trigger

#Properties: {
	// The actions initiated by this trigger.
	Actions: [...#Action]
	// A description of this trigger.
	Description?: string
	// Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires.
	EventBatchingCondition?: #EventBatchingCondition
	// The name of the trigger.
	Name?: string
	// The predicate of this trigger, which defines when it will fire.
	Predicate?: #Predicate
	// A cron expression used to specify the schedule.
	Schedule?: string
	// Set to true to start SCHEDULED and CONDITIONAL triggers when created. True is not supported for ON_DEMAND triggers.
	StartOnCreation?: bool
	// The tags to use with this trigger.
	Tags?: {...}
	// The type of trigger that this is.
	Type: string
	// The name of the workflow associated with the trigger.
	WorkflowName?: string
}

#Action: {
	// The job arguments used when this trigger fires. For this job run, they replace the default arguments set in the job definition itself.
	Arguments?: {...}
	// The name of the crawler to be used with this action.
	CrawlerName?: string
	// The name of a job to be executed.
	JobName?: string
	// Specifies configuration properties of a job run notification.
	NotificationProperty?: #NotificationProperty
	// The name of the SecurityConfiguration structure to be used with this action.
	SecurityConfiguration?: string
	// The JobRun timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters TIMEOUT status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.
	Timeout?: int
}

#Condition: {
	// The state of the crawler to which this condition applies.
	CrawlState?: string
	// The name of the crawler to which this condition applies.
	CrawlerName?: string
	// The name of the job whose JobRuns this condition applies to, and on which this trigger waits.
	JobName?: string
	// A logical operator.
	LogicalOperator?: string
	// The condition state. Currently, the values supported are SUCCEEDED, STOPPED, TIMEOUT, and FAILED.
	State?: string
}

#EventBatchingCondition: {
	// Number of events that must be received from Amazon EventBridge before EventBridge event trigger fires.
	BatchSize: int
	// Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received.
	BatchWindow?: int
}

#NotificationProperty: {
	// After a job run starts, the number of minutes to wait before sending a job run delay notification
	NotifyDelayAfter?: int
}

#Predicate: {
	// A list of the conditions that determine when the trigger will fire.
	Conditions?: [...#Condition]
	// An optional field if only one condition is listed. If multiple conditions are listed, then this field is required.
	Logical?: string
}
