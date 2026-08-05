package daemontaskdefinition

#Properties: {
	// A list of container definitions in JSON format that describe the containers that make up the daemon task.
	ContainerDefinitions?: [...#DaemonContainerDefinition]
	// The number of CPU units used by the daemon task.
	Cpu?: string
	// The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent permission to make Amazon Web Services API calls on your behalf.
	ExecutionRoleArn?: string
	// The name of a family that this daemon task definition is registered to.
	Family?: string
	// The IPC namespace mode for the daemon. The valid values are ``none`` and ``shared``. The default is ``none``.
 If ``none`` is specified or no value is provided, the daemon runs with its own IPC namespace, isolated from other tasks. If ``shared`` is specified, the daemon joins the host IPC namespace, making it accessible to non-daemon tasks that use ``ipcMode: "host"`` or other daemons that use ``ipcMode: "shared"``.
	IpcMode?: string
	// The amount of memory (in MiB) used by the daemon task.
	Memory?: string
	// The PID namespace mode for the daemon. The valid values are ``none`` and ``shared``. The default is ``none``.
 If ``none`` is specified or no value is provided, the daemon runs with its own PID namespace, isolated from other tasks. If ``shared`` is specified, the daemon joins the host PID namespace, making it accessible to non-daemon tasks that use ``pidMode: "host"`` or other daemons that use ``pidMode: "shared"``.
	PidMode?: string
	Tags?: [...#Tag]
	// The short name or full Amazon Resource Name (ARN) of the IAM role that grants containers in the daemon task permission to call Amazon Web Services APIs on your behalf.
	TaskRoleArn?: string
	// The list of data volume definitions for the daemon task.
	Volumes?: [...#Volume]
}

#ContainerDependency: {
	// The dependency condition of the container. The following are the available conditions and their behavior:
  +  ``START`` - This condition emulates the behavior of links and volumes today. It validates that a dependent container is started before permitting other containers to start.
  +  ``COMPLETE`` - This condition validates that a dependent container runs to completion (exits) before permitting other containers to start. This can be useful for nonessential containers that run a script and then exit. This condition can't be set on an essential container.
  +  ``SUCCESS`` - This condition is the same as ``COMPLETE``, but it also requires that the container exits with a ``zero`` status. This condition can't be set on an essential container.
  +  ``HEALTHY`` - This condition validates that the dependent container passes its Docker health check before permitting other containers to start. This requires that the dependent container has health checks configured. This condition is confirmed only at task startup.
	Condition?: string
	// The name of a container.
	ContainerName?: string
}

#DaemonContainerDefinition: {
	// The command that's passed to the container.
	Command?: [...string]
	// The number of ``cpu`` units reserved for the container.
	Cpu?: int
	// The dependencies defined for container startup and shutdown. A container can contain multiple dependencies on other containers in a task definition.
	DependsOn?: [...#ContainerDependency]
	// The entry point that's passed to the container.
	EntryPoint?: [...string]
	// The environment variables to pass to a container.
	Environment?: [...#KeyValuePair]
	// A list of files containing the environment variables to pass to a container.
	EnvironmentFiles?: [...#EnvironmentFile]
	// If the ``essential`` parameter of a container is marked as ``true``, and that container fails or stops for any reason, all other containers that are part of the task are stopped.
	Essential?: bool
	// The FireLens configuration for the container. This is used to specify and configure a log router for container logs.
	FirelensConfiguration?: #FirelensConfiguration
	// The container health check command and associated configuration parameters for the container.
	HealthCheck?: #HealthCheck
	// The image used to start the container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with either ``repository-url/image:tag`` or ``repository-url/image@digest``.
	Image: string
	// When this parameter is ``true``, you can deploy containerized applications that require ``stdin`` or a ``tty`` to be allocated.
	Interactive?: bool
	// Linux-specific modifications that are applied to the container configuration, such as Linux kernel capabilities.
	LinuxParameters?: #LinuxParameters
	// The log configuration specification for the container.
	LogConfiguration?: #LogConfiguration
	// The amount (in MiB) of memory to present to the container. If the container attempts to exceed the memory specified here, the container is killed.
	Memory?: int
	// The soft limit (in MiB) of memory to reserve for the container.
	MemoryReservation?: int
	// The mount points for data volumes in your container.
	MountPoints?: [...#MountPoint]
	// The name of the container. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed.
	Name: string
	// When this parameter is true, the container is given elevated privileges on the host container instance (similar to the ``root`` user).
	Privileged?: bool
	// When this parameter is ``true``, a TTY is allocated.
	PseudoTerminal?: bool
	// When this parameter is true, the container is given read-only access to its root file system.
	ReadonlyRootFilesystem?: bool
	// The private repository authentication credentials to use.
	RepositoryCredentials?: #RepositoryCredentials
	// The restart policy for the container. When you set up a restart policy, Amazon ECS can restart the container without needing to replace the task.
	RestartPolicy?: #RestartPolicy
	// The secrets to pass to the container.
	Secrets?: [...#Secret]
	// Time duration (in seconds) to wait before giving up on resolving dependencies for a container.
	StartTimeout?: int
	// Time duration (in seconds) to wait before the container is forcefully killed if it doesn't exit normally on its own.
	StopTimeout?: int
	// A list of namespaced kernel parameters to set in the container.
	SystemControls?: [...#SystemControl]
	// A list of ``ulimits`` to set in the container.
	Ulimits?: [...#Ulimit]
	// The user to use inside the container.
	User?: string
	// The working directory to run commands inside the container in.
	WorkingDirectory?: string
}

#Device: {
	// The path inside the container at which to expose the host device.
	ContainerPath?: string
	// The path for the device on the host container instance.
	HostPath?: string
	// The explicit permissions to provide to the container for the device. By default, the container has permissions for ``read``, ``write``, and ``mknod`` for the device.
	Permissions?: [...string]
}

#EnvironmentFile: {
	// The file type to use. Environment files are objects in Amazon S3. The only supported value is ``s3``.
	Type?: string
	// The Amazon Resource Name (ARN) of the Amazon S3 object containing the environment variable file.
	Value?: string
}

#FirelensConfiguration: {
	// The options to use when configuring the log router. This field is optional and can be used to specify a custom configuration file or to add additional metadata, such as the task, task definition, cluster, and container instance details to the log event. If specified, the syntax to use is ``"options":{"enable-ecs-log-metadata":"true|false","config-file-type:"s3|file","config-file-value":"arn:aws:s3:::mybucket/fluent.conf|filepath"}``. For more information, see [Creating a task definition that uses a FireLens configuration](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html#firelens-taskdef) in the *Amazon Elastic Container Service Developer Guide*.
  Tasks hosted on FARGATElong only support the ``file`` configuration file type.
	Options?: {...}
	// The log router to use. The valid values are ``fluentd`` or ``fluentbit``.
	Type?: string
}

#HealthCheck: {
	// A string array representing the command that the container runs to determine if it is healthy. The string array must start with ``CMD`` to run the command arguments directly, or ``CMD-SHELL`` to run the command with the container's default shell. 
  When you use the AWS Management Console JSON panel, the CLIlong, or the APIs, enclose the list of commands in double quotes and brackets.
  ``[ "CMD-SHELL", "curl -f http://localhost/ || exit 1" ]`` 
 You don't include the double quotes and brackets when you use the AWS Management Console.
  ``CMD-SHELL, curl -f http://localhost/ || exit 1`` 
 An exit code of 0 indicates success, and non-zero exit code indicates failure. For more information, see ``HealthCheck`` in the docker container create command.
	Command?: [...string]
	// The time period in seconds between each health check execution. You may specify between 5 and 300 seconds. The default value is 30 seconds. This value applies only when you specify a ``command``.
	Interval?: int
	// The number of times to retry a failed health check before the container is considered unhealthy. You may specify between 1 and 10 retries. The default value is 3. This value applies only when you specify a ``command``.
	Retries?: int
	// The optional grace period to provide containers time to bootstrap before failed health checks count towards the maximum number of retries. You can specify between 0 and 300 seconds. By default, the ``startPeriod`` is off. This value applies only when you specify a ``command``. 
  If a health check succeeds within the ``startPeriod``, then the container is considered healthy and any subsequent failures count toward the maximum number of retries.
	StartPeriod?: int
	// The time period in seconds to wait for a health check to succeed before it is considered a failure. You may specify between 2 and 60 seconds. The default value is 5. This value applies only when you specify a ``command``.
	Timeout?: int
}

#HostVolumeProperties: {
	// When the ``host`` parameter is used, specify a ``sourcePath`` to declare the path on the host container instance that's presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the ``host`` parameter contains a ``sourcePath`` file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the ``sourcePath`` value doesn't exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported.
 If you're using the Fargate launch type, the ``sourcePath`` parameter is not supported.
	SourcePath?: string
}

#KernelCapabilities: {
	// The Linux capabilities for the container that have been added to the default configuration provided by Docker. This parameter maps to ``CapAdd`` in the docker container create command and the ``--cap-add`` option to docker run.
  Tasks launched on FARGATElong only support adding the ``SYS_PTRACE`` kernel capability.
  Valid values: ``"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" | "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" | "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" | "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" | "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" | "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"``
	Add?: [...string]
	// The Linux capabilities for the container that have been removed from the default configuration provided by Docker. This parameter maps to ``CapDrop`` in the docker container create command and the ``--cap-drop`` option to docker run.
 Valid values: ``"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" | "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" | "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" | "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" | "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" | "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"``
	Drop?: [...string]
}

#KeyValuePair: {
	// The name of the key-value pair. For environment variables, this is the name of the environment variable.
	Name?: string
	// The value of the key-value pair. For environment variables, this is the value of the environment variable.
	Value?: string
}

#LinuxParameters: {
	// The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.
  For tasks that use the Fargate launch type, ``capabilities`` is supported for all platform versions but the ``add`` parameter is only supported if using platform version 1.4.0 or later.
	Capabilities?: #KernelCapabilities
	// Any host devices to expose to the container. This parameter maps to ``Devices`` in the docker container create command and the ``--device`` option to docker run.
  If you're using tasks that use the Fargate launch type, the ``devices`` parameter isn't supported.
	Devices?: [...#Device]
	// Run an ``init`` process inside the container that forwards signals and reaps processes. This parameter maps to the ``--init`` option to docker run. This parameter requires version 1.25 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: ``sudo docker version --format '{{.Server.APIVersion}}'``
	InitProcessEnabled?: bool
	// The container path, mount options, and size (in MiB) of the tmpfs mount. This parameter maps to the ``--tmpfs`` option to docker run.
	Tmpfs?: [...#Tmpfs]
}

#LogConfiguration: {
	// The log driver to use for the container.
 For tasks on FARGATElong, the supported log drivers are ``awslogs``, ``splunk``, and ``awsfirelens``.
 For tasks hosted on Amazon EC2 instances, the supported log drivers are ``awslogs``, ``fluentd``, ``gelf``, ``json-file``, ``journald``, ``syslog``, ``splunk``, and ``awsfirelens``.
 For more information about using the ``awslogs`` log driver, see [Send Amazon ECS logs to CloudWatch](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html) in the *Amazon Elastic Container Service Developer Guide*.
 For more information about using the ``awsfirelens`` log driver, see [Send Amazon ECS logs to an service or Partner](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html).
  If you have a custom driver that isn't listed, you can fork the Amazon ECS container agent project that's [available on GitHub](https://docs.aws.amazon.com/https://github.com/aws/amazon-ecs-agent) and customize it to work with that driver. We encourage you to submit pull requests for changes that you would like to have included. However, we don't currently provide support for running modified copies of this software.
	LogDriver: string
	// The configuration options to send to the log driver.
 The options you can specify depend on the log driver. Some of the options you can specify when you use the ``awslogs`` log driver to route logs to Amazon CloudWatch include the following:
  + awslogs-create-group Required: No Specify whether you want the log group to be created automatically. If this option isn't specified, it defaults to false. Your IAM policy must include the logs:CreateLogGroup permission before you attempt to use awslogs-create-group. + awslogs-region Required: Yes Specify the Region that the awslogs log driver is to send your Docker logs to. You can choose to send all of your logs from clusters in different Regions to a single region in CloudWatch Logs. This is so that they're all visible in one location. Otherwise, you can separate them by Region for more granularity. Make sure that the specified log group exists in the Region that you specify with this option. + awslogs-group Required: Yes Make sure to specify a log group that the awslogs log driver sends its log streams to. + awslogs-stream-prefix Required: Yes, when using Fargate.Optional when using EC2. Use the awslogs-stream-prefix option to associate a log stream with the specified prefix, the container name, and the ID of the Amazon ECS task that the container belongs to. If you specify a prefix with this option, then the log stream takes the format prefix-name/container-name/ecs-task-id. If you don't specify a prefix with this option, then the log stream is named after the container ID that's assigned by the Docker daemon on the container instance. Because it's difficult to trace logs back to the container that sent them with just the Docker container ID (which is only available on the container instance), we recommend that you specify a prefix with this option. For Amazon ECS services, you can use the service name as the prefix. Doing so, you can trace log streams to the service that the container belongs to, the name of the container that sent them, and the ID of the task that the container belongs to. You must specify a stream-prefix for your logs to have your logs appear in the Log pane when using the Amazon ECS console. + awslogs-datetime-format Required: No This option defines a multiline start pattern in Python strftime format. A log message consists of a line that matches the pattern and any following lines that don’t match the pattern. The matched line is the delimiter between log messages. One example of a use case for using this format is for parsing output such as a stack dump, which might otherwise be logged in multiple entries. The correct pattern allows it to be captured in a single entry. For more information, see awslogs-datetime-format. You cannot configure both the awslogs-datetime-format and awslogs-multiline-pattern options. Multiline logging performs regular expression parsing and matching of all log messages. This might have a negative impact on logging performance. + awslogs-multiline-pattern Required: No This option defines a multiline start pattern that uses a regular expression. A log message consists of a line that matches the pattern and any following lines that don’t match the pattern. The matched line is the delimiter between log messages. For more information, see awslogs-multiline-pattern. This option is ignored if awslogs-datetime-format is also configured. You cannot configure both the awslogs-datetime-format and awslogs-multiline-pattern options. Multiline logging performs regular expression parsing and matching of all log messages. This might have a negative impact on logging performance. 
 The following options apply to all supported log drivers.
  + mode Required: No Valid values: non-blocking | blocking This option defines the delivery mode of log messages from the container to the log driver specified using logDriver. The delivery mode you choose affects application availability when the flow of logs from container is interrupted. If you use the blocking mode and the flow of logs is interrupted, calls from container code to write to the stdout and stderr streams will block. The logging thread of the application will block as a result. This may cause the application to become unresponsive and lead to container healthcheck failure. If you use the non-blocking mode, the container's logs are instead stored in an in-memory intermediate buffer configured with the max-buffer-size option. This prevents the application from becoming unresponsive when logs cannot be sent. We recommend using this mode if you want to ensure service availability and are okay with some log loss. For more information, see Preventing log loss with non-blocking mode in the awslogs container log driver. You can set a default mode for all containers in a specific Region by using the defaultLogDriverMode account setting. If you don't specify the mode option or configure the account setting, Amazon ECS will default to the non-blocking mode. For more information about the account setting, see Default log driver mode in the Amazon Elastic Container Service Developer Guide. On June 25, 2025, Amazon ECS changed the default log driver mode from blocking to non-blocking to prioritize task availability over logging. To continue using the blocking mode after this change, do one of the following: Set the mode option in your container definition's logConfiguration as blocking. Set the defaultLogDriverMode account setting to blocking. + max-buffer-size Required: No Default value: 10m When non-blocking mode is used, the max-buffer-size log option controls the size of the buffer that's used for intermediate message storage. Make sure to specify an adequate buffer size based on your application. When the buffer fills up, further logs cannot be stored. Logs that cannot be stored are lost. 
 To route logs using the ``splunk`` log router, you need to specify a ``splunk-token`` and a ``splunk-url``.
 When you use the ``awsfirelens`` log router to route logs to an AWS Service or AWS Partner Network destination for log storage and analytics, you can set the ``log-driver-buffer-limit`` option to limit the number of events that are buffered in memory, before being sent to the log router container. It can help to resolve potential log loss issue because high throughput might result in memory running out for the buffer inside of Docker.
 Other options you can specify when using ``awsfirelens`` to route logs depend on the destination. When you export logs to Amazon Data Firehose, you can specify the AWS Region with ``region`` and a name for the log stream with ``delivery_stream``.
 When you export logs to Amazon Kinesis Data Streams, you can specify an AWS Region with ``region`` and a data stream name with ``stream``.
  When you export logs to Amazon OpenSearch Service, you can specify options like ``Name``, ``Host`` (OpenSearch Service endpoint without protocol), ``Port``, ``Index``, ``Type``, ``Aws_auth``, ``Aws_region``, ``Suppress_Type_Name``, and ``tls``. For more information, see [Under the hood: FireLens for Amazon ECS Tasks](https://docs.aws.amazon.com/containers/under-the-hood-firelens-for-amazon-ecs-tasks/).
 When you export logs to Amazon S3, you can specify the bucket using the ``bucket`` option. You can also specify ``region``, ``total_file_size``, ``upload_timeout``, and ``use_put_object`` as options.
 This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: ``sudo docker version --format '{{.Server.APIVersion}}'``
	Options?: {...}
	// The secrets to pass to the log configuration. For more information, see [Specifying sensitive data](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html) in the *Amazon Elastic Container Service Developer Guide*.
	SecretOptions?: [...#Secret]
}

#MountPoint: {
	// The path on the container to mount the host volume at.
	ContainerPath?: string
	// If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
	ReadOnly?: bool
	// The name of the volume to mount. Must be a volume name referenced in the ``name`` parameter of task definition ``volume``.
	SourceVolume?: string
}

#RepositoryCredentials: {
	// The Amazon Resource Name (ARN) of the secret containing the private repository credentials.
  When you use the Amazon ECS API, CLI, or AWS SDK, if the secret exists in the same Region as the task that you're launching then you can use either the full ARN or the name of the secret. When you use the AWS Management Console, you must specify the full ARN of the secret.
	CredentialsParameter?: string
}

#RestartPolicy: {
	Enabled?: bool
	IgnoredExitCodes?: [...int]
	RestartAttemptPeriod?: int
}

#Secret: {
	// The name of the secret.
	Name: string
	// The secret to expose to the container. The supported values are either the full ARN of the ASMlong secret or the full ARN of the parameter in the SSM Parameter Store.
 For information about the require IAMlong permissions, see [Required IAM permissions for Amazon ECS secrets](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data-secrets.html#secrets-iam) (for Secrets Manager) or [Required IAM permissions for Amazon ECS secrets](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data-parameters.html) (for Systems Manager Parameter store) in the *Amazon Elastic Container Service Developer Guide*.
  If the SSM Parameter Store parameter exists in the same Region as the task you're launching, then you can use either the full ARN or name of the parameter. If the parameter exists in a different Region, then the full ARN must be specified.
	ValueFrom: string
}

#SystemControl: {
	// The namespaced kernel parameter to set a ``value`` for.
	Namespace?: string
	// The namespaced kernel parameter to set a ``value`` for.
 Valid IPC namespace values: ``"kernel.msgmax" | "kernel.msgmnb" | "kernel.msgmni" | "kernel.sem" | "kernel.shmall" | "kernel.shmmax" | "kernel.shmmni" | "kernel.shm_rmid_forced"``, and ``Sysctls`` that start with ``"fs.mqueue.*"``
 Valid network namespace values: ``Sysctls`` that start with ``"net.*"``. Only namespaced ``Sysctls`` that exist within the container starting with "net.* are accepted.
 All of these values are supported by Fargate.
	Value?: string
}

#Tag: {
	// One part of a key-value pair that make up a tag. A ``key`` is a general label that acts like a category for more specific tag values.
	Key?: string
	// The optional part of a key-value pair that make up a tag. A ``value`` acts as a descriptor within a tag category (key).
	Value?: string
}

#Tmpfs: {
	// The absolute file path where the tmpfs volume is to be mounted.
	ContainerPath?: string
	// The list of tmpfs volume mount options.
 Valid values: ``"defaults" | "ro" | "rw" | "suid" | "nosuid" | "dev" | "nodev" | "exec" | "noexec" | "sync" | "async" | "dirsync" | "remount" | "mand" | "nomand" | "atime" | "noatime" | "diratime" | "nodiratime" | "bind" | "rbind" | "unbindable" | "runbindable" | "private" | "rprivate" | "shared" | "rshared" | "slave" | "rslave" | "relatime" | "norelatime" | "strictatime" | "nostrictatime" | "mode" | "uid" | "gid" | "nr_inodes" | "nr_blocks" | "mpol"``
	MountOptions?: [...string]
	// The maximum size (in MiB) of the tmpfs volume.
	Size: int
}

#Ulimit: {
	// The hard limit for the ``ulimit`` type. The value can be specified in bytes, seconds, or as a count, depending on the ``type`` of the ``ulimit``.
	HardLimit: int
	// The ``type`` of the ``ulimit``.
	Name: string
	// The soft limit for the ``ulimit`` type. The value can be specified in bytes, seconds, or as a count, depending on the ``type`` of the ``ulimit``.
	SoftLimit: int
}

#Volume: {
	// This parameter is specified when you use bind mount host volumes. The contents of the ``host`` parameter determine whether your bind mount host volume persists on the host container instance and where it's stored. If the ``host`` parameter is empty, then the Docker daemon assigns a host path for your data volume. However, the data isn't guaranteed to persist after the containers that are associated with it stop running.
 Windows containers can mount whole directories on the same drive as ``$env:ProgramData``. Windows containers can't mount directories on a different drive, and mount point can't be across drives. For example, you can mount ``C:\my\path:C:\my\path`` and ``D:\:D:\``, but not ``D:\my\path:C:\my\path`` or ``D:\:C:\my\path``.
	Host?: #HostVolumeProperties
	// The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed.
 When using a volume configured at launch, the ``name`` is required and must also be specified as the volume name in the ``ServiceVolumeConfiguration`` or ``TaskVolumeConfiguration`` parameter when creating your service or standalone task.
 For all other types of volumes, this name is referenced in the ``sourceVolume`` parameter of the ``mountPoints`` object in the container definition.
 When a volume is using the ``efsVolumeConfiguration``, the name is required.
 When a volume is using the ``s3filesVolumeConfiguration``, the name is required.
	Name?: string
}
