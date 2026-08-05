package servicesetting

import "strings"

#Properties: {
	// The ID of the service setting, such as /ssm/parameter-store/high-throughput-enabled.
	SettingId: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The value of the service setting.
	SettingValue: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}
