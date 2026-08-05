package appimageconfig

import "strings"

#Properties: {
	// The Name of the AppImageConfig.
	AppImageConfigName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The CodeEditorAppImageConfig.
	CodeEditorAppImageConfig?: #CodeEditorAppImageConfig
	// The JupyterLabAppImageConfig.
	JupyterLabAppImageConfig?: #JupyterLabAppImageConfig
	// The KernelGatewayImageConfig.
	KernelGatewayImageConfig?: #KernelGatewayImageConfig
	// A list of tags to apply to the AppImageConfig.
	Tags?: [...#Tag]
}

#CodeEditorAppImageConfig: {
	// The container configuration for a SageMaker image.
	ContainerConfig?: #ContainerConfig
}

#ContainerConfig: {
	// A list of arguments to apply to the container.
	ContainerArguments?: [...#CustomImageContainerArguments]
	// The custom entry point to use on container.
	ContainerEntrypoint?: [...#CustomImageContainerEntrypoint]
	// A list of variables to apply to the custom container.
	ContainerEnvironmentVariables?: [...#CustomImageContainerEnvironmentVariable]
}

#CustomImageContainerEnvironmentVariable: {
	Key: string & =~"^(?!\\s*$).+" & strings.MinRunes(1) & strings.MaxRunes(256)
	Value: string & =~"^(?!\\s*$).+" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#FileSystemConfig: {
	// The default POSIX group ID (GID). If not specified, defaults to 100.
	DefaultGid?: int & >=0 & <=65535
	// The default POSIX user ID (UID). If not specified, defaults to 1000.
	DefaultUid?: int & >=0 & <=65535
	// The path within the image to mount the user's EFS home directory. The directory should be empty. If not specified, defaults to /home/sagemaker-user.
	MountPath?: string & =~"^/.*" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#JupyterLabAppImageConfig: {
	// The container configuration for a SageMaker image.
	ContainerConfig?: #ContainerConfig
}

#KernelGatewayImageConfig: {
	// The Amazon Elastic File System (EFS) storage configuration for a SageMaker image.
	FileSystemConfig?: #FileSystemConfig
	// The specification of the Jupyter kernels in the image.
	KernelSpecs: [...#KernelSpec]
}

#KernelSpec: {
	// The display name of the kernel.
	DisplayName?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The name of the kernel.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
