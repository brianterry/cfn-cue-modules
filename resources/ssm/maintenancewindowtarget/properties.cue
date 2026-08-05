package maintenancewindowtarget

#Properties: {
	// A description for the target.
	Description?: string
	// The name for the maintenance window target.
	Name?: string
	// A user-provided value that will be included in any Amazon CloudWatch Events events that are raised while running tasks for these targets in this maintenance window.
	OwnerInformation?: string
	// The type of target that is being registered with the maintenance window.
	ResourceType: string
	// The targets to register with the maintenance window.
	Targets: [...#Targets]
	// The ID of the maintenance window to register the target with.
	WindowId: string
}

#Targets: {
	// User-defined criteria for sending commands that target managed nodes that meet the criteria.
	Key: string
	// User-defined criteria that maps to Key.
	Values: [...string]
}
