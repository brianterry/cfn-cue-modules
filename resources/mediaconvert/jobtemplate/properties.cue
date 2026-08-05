package jobtemplate

#Properties: {
	AccelerationSettings?: #AccelerationSettings
	Category?: string
	Description?: string
	HopDestinations?: [...#HopDestination]
	Name?: string
	Priority?: int
	Queue?: string
	SettingsJson: {...}
	StatusUpdateInterval?: string
	Tags?: {...}
}

#AccelerationSettings: {
	Mode: string
}

#HopDestination: {
	Priority?: int
	Queue?: string
	WaitMinutes?: int
}
