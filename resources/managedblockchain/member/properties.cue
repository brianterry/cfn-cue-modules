package member

#Properties: {
	InvitationId?: string
	MemberConfiguration: #MemberConfiguration
	NetworkConfiguration?: #NetworkConfiguration
	NetworkId?: string
}

#ApprovalThresholdPolicy: {
	ProposalDurationInHours?: int
	ThresholdComparator?: string
	ThresholdPercentage?: int
}

#MemberConfiguration: {
	Description?: string
	MemberFrameworkConfiguration?: #MemberFrameworkConfiguration
	Name: string
}

#MemberFabricConfiguration: {
	AdminPassword: string
	AdminUsername: string
}

#MemberFrameworkConfiguration: {
	MemberFabricConfiguration?: #MemberFabricConfiguration
}

#NetworkConfiguration: {
	Description?: string
	Framework: string
	FrameworkVersion: string
	Name: string
	NetworkFrameworkConfiguration?: #NetworkFrameworkConfiguration
	VotingPolicy: #VotingPolicy
}

#NetworkFabricConfiguration: {
	Edition: string
}

#NetworkFrameworkConfiguration: {
	NetworkFabricConfiguration?: #NetworkFabricConfiguration
}

#VotingPolicy: {
	ApprovalThresholdPolicy?: #ApprovalThresholdPolicy
}
