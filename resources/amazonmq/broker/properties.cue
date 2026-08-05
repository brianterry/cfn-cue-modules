package broker

import "strings"

#Properties: {
	AuthenticationStrategy?: string
	AutoMinorVersionUpgrade?: bool
	BrokerName: string & =~"^[0-9A-Za-z_-]{1,50}$"
	// The intended configuration (ID and revision) to be set when creating or updating.
This property is write-only so that applications of a ConfigurationAssociation do not cause drift.

	Configuration?: #ConfigurationId
	DataReplicationMode?: "NONE" | "CRDR" | string & =~"^[Nn][Oo][Nn][Ee]$" | string & =~"^[Cc][Rr][Dd][Rr]$"
	// The ARN of the primary broker that is used to replicate data from in a data replication pair when creating a replica.
This field is only used at creation-time. Changes to it subsequently are ignored by CloudFormation.
Information on the current primary is available on the DataReplicationMetadata object returned by the API.

	DataReplicationPrimaryBrokerArn?: string & =~"^arn:.*"
	DeploymentMode: "SINGLE_INSTANCE" | "ACTIVE_STANDBY_MULTI_AZ" | "CLUSTER_MULTI_AZ" | string & =~"^[Ss][Ii][Nn][Gg][Ll][Ee]_[Ii][Nn][Ss][Tt][Aa][Nn][Cc][Ee]$" | string & =~"^[Aa][Cc][Tt][Ii][Vv][Ee]_[Ss][Tt][Aa][Nn][Dd][Bb][Yy][__][Mm][Uu][Ll][Tt][Ii]_[Aa][Zz]$" | string & =~"^[Cc][Ll][Uu][Ss][Tt][Ee][Rr]_[Mm][Uu][Ll][Tt][Ii][__][Aa][Zz]$"
	EncryptionOptions?: #EncryptionOptions
	EngineType: "ACTIVEMQ" | "RABBITMQ" | string & =~"^[Aa][Cc][Tt][Ii][Vv][Ee][Mm][Qq]$" | string & =~"^[Rr][Aa][Bb][Bb][Ii][Tt][Mm][Qq]$"
	// The version specified to use. See also EngineVersionCurrent.
	EngineVersion?: string
	HostInstanceType: string
	LdapServerMetadata?: #LdapServerMetadata
	Logs?: #LogList
	MaintenanceWindowStartTime?: #MaintenanceWindow
	PubliclyAccessible: bool
	// The ARNs of the resource shares to be associated with the broker.

	ResourceShareArns?: [...string & =~"^arn:.*"]
	SecurityGroups?: [...string]
	// The broker's storage size in GB.
	StorageSize?: int
	StorageType?: "EBS" | "EFS" | string & =~"^[Ee]([Bb]|[Ff])[Ss]$"
	SubnetIds?: [...string]
	Tags?: [...#TagsEntry]
	// Users to configure on the broker. 
For RabbitMQ, this should be one user, created when the broker is created, and changes thereafter are ignored.
For ActiveMQ, changes to anything but Password are detected and will trigger an update,
but changes to Password cannot be detected so updates to Password may not take effect unless there is some other change.

	Users?: [...#User]
}

#ConfigurationId: {
	Id: string
	Revision: int
}

#EncryptionOptions: {
	// The customer master key (CMK) to use for the A KMS (KMS). 
This key is used to encrypt your data at rest. If not provided, Amazon MQ will use a default CMK to encrypt your data.
The Key ARN is recommended so that drift can be detected,
but a key ID or key alias will also be accepted for API compatibility reasons.

	KmsKeyId?: string
	UseAwsOwnedKey: bool
}

#LdapServerMetadata: {
	Hosts: [...string]
	RoleBase: string
	RoleName?: string
	RoleSearchMatching: string
	RoleSearchSubtree?: bool
	ServiceAccountPassword?: string
	ServiceAccountUsername: string
	UserBase: string
	UserRoleName?: string
	UserSearchMatching: string
	UserSearchSubtree?: bool
}

#LogList: {
	Audit?: bool
	General?: bool
}

#MaintenanceWindow: {
	// _Allowed Values_: <code>MONDAY</code> | <code>TUESDAY</code> | <code>WEDNESDAY</code> | <code>THURSDAY</code> | <code>FRIDAY</code> | <code>SATURDAY</code> | <code>SUNDAY</code>

	DayOfWeek: "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY" | "SUNDAY" | string & =~"^[Mm][Oo][Nn][Dd][Aa][Yy]$" | string & =~"^[Tt][Uu][Ee][Ss][Dd][Aa][Yy]$" | string & =~"^[Ww][Ee][Dd][Nn][Ee][Ss][Dd][Aa][Yy]$" | string & =~"^[Tt][Hh][Uu][Rr][Ss][Dd][Aa][Yy]$" | string & =~"^[Ff][Rr][Ii][Dd][Aa][Yy]$" | string & =~"^[Ss][Aa][Tt][Uu][Rr][Dd][Aa][Yy]$" | string & =~"^[Ss][Uu][Nn][Dd][Aa][Yy]$"
	// The time, in 24-hour format, and use only numbers separated by a colon, HH:MM or HH:MM:SS. Example: 13:05.
When writing YAML this may need to be quoted to prevent a timestamp being read and converted to a number of minutes or seconds.

	TimeOfDay: string & =~"^[0-9]{1,2}:[0-9]{2}(:[0-9]{2})?$"
	// The time zone, UTC by default, in either the Country/City format, or the UTC offset format.
	TimeZone: string
}

#TagsEntry: {
	Key: string
	Value: string
}

#User: {
	ConsoleAccess?: bool
	Groups?: [...string & =~"^[A-Za-z0-9._~-]{2,100}$"]
	Password: string & =~"^[^,:=]+$" & strings.MinRunes(12)
	ReplicationUser?: bool
	Username: string & =~"^[A-Za-z0-9_.~-]{2,100}$"
}
