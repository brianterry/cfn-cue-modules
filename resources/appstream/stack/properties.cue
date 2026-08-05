package stack

#Properties: {
	// The list of virtual private cloud (VPC) interface endpoint objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.
	AccessEndpoints?: [...#AccessEndpoint]
	// The configuration for agent access on the stack. If specified, agent access is enabled for the stack.
	AgentAccessConfig?: #AgentAccessConfig
	// The persistent application settings for users of the stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.
	ApplicationSettings?: #ApplicationSettings
	// The stack attributes to delete.
	AttributesToDelete?: [...string]
	// The content redirection settings for the stack. These settings control URL redirection between the streaming session and the local device.
	ContentRedirection?: #ContentRedirection
	// This parameter has been deprecated. Deletes the storage connectors currently enabled for the stack.
	DeleteStorageConnectors?: bool
	// The description to display.
	Description?: string
	// The stack name to display.
	DisplayName?: string
	// The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
	EmbedHostDomains?: [...string]
	// The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.
	FeedbackURL?: string
	// The name of the stack.
	Name?: string
	// The URL that users are redirected to after their streaming session ends.
	RedirectURL?: string
	// The streaming protocol that you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.
	StreamingExperienceSettings?: #StreamingExperienceSettings
	// An array of key-value pairs.
	Tags?: [...#Tag]
	// The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.
	UserSettings?: [...#UserSetting]
}

#AccessEndpoint: {
	// The type of interface endpoint.
	EndpointType: string
	// The identifier (ID) of the VPC in which the interface endpoint is used.
	VpceId: string
}

#AgentAccessConfig: {
	// The Amazon Resource Name (ARN) of the Amazon S3 bucket where agent screenshots are stored. Required when ScreenshotsUploadEnabled is true.
	S3BucketArn?: string
	// The image format for agent screen captures.
	ScreenImageFormat: string
	// The screen resolution for the agent streaming environment.
	ScreenResolution: string
	// Indicates whether screenshot uploads to Amazon S3 are enabled for agent sessions.
	ScreenshotsUploadEnabled?: bool
	// The list of agent access settings that define permissions for each agent action. You must specify at least one setting.
	Settings: [...#AgentAccessSetting]
	// The user control mode for agent sessions. This setting determines how users can interact with agent sessions. Valid values are VIEW_ONLY, VIEW_STOP, and DISABLED.
	UserControlMode?: string
}

#AgentAccessSetting: {
	// The agent action to configure. Valid values are COMPUTER_VISION, COMPUTER_INPUT, and FORWARD_MCP_TOOLS. COMPUTER_VISION allows agents to take screenshots of the desktop. COMPUTER_INPUT allows agents to click, type, and scroll on the desktop and requires COMPUTER_VISION to also be enabled. FORWARD_MCP_TOOLS allows agents to interact with applications and the desktop operating system through direct MCP calls rather than using computer use tools. Forwards MCP tools configured on the WorkSpaces application session to the agent.
	AgentAction: string
	// Whether the agent action is enabled or disabled.
	Permission: string
}

#ApplicationSettings: {
	// Enables or disables persistent application settings for users during their streaming sessions.
	Enabled: bool
	// The path prefix for the S3 bucket where users' persistent application settings are stored. You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack.
	SettingsGroup?: string
}

#ContentRedirection: {
	// The URL redirection configuration from the streaming session host to the client.
	HostToClient?: #UrlRedirectionConfig
}

#StorageConnector: {
	// The type of storage connector.
	ConnectorType: string
	// The names of the domains for the account.
	Domains?: [...string]
	// The ARN of the storage connector.
	ResourceIdentifier?: string
}

#StreamingExperienceSettings: {
	// The preferred protocol that you want to use while streaming your application.
	PreferredProtocol?: string
}

#Tag: {
	// The key of the tag.
	Key: string
	// The value of the tag.
	Value: string
}

#UrlRedirectionConfig: {
	// The URLs that are allowed for redirection.
	AllowedUrls?: [...string]
	// The URLs that are denied for redirection.
	DeniedUrls?: [...string]
	// Specifies whether URL redirection is enabled or disabled.
	Enabled: bool
}

#UserSetting: {
	// The action that is enabled or disabled.
	Action: string
	// Specifies the number of characters that can be copied by end users from the local device to the remote session, and to the local device from the remote session. This can be specified only for the CLIPBOARD_COPY_FROM_LOCAL_DEVICE and CLIPBOARD_COPY_TO_LOCAL_DEVICE actions. This defaults to 20,971,520 (20 MB) when unspecified and the permission is ENABLED. This can't be specified when the permission is DISABLED. The value can be between 1 and 20,971,520 (20 MB).
	MaximumLength?: int
	// Indicates whether the action is enabled or disabled.
	Permission: string
}
