package replicationtask

#Properties: {
	CdcStartPosition?: string
	CdcStartTime?: number
	CdcStopPosition?: string
	MigrationType: string
	ReplicationInstanceArn: string
	ReplicationTaskIdentifier?: string
	ReplicationTaskSettings?: string
	ResourceIdentifier?: string
	SourceEndpointArn: string
	TableMappings: string
	Tags?: [...#Tag]
	TargetEndpointArn: string
	TaskData?: string
}

#Tag: {
	Key: string
	Value: string
}
