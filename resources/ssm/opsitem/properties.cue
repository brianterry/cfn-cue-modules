package opsitem

#Properties: {
	// The category of the OpsItem.
	Category?: string
	// The description of the OpsItem.
	Description: string
	// The priority of the OpsItem.
	Priority?: int
	// The severity of the OpsItem.
	Severity?: string
	// The origin of the OpsItem.
	Source: string
	// Tags for the OpsItem.
	Tags?: [...#Tag]
	// The title of the OpsItem.
	Title: string
}

#Tag: {
	Key: string
	Value: string
}
