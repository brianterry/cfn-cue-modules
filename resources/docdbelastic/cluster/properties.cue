package cluster

import "strings"

#Properties: {
	AdminUserName: string
	AdminUserPassword?: string
	AuthType: string
	BackupRetentionPeriod?: int
	ClusterName: string & =~"[a-zA-z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*" & strings.MinRunes(1) & strings.MaxRunes(50)
	KmsKeyId?: string
	PreferredBackupWindow?: string
	PreferredMaintenanceWindow?: string
	ShardCapacity: int
	ShardCount: int
	ShardInstanceCount?: int
	SubnetIds?: [...string]
	Tags?: [...#Tag]
	VpcSecurityGroupIds?: [...string]
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
