package application

import "strings"

#Properties: {
	// If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing
	AttachMissingPermission?: bool
	// If set to true, application will be configured with recommended monitoring configuration.
	AutoConfigurationEnabled?: bool
	// Indicates whether Application Insights can listen to CloudWatch events for the application resources.
	CWEMonitorEnabled?: bool
	// The monitoring settings of the components.
	ComponentMonitoringSettings?: [...#ComponentMonitoringSetting]
	// The custom grouped components.
	CustomComponents?: [...#CustomComponent]
	// The grouping type of the application
	GroupingType?: "ACCOUNT_BASED"
	// The log pattern sets.
	LogPatternSets?: [...#LogPatternSet]
	// When set to true, creates opsItems for any problems detected on an application.
	OpsCenterEnabled?: bool
	// The SNS topic provided to Application Insights that is associated to the created opsItem.
	OpsItemSNSTopicArn?: string & =~"^arn:aws(-[\\w]+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$" & strings.MinRunes(20) & strings.MaxRunes(300)
	// The name of the resource group.
	ResourceGroupName: string & =~"[a-zA-Z0-9.-_]*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Application Insights sends notifications to this SNS topic whenever there is a problem update in the associated application.
	SNSNotificationArn?: string & =~"^arn:aws(-[\\w]+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$" & strings.MinRunes(20) & strings.MaxRunes(300)
	// The tags of Application Insights application.
	Tags?: [...#Tag]
}

#Alarm: {
	// The name of the CloudWatch alarm to be monitored for the component.
	AlarmName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Indicates the degree of outage when the alarm goes off.
	Severity?: "HIGH" | "MEDIUM" | "LOW"
}

#AlarmMetric: {
	// The name of the metric to be monitored for the component.
	AlarmMetricName: string
}

#ComponentConfiguration: {
	// The configuration settings
	ConfigurationDetails?: #ConfigurationDetails
	// Sub component configurations of the component.
	SubComponentTypeConfigurations?: [...#SubComponentTypeConfiguration]
}

#ComponentMonitoringSetting: {
	// The ARN of the compnonent.
	ComponentARN?: string & =~"^arn:aws(-[\\w]+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$" & strings.MinRunes(20) & strings.MaxRunes(300)
	// The component monitoring configuration mode.
	ComponentConfigurationMode: "DEFAULT" | "DEFAULT_WITH_OVERWRITE" | "CUSTOM"
	// The name of the component.
	ComponentName?: string & =~"^[\\d\\w\\-_.+]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The monitoring configuration of the component.
	CustomComponentConfiguration?: #ComponentConfiguration
	// The overwritten settings on default component monitoring configuration.
	DefaultOverwriteComponentConfiguration?: #ComponentConfiguration
	// The tier of the application component.
	Tier: string & =~"^[A-Z][A-Z_]*$"
}

#ConfigurationDetails: {
	// A list of metrics to monitor for the component.
	AlarmMetrics?: [...#AlarmMetric]
	// A list of alarms to monitor for the component.
	Alarms?: [...#Alarm]
	// The HA cluster Prometheus Exporter settings.
	HAClusterPrometheusExporter?: #HAClusterPrometheusExporter
	// The HANA DB Prometheus Exporter settings.
	HANAPrometheusExporter?: #HANAPrometheusExporter
	// The JMX Prometheus Exporter settings.
	JMXPrometheusExporter?: #JMXPrometheusExporter
	// A list of logs to monitor for the component.
	Logs?: [...#Log]
	// The NetWeaver Prometheus Exporter settings.
	NetWeaverPrometheusExporter?: #NetWeaverPrometheusExporter
	// A list of processes to monitor for the component. Only Windows EC2 instances can have a processes section.
	Processes?: [...#Process]
	// The SQL Prometheus Exporter settings.
	SQLServerPrometheusExporter?: #SQLServerPrometheusExporter
	// A list of Windows Events to log.
	WindowsEvents?: [...#WindowsEvent]
}

#CustomComponent: {
	// The name of the component.
	ComponentName: string & =~"^[\\d\\w\\-_.+]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The list of resource ARNs that belong to the component.
	ResourceList: [...string & =~"^arn:aws(-[\\w]+)*:[\\w\\d-]+:([\\w\\d-]*)?:[\\w\\d_-]*([:/].+)*$" & strings.MinRunes(20) & strings.MaxRunes(300)]
}

#HAClusterPrometheusExporter: {
	// Prometheus exporter port.
	PrometheusPort?: string
}

#HANAPrometheusExporter: {
	// A flag which indicates agreeing to install SAP HANA DB client.
	AgreeToInstallHANADBClient: bool
	// The HANA DB port.
	HANAPort: string
	// HANA DB SID.
	HANASID: string
	// The secret name which manages the HANA DB credentials e.g. {
  "username": "<>",
  "password": "<>"
}.
	HANASecretName: string
	// Prometheus exporter port.
	PrometheusPort?: string
}

#JMXPrometheusExporter: {
	// Java agent host port
	HostPort?: string
	// JMX service URL.
	JMXURL?: string
	// Prometheus exporter port.
	PrometheusPort?: string
}

#Log: {
	// The type of encoding of the logs to be monitored.
	Encoding?: "utf-8" | "utf-16" | "ascii"
	// The CloudWatch log group name to be associated to the monitored log.
	LogGroupName?: string & =~"[\\.\\-_/#A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The path of the logs to be monitored.
	LogPath?: string & =~"^([a-zA-Z]:\\\\[\\\\\\S|*\\S]?.*|/[^\"']*)$" & strings.MinRunes(1) & strings.MaxRunes(260)
	// The log type decides the log patterns against which Application Insights analyzes the log.
	LogType: string & =~"^[A-Z][A-Z_]*$"
	// The name of the log pattern set.
	PatternSet?: string & =~"[a-zA-Z0-9.-_]*" & strings.MinRunes(1) & strings.MaxRunes(30)
}

#LogPattern: {
	// The log pattern.
	Pattern: string & strings.MinRunes(1) & strings.MaxRunes(50)
	// The name of the log pattern.
	PatternName: string & =~"[a-zA-Z0-9.-_]*" & strings.MinRunes(1) & strings.MaxRunes(50)
	// Rank of the log pattern.
	Rank: int
}

#LogPatternSet: {
	// The log patterns of a set.
	LogPatterns: [...#LogPattern]
	// The name of the log pattern set.
	PatternSetName: string & =~"[a-zA-Z0-9.-_]*" & strings.MinRunes(1) & strings.MaxRunes(30)
}

#NetWeaverPrometheusExporter: {
	// SAP instance numbers for ASCS, ERS, and App Servers.
	InstanceNumbers: [...string & =~"\\b([0-9]|[0-9][0-9])\\b" & strings.MinRunes(1) & strings.MaxRunes(2)]
	// Prometheus exporter port.
	PrometheusPort?: string
	// SAP NetWeaver SID.
	SAPSID: string
}

#Process: {
	// A list of metrics to monitor for the component.
	AlarmMetrics: [...#AlarmMetric]
	// The name of the process to be monitored for the component.
	ProcessName: string & =~"^[a-zA-Z0-9_,-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#SQLServerPrometheusExporter: {
	// Prometheus exporter port.
	PrometheusPort: string
	// Secret name which managers SQL exporter connection. e.g. {"data_source_name": "sqlserver://<USERNAME>:<PASSWORD>@localhost:1433"}
	SQLSecretName: string
}

#SubComponentConfigurationDetails: {
	// A list of metrics to monitor for the component.
	AlarmMetrics?: [...#AlarmMetric]
	// A list of logs to monitor for the component.
	Logs?: [...#Log]
	// A list of processes to monitor for the component. Only Windows EC2 instances can have a processes section.
	Processes?: [...#Process]
	// A list of Windows Events to log.
	WindowsEvents?: [...#WindowsEvent]
}

#SubComponentTypeConfiguration: {
	// The configuration settings of sub components.
	SubComponentConfigurationDetails: #SubComponentConfigurationDetails
	// The sub component type.
	SubComponentType: "AWS::EC2::Instance" | "AWS::EC2::Volume"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WindowsEvent: {
	// The levels of event to log. 
	EventLevels: [...#EventLevel]
	// The type of Windows Events to log.
	EventName: string & =~"^[a-zA-Z0-9_ \\\\/-]+$" & strings.MinRunes(1) & strings.MaxRunes(260)
	// The CloudWatch log group name to be associated to the monitored log.
	LogGroupName: string & =~"[\\.\\-_/#A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The name of the log pattern set.
	PatternSet?: string & =~"[a-zA-Z0-9.-_]*" & strings.MinRunes(1) & strings.MaxRunes(30)
}
