package warmpool

#Properties: {
	AutoScalingGroupName: string
	InstanceReusePolicy?: #InstanceReusePolicy
	MaxGroupPreparedCapacity?: int
	MinSize?: int
	PoolState?: string
}

#InstanceReusePolicy: {
	ReuseOnScaleIn?: bool
}
