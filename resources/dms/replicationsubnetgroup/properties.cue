package replicationsubnetgroup

#Properties: {
	ReplicationSubnetGroupDescription: string
	ReplicationSubnetGroupIdentifier?: string
	SubnetIds: [...string]
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
