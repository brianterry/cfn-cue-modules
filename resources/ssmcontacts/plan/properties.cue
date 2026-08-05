package plan

#Properties: {
	// Contact ID for the AWS SSM Incident Manager Contact to associate the plan.
	ContactId?: string & =~"arn:[-\\w+=\\/,.@]+:[-\\w+=\\/,.@]+:[-\\w+=\\/,.@]*:[0-9]+:([\\w+=\\/,.@:-]+)*"
	// Rotation Ids to associate with Oncall Contact for engagement.
	RotationIds?: [...string]
	// The stages that an escalation plan or engagement plan engages contacts and contact methods in.
	Stages?: [...#Stage]
}

#ChannelTargetInfo: {
	// The Amazon Resource Name (ARN) of the contact channel.
	ChannelId: string
	// The number of minutes to wait to retry sending engagement in the case the engagement initially fails.
	RetryIntervalInMinutes: int
}

#ContactTargetInfo: {
	// The Amazon Resource Name (ARN) of the contact.
	ContactId: string
	// A Boolean value determining if the contact's acknowledgement stops the progress of stages in the plan.
	IsEssential: bool
}

#Stage: {
	// The time to wait until beginning the next stage.
	DurationInMinutes: int
	// The contacts or contact methods that the escalation plan or engagement plan is engaging.
	Targets?: [...#Targets]
}

#Targets: {
	ChannelTargetInfo?: #ChannelTargetInfo
	ContactTargetInfo?: #ContactTargetInfo
}
