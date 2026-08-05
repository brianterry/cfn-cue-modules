package influxdbinstance

import "strings"

#Properties: {
	// The allocated storage for the InfluxDB instance.
	AllocatedStorage?: int & >=20 & <=16384
	// The bucket for the InfluxDB instance.
	Bucket?: string & =~"^[^_][^\"]*$" & strings.MinRunes(2) & strings.MaxRunes(64)
	// The compute instance of the InfluxDB instance.
	DbInstanceType?: "db.influx.medium" | "db.influx.large" | "db.influx.xlarge" | "db.influx.2xlarge" | "db.influx.4xlarge" | "db.influx.8xlarge" | "db.influx.12xlarge" | "db.influx.16xlarge" | "db.influx.24xlarge"
	// The name of an existing InfluxDB parameter group.
	DbParameterGroupIdentifier?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	// The storage type of the InfluxDB instance.
	DbStorageType?: "InfluxIOIncludedT1" | "InfluxIOIncludedT2" | "InfluxIOIncludedT3"
	// Deployment type of the InfluxDB Instance.
	DeploymentType?: "SINGLE_AZ" | "WITH_MULTIAZ_STANDBY"
	// Configuration for sending logs to customer account from the InfluxDB instance.
	LogDeliveryConfiguration?: {
		S3Configuration: {
			BucketName: string & =~"^[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
			Enabled: bool
		}
	}
	// The maintenance schedule for the InfluxDB instance.
	MaintenanceSchedule?: #MaintenanceSchedule
	// The unique name that is associated with the InfluxDB instance.
	Name?: string & =~"^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$" & strings.MinRunes(3) & strings.MaxRunes(40)
	// Network type of the InfluxDB Instance.
	NetworkType?: "IPV4" | "DUAL"
	// The organization for the InfluxDB instance.
	Organization?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The password for the InfluxDB instance.
	Password?: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(8) & strings.MaxRunes(64)
	// The port number on which InfluxDB accepts connections.
	Port?: int & >=1024 & <=65535
	// Attach a public IP to the customer ENI.
	PubliclyAccessible?: bool
	// An arbitrary set of tags (key-value pairs) for this DB instance.
	Tags?: [...#Tag]
	// The username for the InfluxDB instance.
	Username?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// A list of Amazon EC2 VPC security groups to associate with this InfluxDB instance.
	VpcSecurityGroupIds?: [...string]
	// A list of EC2 subnet IDs for this InfluxDB instance.
	VpcSubnetIds?: [...string]
}

#MaintenanceSchedule: {
	// The preferred maintenance window in format ddd:HH:MM-ddd:HH:MM.
	PreferredMaintenanceWindow: string & =~"^$|^(Mon|Tue|Wed|Thu|Fri|Sat|Sun):([01]\\d|2[0-3]):[0-5]\\d-(Mon|Tue|Wed|Thu|Fri|Sat|Sun):([01]\\d|2[0-3]):[0-5]\\d$" & strings.MinRunes(0) & strings.MaxRunes(19)
	// The IANA timezone identifier for the maintenance schedule.
	Timezone: string & =~"^(UTC|[A-Za-z_]+/[A-Za-z0-9_]+(/[A-Za-z0-9_]+)?)$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
