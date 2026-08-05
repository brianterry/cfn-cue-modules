package influxdbinstance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Status of the InfluxDB Instance.
	Status: "CREATING" | "AVAILABLE" | "DELETING" | "MODIFYING" | "MAINTENANCE" | "UPDATING" | "UPDATING_DEPLOYMENT_TYPE" | "UPDATING_INSTANCE_TYPE" | "REBOOTING" | "REBOOT_FAILED" | "DELETED" | "FAILED"
	// The Amazon Resource Name (ARN) that is associated with the InfluxDB instance.
	Arn: string & =~"^arn:aws[a-z\\-]*:timestream\\-influxdb:[a-z0-9\\-]+:[0-9]{12}:(db\\-instance)/[a-zA-Z0-9]{3,64}$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// The service generated unique identifier for InfluxDB instance.
	Id: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	// The Availability Zone (AZ) where the InfluxDB instance is created.
	AvailabilityZone: string
	// The connection endpoint for the InfluxDB instance.
	Endpoint: string
	// The Secondary Availability Zone (AZ) where the InfluxDB instance is created, if DeploymentType is set as WITH_MULTIAZ_STANDBY.
	SecondaryAvailabilityZone: string
	// The Auth parameters secret Amazon Resource name (ARN) that is associated with the InfluxDB instance.
	InfluxAuthParametersSecretArn: string & =~"^arn:[a-z]*:secretsmanager:[a-z\\-0-9]*:[0-9]*:secret:[a-zA-Z0-9\\-]*"
	// The timestamp of the next scheduled maintenance event.
	NextMaintenanceTime: string
}
