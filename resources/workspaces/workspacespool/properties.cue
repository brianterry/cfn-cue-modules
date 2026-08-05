package workspacespool

import "strings"

#Properties: {
	ApplicationSettings?: #ApplicationSettings
	BundleId: string & =~"^wsb-[0-9a-z]{8,63}$"
	Capacity: #Capacity
	Description?: string & =~"^[a-zA-Z0-9_./() -]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	DirectoryId: string & =~"^wsd-[0-9a-z]{8,63}$" & strings.MinRunes(10) & strings.MaxRunes(65)
	PoolName: string & =~"^[A-Za-z0-9][A-Za-z0-9_.-]{0,63}$"
	RunningMode?: #RunningMode
	Tags?: [...#Tag]
	TimeoutSettings?: #TimeoutSettings
}

#ApplicationSettings: {
	SettingsGroup?: string & =~"^[A-Za-z0-9_./()!*'-]+$" & strings.MaxRunes(100)
	Status: #ApplicationSettingsStatus
}

#ApplicationSettingsStatus: "DISABLED" | "ENABLED"

#Capacity: {
	DesiredUserSessions: int & >=0
}

#RunningMode: "ALWAYS_ON" | "AUTO_STOP"

#Tag: {
	Key: string
	Value: string
}

#TimeoutSettings: {
	DisconnectTimeoutInSeconds?: int & >=60 & <=36000
	IdleDisconnectTimeoutInSeconds?: int & >=0 & <=36000
	MaxUserDurationInSeconds?: int & >=600 & <=432000
}
