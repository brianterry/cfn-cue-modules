package queuefleetassociation

#Properties: {
	FarmId: string & =~"^farm-[0-9a-f]{32}$"
	FleetId: string & =~"^fleet-[0-9a-f]{32}$"
	QueueId: string & =~"^queue-[0-9a-f]{32}$"
}
