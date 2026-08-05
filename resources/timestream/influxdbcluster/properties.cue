package influxdbcluster

import "strings"

#Properties: {
	// The allocated storage for the InfluxDB cluster.
	AllocatedStorage?: int & >=20 & <=15360
	// The bucket for the InfluxDB cluster.
	Bucket?: string & =~"^[^_][^\"]*$" & strings.MinRunes(2) & strings.MaxRunes(64)
	// The compute instance of the InfluxDB cluster.
	DbInstanceType?: "db.influx.medium" | "db.influx.large" | "db.influx.xlarge" | "db.influx.2xlarge" | "db.influx.4xlarge" | "db.influx.8xlarge" | "db.influx.12xlarge" | "db.influx.16xlarge" | "db.influx.24xlarge"
	// The name of an existing InfluxDB parameter group.
	DbParameterGroupIdentifier?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	// The storage type of the InfluxDB cluster.
	DbStorageType?: "InfluxIOIncludedT1" | "InfluxIOIncludedT2" | "InfluxIOIncludedT3"
	// Deployment type of the InfluxDB cluster.
	DeploymentType?: "MULTI_NODE_READ_REPLICAS"
	// Failover mode of the InfluxDB cluster.
	FailoverMode?: "AUTOMATIC" | "NO_FAILOVER"
	// Configuration for sending logs to customer account from the InfluxDB cluster.
	LogDeliveryConfiguration?: {
		S3Configuration: {
			BucketName: string & =~"^[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
			Enabled: bool
		}
	}
	// The unique name that is associated with the InfluxDB cluster.
	Name?: string & =~"^[a-zA-z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$" & strings.MinRunes(3) & strings.MaxRunes(40)
	// Network type of the InfluxDB cluster.
	NetworkType?: "IPV4" | "DUAL"
	// The organization for the InfluxDB cluster.
	Organization?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The password for the InfluxDB cluster.
	Password?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(8) & strings.MaxRunes(64)
	// The port number on which InfluxDB accepts connections.
	Port?: int & >=1024 & <=65535
	// Attach a public IP to the customer ENI.
	PubliclyAccessible?: bool
	// An arbitrary set of tags (key-value pairs) for this DB cluster.
	Tags?: [...#Tag]
	// The username for the InfluxDB cluster.
	Username?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// A list of Amazon EC2 VPC security groups to associate with this InfluxDB cluster.
	VpcSecurityGroupIds?: [...string]
	// A list of EC2 subnet IDs for this InfluxDB cluster.
	VpcSubnetIds?: [...string]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
