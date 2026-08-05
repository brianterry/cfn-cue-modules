package queueenvironment

import "strings"

#Properties: {
	FarmId: string & =~"^farm-[0-9a-f]{32}$"
	Priority: int & >=0 & <=10000
	QueueId: string & =~"^queue-[0-9a-f]{32}$"
	Template: string & strings.MinRunes(1) & strings.MaxRunes(15000)
	TemplateType: #EnvironmentTemplateType
}

#EnvironmentTemplateType: "JSON" | "YAML"
