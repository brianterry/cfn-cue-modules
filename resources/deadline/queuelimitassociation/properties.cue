package queuelimitassociation

#Properties: {
	FarmId: string & =~"^farm-[0-9a-f]{32}$"
	LimitId: string & =~"^limit-[0-9a-f]{32}$"
	QueueId: string & =~"^queue-[0-9a-f]{32}$"
}
