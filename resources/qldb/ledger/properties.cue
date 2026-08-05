package ledger

#Properties: {
	DeletionProtection?: bool
	KmsKey?: string
	Name?: string
	PermissionsMode: string
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
