package sqlhastandbydetectedinstance

#Properties: {
	InstanceId: #InstanceId
	SqlServerCredentials?: #SqlServerCredentials
}

#HaStatus: "processing" | "active" | "standby" | "invalid"

#InstanceId: string & =~"^i-[0-9a-f]{8,17}$"

#LastUpdatedTime: string

#SqlServerCredentials: string & =~"^(?=.{20,2048}$)arn:aws[a-z-]*:secretsmanager:[a-z0-9-]+:\\d{12}:secret:[a-zA-Z0-9/_+=.@-]+$"

#SqlServerLicenseUsage: "full" | "waived"
