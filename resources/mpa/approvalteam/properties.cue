package approvalteam

#Properties: {
	ApprovalStrategy: #ApprovalStrategy
	Description: string
	Name: string
	Policies: [...#Policy]
	Tags?: #Tags
}

#ApprovalStrategy: {
	MofN: #MofNApprovalStrategy
}

#Approver: {
	ApproverId?: string
	PrimaryIdentityId: string
	PrimaryIdentitySourceArn: string
	PrimaryIdentityStatus?: string
	ResponseTime?: #Timestamp
}

#MofNApprovalStrategy: {
	MinApprovalsRequired: int
}

#Policy: {
	PolicyArn: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}

#Tags: [...#Tag]

#Timestamp: string
