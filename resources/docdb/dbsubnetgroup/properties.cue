package dbsubnetgroup

#Properties: {
	DBSubnetGroupDescription: string
	DBSubnetGroupName?: string
	SubnetIds: [...string]
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
