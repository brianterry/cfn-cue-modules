package containergroupdefinition

import "strings"

#Properties: {
	// The scope of the container group
	ContainerGroupType?: "GAME_SERVER" | "PER_INSTANCE"
	GameServerContainerDefinition?: #GameServerContainerDefinition
	// A descriptive label for the container group definition.
	Name: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The operating system of the container group
	OperatingSystem: "AMAZON_LINUX_2023"
	// A specific ContainerGroupDefinition version to be updated
	SourceVersionNumber?: int & >=0
	// A collection of support container definitions that define the containers in this group.
	SupportContainerDefinitions?: [...#SupportContainerDefinition]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The total memory limit of container groups following this definition in MiB
	TotalMemoryLimitMebibytes: int & >=4 & <=1024000
	// The total amount of virtual CPUs on the container group definition
	TotalVcpuLimit: number & >=0.125 & <=10
	// The description of this version
	VersionDescription?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#ContainerDependency: {
	// The type of dependency.
	Condition: "START" | "COMPLETE" | "SUCCESS" | "HEALTHY"
	// A descriptive label for the container definition. The container being defined depends on this container's condition.
	ContainerName: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#ContainerEnvironment: {
	// The environment variable name.
	Name: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The environment variable value.
	Value: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#ContainerHealthCheck: {
	// A string array representing the command that the container runs to determine if it is healthy.
	Command: [...string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	// How often (in seconds) the health is checked.
	Interval?: int & >=60 & <=300
	// How many times the process manager will retry the command after a timeout. (The first run of the command does not count as a retry.)
	Retries?: int & >=5 & <=10
	// The optional grace period (in seconds) to give a container time to boostrap before teh health check is declared failed.
	StartPeriod?: int & >=0 & <=300
	// How many seconds the process manager allows the command to run before canceling it.
	Timeout?: int & >=30 & <=60
}

#ContainerMountPoint: {
	// The access permissions for the mounted path.
	AccessLevel?: "READ_ONLY" | "READ_AND_WRITE"
	// The path inside the container where the mount is accessible.
	ContainerPath?: string & =~"^(\\/+[^\\/]+\\/*)+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The path on the host that will be mounted in the container.
	InstancePath: string & =~"^\\/[\\s\\S]*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#ContainerPortRange: {
	// A starting value for the range of allowed port numbers.
	FromPort: int & >=1 & <=60000
	// Defines the protocol of these ports.
	Protocol: "TCP" | "UDP"
	// An ending value for the range of allowed port numbers. Port numbers are end-inclusive. This value must be equal to or greater than FromPort.
	ToPort: int & >=1 & <=60000
}

#GameServerContainerDefinition: {
	// A descriptive label for the container definition. Container definition names must be unique with a container group definition.
	ContainerName: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A list of container dependencies that determines when this container starts up and shuts down. For container groups with multiple containers, dependencies let you define a startup/shutdown sequence across the containers.
	DependsOn?: [...#ContainerDependency]
	// The environment variables to pass to a container.
	EnvironmentOverride?: [...#ContainerEnvironment]
	// Specifies the image URI of this container.
	ImageUri: string & =~"^[a-zA-Z0-9-_\\.@\\/:]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// Linux-specific modifications applied to the default Docker container configuration, such as Linux capabilities.
	LinuxCapabilities?: #LinuxCapabilities
	// A list of mount point configurations to be used in a container.
	MountPoints?: [...#ContainerMountPoint]
	// Defines the ports on the container.
	PortConfiguration?: #PortConfiguration
	// The digest of the container image.
	ResolvedImageDigest?: string & =~"^sha256:[a-fA-F0-9]{64}$"
	// The version of the server SDK used in this container group
	ServerSdkVersion: string & =~"^\\d+\\.\\d+\\.\\d+$" & strings.MaxRunes(128)
}

#LinuxCapabilities: {
	// The list of Linux capabilities to add to the container's default configuration.
	Include?: [..."AUDIT_CONTROL" | "AUDIT_WRITE" | "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" | "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" | "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" | "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" | "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"]
}

#PortConfiguration: {
	// Specifies one or more ranges of ports on a container.
	ContainerPortRanges: [...#ContainerPortRange]
}

#SupportContainerDefinition: {
	// A descriptive label for the container definition.
	ContainerName: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A list of container dependencies that determines when this container starts up and shuts down. For container groups with multiple containers, dependencies let you define a startup/shutdown sequence across the containers.
	DependsOn?: [...#ContainerDependency]
	// The environment variables to pass to a container.
	EnvironmentOverride?: [...#ContainerEnvironment]
	// Specifies if the container is essential. If an essential container fails a health check, then all containers in the container group will be restarted. You must specify exactly 1 essential container in a container group.
	Essential?: bool
	// Specifies how the health of the containers will be checked.
	HealthCheck?: #ContainerHealthCheck
	// Specifies the image URI of this container.
	ImageUri: string & =~"^[a-zA-Z0-9-_\\.@\\/:]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// Linux-specific modifications applied to the default Docker container configuration, such as Linux capabilities.
	LinuxCapabilities?: #LinuxCapabilities
	// The total memory limit of container groups following this definition in MiB
	MemoryHardLimitMebibytes?: int & >=4 & <=1024000
	// A list of mount point configurations to be used in a container.
	MountPoints?: [...#ContainerMountPoint]
	// Defines the ports on the container.
	PortConfiguration?: #PortConfiguration
	// The digest of the container image.
	ResolvedImageDigest?: string & =~"^sha256:[a-fA-F0-9]{64}$"
	// The number of virtual CPUs to give to the support group
	Vcpu?: number & >=0.125 & <=10
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length.
	Key: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length.
	Value: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
