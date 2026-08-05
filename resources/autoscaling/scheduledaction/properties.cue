package scheduledaction

#Properties: {
	// The name of the Auto Scaling group.
	AutoScalingGroupName: string
	// The desired capacity is the initial capacity of the Auto Scaling group after the scheduled action runs and the capacity it attempts to maintain.
	DesiredCapacity?: int
	// The latest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.
	EndTime?: string
	// The minimum size of the Auto Scaling group.
	MaxSize?: int
	// The minimum size of the Auto Scaling group.
	MinSize?: int
	// The recurring schedule for the action, in Unix cron syntax format. When StartTime and EndTime are specified with Recurrence , they form the boundaries of when the recurring action starts and stops.
	Recurrence?: string
	// The earliest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.
	StartTime?: string
	// The time zone for the cron expression.
	TimeZone?: string
}
