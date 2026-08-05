package channel

#Properties: {
	AnywhereSettings?: #AnywhereSettings
	CdiInputSpecification?: #CdiInputSpecification
	ChannelClass?: string
	ChannelEngineVersion?: #ChannelEngineVersionRequest
	ChannelSecurityGroups?: [...string]
	Destinations?: [...#OutputDestination]
	DryRun?: bool
	EncoderSettings?: #EncoderSettings
	InferenceSettings?: #InferenceSettings
	InputAttachments?: [...#InputAttachment]
	InputSpecification?: #InputSpecification
	LinkedChannelSettings?: #LinkedChannelSettings
	LogLevel?: string
	Maintenance?: #MaintenanceCreateSettings
	Name?: string
	RoleArn?: string
	Tags?: {...}
	Vpc?: #VpcOutputSettings
}

#AacSettings: {
	Bitrate?: number
	CodingMode?: string
	InputType?: string
	Profile?: string
	RateControlMode?: string
	RawFormat?: string
	SampleRate?: number
	Spec?: string
	VbrQuality?: string
}

#Ac3Settings: {
	AttenuationControl?: string
	Bitrate?: number
	BitstreamMode?: string
	CodingMode?: string
	Dialnorm?: int
	DrcProfile?: string
	LfeFilter?: string
	MetadataControl?: string
}

#AdditionalDestinations: {
	Destination?: #OutputLocationRef
}

#AncillarySourceSettings: {
	SourceAncillaryChannelNumber?: int
}

#AnywhereSettings: {
	ChannelPlacementGroupId?: string
	ClusterId?: string
}

#ArchiveCdnSettings: {
	ArchiveS3Settings?: #ArchiveS3Settings
}

#ArchiveContainerSettings: {
	M2tsSettings?: #M2tsSettings
	RawSettings?: #RawSettings
}

#ArchiveGroupSettings: {
	ArchiveCdnSettings?: #ArchiveCdnSettings
	Destination?: #OutputLocationRef
	RolloverInterval?: int
}

#ArchiveOutputSettings: {
	ContainerSettings?: #ArchiveContainerSettings
	Extension?: string
	NameModifier?: string
}

#ArchiveS3Settings: {
	CannedAcl?: string
}

#AudioChannelMapping: {
	InputChannelLevels?: [...#InputChannelLevel]
	OutputChannel?: int
}

#AudioCodecSettings: {
	AacSettings?: #AacSettings
	Ac3Settings?: #Ac3Settings
	Eac3AtmosSettings?: #Eac3AtmosSettings
	Eac3Settings?: #Eac3Settings
	Mp2Settings?: #Mp2Settings
	PassThroughSettings?: #PassThroughSettings
	WavSettings?: #WavSettings
}

#AudioDescription: {
	AudioDashRoles?: [...string]
	AudioNormalizationSettings?: #AudioNormalizationSettings
	AudioSelectorName?: string
	AudioType?: string
	AudioTypeControl?: string
	AudioWatermarkingSettings?: #AudioWatermarkSettings
	CodecSettings?: #AudioCodecSettings
	DvbDashAccessibility?: string
	LanguageCode?: string
	LanguageCodeControl?: string
	Name?: string
	RemixSettings?: #RemixSettings
	StreamName?: string
}

#AudioDolbyEDecode: {
	ProgramSelection?: string
}

#AudioFeedInput: {
	AudioSelectorName?: string
	FeedInput?: string
}

#AudioHlsRenditionSelection: {
	GroupId?: string
	Name?: string
}

#AudioLanguageSelection: {
	LanguageCode?: string
	LanguageSelectionPolicy?: string
}

#AudioNormalizationSettings: {
	Algorithm?: string
	AlgorithmControl?: string
	PeakCalculation?: string
	PeakLimiterThreshold?: number
	TargetLkfs?: number
}

#AudioOnlyHlsSettings: {
	AudioGroupId?: string
	AudioOnlyImage?: #InputLocation
	AudioTrackType?: string
	SegmentType?: string
}

#AudioPid: {
	DolbyEDecode?: #AudioDolbyEDecode
	Pid?: int
	PremixSettings?: #AudioPreMixerSettings
}

#AudioPidSelection: {
	Pid?: int
	Pids?: [...#AudioPid]
}

#AudioPreMixerSettings: {
	AudioNormalizationSettings?: #AudioNormalizationSettings
	Channels?: int
	GainDb?: number
	RemixSettings?: #RemixSettings
}

#AudioSelector: {
	Name?: string
	SelectorSettings?: #AudioSelectorSettings
}

#AudioSelectorSettings: {
	AudioHlsRenditionSelection?: #AudioHlsRenditionSelection
	AudioLanguageSelection?: #AudioLanguageSelection
	AudioPidSelection?: #AudioPidSelection
	AudioTrackSelection?: #AudioTrackSelection
}

#AudioSilenceFailoverSettings: {
	AudioSelectorName?: string
	AudioSilenceThresholdMsec?: int
}

#AudioTrack: {
	PremixSettings?: #AudioPreMixerSettings
	Track?: int
}

#AudioTrackSelection: {
	DolbyEDecode?: #AudioDolbyEDecode
	Tracks?: [...#AudioTrack]
}

#AudioWatermarkSettings: {
	NielsenWatermarksSettings?: #NielsenWatermarksSettings
}

#AutomaticInputFailoverSettings: {
	ErrorClearTimeMsec?: int
	FailoverConditions?: [...#FailoverCondition]
	InputPreference?: string
	SecondaryInputId?: string
}

#Av1ColorSpaceSettings: {
	ColorSpacePassthroughSettings?: #ColorSpacePassthroughSettings
	Hdr10Settings?: #Hdr10Settings
	Hlg2020Settings?: #Hlg2020Settings
	Rec601Settings?: #Rec601Settings
	Rec709Settings?: #Rec709Settings
}

#Av1Settings: {
	AfdSignaling?: string
	BitDepth?: string
	Bitrate?: int
	BufSize?: int
	ColorSpaceSettings?: #Av1ColorSpaceSettings
	FixedAfd?: string
	FramerateDenominator?: int
	FramerateNumerator?: int
	GopSize?: number
	GopSizeUnits?: string
	Level?: string
	LookAheadRateControl?: string
	MaxBitrate?: int
	MinBitrate?: int
	MinIInterval?: int
	ParDenominator?: int
	ParNumerator?: int
	QvbrQualityLevel?: int
	RateControlMode?: string
	SceneChangeDetect?: string
	SpatialAq?: string
	TemporalAq?: string
	TimecodeBurninSettings?: #TimecodeBurninSettings
	TimecodeInsertion?: string
}

#AvailBlanking: {
	AvailBlankingImage?: #InputLocation
	State?: string
}

#AvailConfiguration: {
	AvailSettings?: #AvailSettings
	Scte35SegmentationScope?: string
}

#AvailSettings: {
	Esam?: #Esam
	Scte35SpliceInsert?: #Scte35SpliceInsert
	Scte35TimeSignalApos?: #Scte35TimeSignalApos
}

#BandwidthReductionFilterSettings: {
	PostFilterSharpening?: string
	Strength?: string
}

#BlackoutSlate: {
	BlackoutSlateImage?: #InputLocation
	NetworkEndBlackout?: string
	NetworkEndBlackoutImage?: #InputLocation
	NetworkId?: string
	State?: string
}

#BurnInDestinationSettings: {
	Alignment?: string
	BackgroundColor?: string
	BackgroundOpacity?: int
	Font?: #InputLocation
	FontColor?: string
	FontOpacity?: int
	FontResolution?: int
	FontSize?: string
	OutlineColor?: string
	OutlineSize?: int
	ShadowColor?: string
	ShadowOpacity?: int
	ShadowXOffset?: int
	ShadowYOffset?: int
	SubtitleRows?: string
	TeletextGridControl?: string
	XPosition?: int
	YPosition?: int
}

#CaptionDescription: {
	Accessibility?: string
	CaptionDashRoles?: [...string]
	CaptionSelectorName?: string
	DestinationSettings?: #CaptionDestinationSettings
	DvbDashAccessibility?: string
	LanguageCode?: string
	LanguageDescription?: string
	Name?: string
}

#CaptionDestinationSettings: {
	AribDestinationSettings?: #AribDestinationSettings
	BurnInDestinationSettings?: #BurnInDestinationSettings
	DvbSubDestinationSettings?: #DvbSubDestinationSettings
	EbuTtDDestinationSettings?: #EbuTtDDestinationSettings
	EmbeddedDestinationSettings?: #EmbeddedDestinationSettings
	EmbeddedPlusScte20DestinationSettings?: #EmbeddedPlusScte20DestinationSettings
	RtmpCaptionInfoDestinationSettings?: #RtmpCaptionInfoDestinationSettings
	Scte20PlusEmbeddedDestinationSettings?: #Scte20PlusEmbeddedDestinationSettings
	Scte27DestinationSettings?: #Scte27DestinationSettings
	SmpteTtDestinationSettings?: #SmpteTtDestinationSettings
	TeletextDestinationSettings?: #TeletextDestinationSettings
	TtmlDestinationSettings?: #TtmlDestinationSettings
	WebvttDestinationSettings?: #WebvttDestinationSettings
}

#CaptionLanguageMapping: {
	CaptionChannel?: int
	LanguageCode?: string
	LanguageDescription?: string
}

#CaptionRectangle: {
	Height?: number
	LeftOffset?: number
	TopOffset?: number
	Width?: number
}

#CaptionSelector: {
	LanguageCode?: string
	Name?: string
	SelectorSettings?: #CaptionSelectorSettings
}

#CaptionSelectorSettings: {
	AncillarySourceSettings?: #AncillarySourceSettings
	AribSourceSettings?: #AribSourceSettings
	DvbSubSourceSettings?: #DvbSubSourceSettings
	EmbeddedSourceSettings?: #EmbeddedSourceSettings
	Scte20SourceSettings?: #Scte20SourceSettings
	Scte27SourceSettings?: #Scte27SourceSettings
	SmartSubtitleSourceSettings?: #SmartSubtitleSourceSettings
	TeletextSourceSettings?: #TeletextSourceSettings
}

#CdiInputSpecification: {
	Resolution?: string
}

#ChannelEngineVersionRequest: {
	Version?: string
}

#CmafIngestCaptionLanguageMapping: {
	CaptionChannel?: int
	LanguageCode?: string
}

#CmafIngestGroupSettings: {
	AdditionalDestinations?: [...#AdditionalDestinations]
	CaptionLanguageMappings?: [...#CmafIngestCaptionLanguageMapping]
	Destination?: #OutputLocationRef
	Id3Behavior?: string
	Id3NameModifier?: string
	KlvBehavior?: string
	KlvNameModifier?: string
	NielsenId3Behavior?: string
	NielsenId3NameModifier?: string
	Scte35NameModifier?: string
	Scte35Type?: string
	SegmentLength?: int
	SegmentLengthUnits?: string
	SendDelayMs?: int
	TimedMetadataId3Frame?: string
	TimedMetadataId3Period?: int
	TimedMetadataPassthrough?: string
}

#CmafIngestOutputSettings: {
	NameModifier?: string
}

#ColorCorrection: {
	InputColorSpace?: string
	OutputColorSpace?: string
	Uri?: string
}

#ColorCorrectionSettings: {
	GlobalColorCorrections?: [...#ColorCorrection]
}

#DisabledLockingSettings: {
	CustomEpoch?: string
}

#DvbNitSettings: {
	NetworkId?: int
	NetworkName?: string
	RepInterval?: int
}

#DvbSdtSettings: {
	OutputSdt?: string
	RepInterval?: int
	ServiceName?: string
	ServiceProviderName?: string
}

#DvbSubDestinationSettings: {
	Alignment?: string
	BackgroundColor?: string
	BackgroundOpacity?: int
	Font?: #InputLocation
	FontColor?: string
	FontOpacity?: int
	FontResolution?: int
	FontSize?: string
	OutlineColor?: string
	OutlineSize?: int
	ShadowColor?: string
	ShadowOpacity?: int
	ShadowXOffset?: int
	ShadowYOffset?: int
	SubtitleRows?: string
	TeletextGridControl?: string
	XPosition?: int
	YPosition?: int
}

#DvbSubSourceSettings: {
	OcrLanguage?: string
	Pid?: int
}

#DvbTdtSettings: {
	RepInterval?: int
}

#Eac3AtmosSettings: {
	Bitrate?: number
	CodingMode?: string
	Dialnorm?: int
	DrcLine?: string
	DrcRf?: string
	HeightTrim?: number
	SurroundTrim?: number
}

#Eac3Settings: {
	AttenuationControl?: string
	Bitrate?: number
	BitstreamMode?: string
	CodingMode?: string
	DcFilter?: string
	Dialnorm?: int
	DrcLine?: string
	DrcRf?: string
	LfeControl?: string
	LfeFilter?: string
	LoRoCenterMixLevel?: number
	LoRoSurroundMixLevel?: number
	LtRtCenterMixLevel?: number
	LtRtSurroundMixLevel?: number
	MetadataControl?: string
	PassthroughControl?: string
	PhaseControl?: string
	StereoDownmix?: string
	SurroundExMode?: string
	SurroundMode?: string
}

#EbuTtDDestinationSettings: {
	CopyrightHolder?: string
	DefaultFontSize?: int
	DefaultLineHeight?: int
	FillLineGap?: string
	FontFamily?: string
	StyleControl?: string
}

#EmbeddedSourceSettings: {
	Convert608To708?: string
	Scte20Detection?: string
	Source608ChannelNumber?: int
	Source608TrackNumber?: int
}

#EncoderSettings: {
	AudioDescriptions?: [...#AudioDescription]
	AvailBlanking?: #AvailBlanking
	AvailConfiguration?: #AvailConfiguration
	BlackoutSlate?: #BlackoutSlate
	CaptionDescriptions?: [...#CaptionDescription]
	ColorCorrectionSettings?: #ColorCorrectionSettings
	FeatureActivations?: #FeatureActivations
	GlobalConfiguration?: #GlobalConfiguration
	MotionGraphicsConfiguration?: #MotionGraphicsConfiguration
	NielsenConfiguration?: #NielsenConfiguration
	OutputGroups?: [...#OutputGroup]
	ThumbnailConfiguration?: #ThumbnailConfiguration
	TimecodeConfig?: #TimecodeConfig
	VideoDescriptions?: [...#VideoDescription]
}

#EpochLockingSettings: {
	CustomEpoch?: string
	JamSyncTime?: string
}

#Esam: {
	AcquisitionPointId?: string
	AdAvailOffset?: int
	PasswordParam?: string
	PoisEndpoint?: string
	Username?: string
	ZoneIdentity?: string
}

#FailoverCondition: {
	FailoverConditionSettings?: #FailoverConditionSettings
}

#FailoverConditionSettings: {
	AudioSilenceSettings?: #AudioSilenceFailoverSettings
	InputLossSettings?: #InputLossFailoverSettings
	VideoBlackSettings?: #VideoBlackFailoverSettings
}

#FeatureActivations: {
	InputPrepareScheduleActions?: string
	OutputStaticImageOverlayScheduleActions?: string
}

#FecOutputSettings: {
	ColumnDepth?: int
	IncludeFec?: string
	RowLength?: int
}

#Fmp4HlsSettings: {
	AudioRenditionSets?: string
	NielsenId3Behavior?: string
	TimedMetadataBehavior?: string
}

#FollowerChannelSettings: {
	LinkedChannelType?: string
	PrimaryChannelArn?: string
}

#FrameCaptureCdnSettings: {
	FrameCaptureS3Settings?: #FrameCaptureS3Settings
}

#FrameCaptureGroupSettings: {
	Destination?: #OutputLocationRef
	FrameCaptureCdnSettings?: #FrameCaptureCdnSettings
}

#FrameCaptureOutputSettings: {
	NameModifier?: string
}

#FrameCaptureS3Settings: {
	CannedAcl?: string
}

#FrameCaptureSettings: {
	CaptureInterval?: int
	CaptureIntervalUnits?: string
	TimecodeBurninSettings?: #TimecodeBurninSettings
}

#GlobalConfiguration: {
	InitialAudioGain?: int
	InputEndAction?: string
	InputLossBehavior?: #InputLossBehavior
	OutputLockingMode?: string
	OutputLockingSettings?: #OutputLockingSettings
	OutputTimingSource?: string
	SupportLowFramerateInputs?: string
}

#H264ColorSpaceSettings: {
	ColorSpacePassthroughSettings?: #ColorSpacePassthroughSettings
	Rec601Settings?: #Rec601Settings
	Rec709Settings?: #Rec709Settings
}

#H264FilterSettings: {
	BandwidthReductionFilterSettings?: #BandwidthReductionFilterSettings
	TemporalFilterSettings?: #TemporalFilterSettings
}

#H264Settings: {
	AdaptiveQuantization?: string
	AfdSignaling?: string
	Bitrate?: int
	BufFillPct?: int
	BufSize?: int
	ColorMetadata?: string
	ColorSpaceSettings?: #H264ColorSpaceSettings
	EntropyEncoding?: string
	FilterSettings?: #H264FilterSettings
	FixedAfd?: string
	FlickerAq?: string
	ForceFieldPictures?: string
	FramerateControl?: string
	FramerateDenominator?: int
	FramerateNumerator?: int
	GopBReference?: string
	GopClosedCadence?: int
	GopNumBFrames?: int
	GopSize?: number
	GopSizeUnits?: string
	Level?: string
	LookAheadRateControl?: string
	MaxBitrate?: int
	MinBitrate?: int
	MinIInterval?: int
	MinQp?: int
	NumRefFrames?: int
	ParControl?: string
	ParDenominator?: int
	ParNumerator?: int
	Profile?: string
	QualityLevel?: string
	QvbrQualityLevel?: int
	RateControlMode?: string
	ScanType?: string
	SceneChangeDetect?: string
	Slices?: int
	Softness?: int
	SpatialAq?: string
	SubgopLength?: string
	Syntax?: string
	TemporalAq?: string
	TimecodeBurninSettings?: #TimecodeBurninSettings
	TimecodeInsertion?: string
}

#H265ColorSpaceSettings: {
	ColorSpacePassthroughSettings?: #ColorSpacePassthroughSettings
	DolbyVision81Settings?: #DolbyVision81Settings
	Hdr10Settings?: #Hdr10Settings
	Hlg2020Settings?: #Hlg2020Settings
	Rec601Settings?: #Rec601Settings
	Rec709Settings?: #Rec709Settings
}

#H265FilterSettings: {
	BandwidthReductionFilterSettings?: #BandwidthReductionFilterSettings
	TemporalFilterSettings?: #TemporalFilterSettings
}

#H265Settings: {
	AdaptiveQuantization?: string
	AfdSignaling?: string
	AlternativeTransferFunction?: string
	Bitrate?: int
	BufSize?: int
	ColorMetadata?: string
	ColorSpaceSettings?: #H265ColorSpaceSettings
	Deblocking?: string
	FilterSettings?: #H265FilterSettings
	FixedAfd?: string
	FlickerAq?: string
	FramerateDenominator?: int
	FramerateNumerator?: int
	GopBReference?: string
	GopClosedCadence?: int
	GopNumBFrames?: int
	GopSize?: number
	GopSizeUnits?: string
	Level?: string
	LookAheadRateControl?: string
	MaxBitrate?: int
	MinBitrate?: int
	MinIInterval?: int
	MinQp?: int
	MvOverPictureBoundaries?: string
	MvTemporalPredictor?: string
	ParDenominator?: int
	ParNumerator?: int
	Profile?: string
	QvbrQualityLevel?: int
	RateControlMode?: string
	ScanType?: string
	SceneChangeDetect?: string
	Slices?: int
	SubgopLength?: string
	Tier?: string
	TileHeight?: int
	TilePadding?: string
	TileWidth?: int
	TimecodeBurninSettings?: #TimecodeBurninSettings
	TimecodeInsertion?: string
	TreeblockSize?: string
}

#Hdr10Settings: {
	MaxCll?: int
	MaxFall?: int
}

#HlsAkamaiSettings: {
	ConnectionRetryInterval?: int
	FilecacheDuration?: int
	HttpTransferMode?: string
	NumRetries?: int
	RestartDelay?: int
	Salt?: string
	Token?: string
}

#HlsBasicPutSettings: {
	ConnectionRetryInterval?: int
	FilecacheDuration?: int
	NumRetries?: int
	RestartDelay?: int
}

#HlsCdnSettings: {
	HlsAkamaiSettings?: #HlsAkamaiSettings
	HlsBasicPutSettings?: #HlsBasicPutSettings
	HlsMediaStoreSettings?: #HlsMediaStoreSettings
	HlsS3Settings?: #HlsS3Settings
	HlsWebdavSettings?: #HlsWebdavSettings
}

#HlsGroupSettings: {
	AdMarkers?: [...string]
	BaseUrlContent?: string
	BaseUrlContent1?: string
	BaseUrlManifest?: string
	BaseUrlManifest1?: string
	CaptionLanguageMappings?: [...#CaptionLanguageMapping]
	CaptionLanguageSetting?: string
	ClientCache?: string
	CodecSpecification?: string
	ConstantIv?: string
	Destination?: #OutputLocationRef
	DirectoryStructure?: string
	DiscontinuityTags?: string
	EncryptionType?: string
	HlsCdnSettings?: #HlsCdnSettings
	HlsId3SegmentTagging?: string
	IFrameOnlyPlaylists?: string
	IncompleteSegmentBehavior?: string
	IndexNSegments?: int
	InputLossAction?: string
	IvInManifest?: string
	IvSource?: string
	KeepSegments?: int
	KeyFormat?: string
	KeyFormatVersions?: string
	KeyProviderSettings?: #KeyProviderSettings
	ManifestCompression?: string
	ManifestDurationFormat?: string
	MinSegmentLength?: int
	Mode?: string
	OutputSelection?: string
	ProgramDateTime?: string
	ProgramDateTimeClock?: string
	ProgramDateTimePeriod?: int
	RedundantManifest?: string
	SegmentLength?: int
	SegmentationMode?: string
	SegmentsPerSubdirectory?: int
	StreamInfResolution?: string
	TimedMetadataId3Frame?: string
	TimedMetadataId3Period?: int
	TimestampDeltaMilliseconds?: int
	TsFileMode?: string
}

#HlsInputSettings: {
	Bandwidth?: int
	BufferSegments?: int
	Retries?: int
	RetryInterval?: int
	Scte35Source?: string
}

#HlsMediaStoreSettings: {
	ConnectionRetryInterval?: int
	FilecacheDuration?: int
	MediaStoreStorageClass?: string
	NumRetries?: int
	RestartDelay?: int
}

#HlsOutputSettings: {
	H265PackagingType?: string
	HlsSettings?: #HlsSettings
	NameModifier?: string
	SegmentModifier?: string
}

#HlsS3Settings: {
	CannedAcl?: string
}

#HlsSettings: {
	AudioOnlyHlsSettings?: #AudioOnlyHlsSettings
	Fmp4HlsSettings?: #Fmp4HlsSettings
	FrameCaptureHlsSettings?: #FrameCaptureHlsSettings
	StandardHlsSettings?: #StandardHlsSettings
}

#HlsWebdavSettings: {
	ConnectionRetryInterval?: int
	FilecacheDuration?: int
	HttpTransferMode?: string
	NumRetries?: int
	RestartDelay?: int
}

#InferenceSettings: {
	AudioFeedInputs?: [...#AudioFeedInput]
	FeedArn?: string
}

#InputAttachment: {
	AutomaticInputFailoverSettings?: #AutomaticInputFailoverSettings
	InputAttachmentName?: string
	InputId?: string
	InputSettings?: #InputSettings
	LogicalInterfaceNames?: [...string]
}

#InputChannelLevel: {
	Gain?: int
	InputChannel?: int
}

#InputLocation: {
	PasswordParam?: string
	Uri?: string
	Username?: string
}

#InputLossBehavior: {
	BlackFrameMsec?: int
	InputLossImageColor?: string
	InputLossImageSlate?: #InputLocation
	InputLossImageType?: string
	RepeatFrameMsec?: int
}

#InputLossFailoverSettings: {
	InputLossThresholdMsec?: int
}

#InputSettings: {
	AudioSelectors?: [...#AudioSelector]
	CaptionSelectors?: [...#CaptionSelector]
	DeblockFilter?: string
	DenoiseFilter?: string
	FilterStrength?: int
	InputFilter?: string
	NetworkInputSettings?: #NetworkInputSettings
	Scte35Pid?: int
	Smpte2038DataPreference?: string
	SourceEndBehavior?: string
	VideoSelector?: #VideoSelector
}

#InputSpecification: {
	Codec?: string
	MaximumBitrate?: string
	Resolution?: string
}

#KeyProviderSettings: {
	StaticKeySettings?: #StaticKeySettings
}

#LinkedChannelSettings: {
	FollowerChannelSettings?: #FollowerChannelSettings
	PrimaryChannelSettings?: #PrimaryChannelSettings
}

#M2tsSettings: {
	AbsentInputAudioBehavior?: string
	Arib?: string
	AribCaptionsPid?: string
	AribCaptionsPidControl?: string
	AudioBufferModel?: string
	AudioFramesPerPes?: int
	AudioPids?: string
	AudioStreamType?: string
	Bitrate?: int
	BufferModel?: string
	CcDescriptor?: string
	DvbNitSettings?: #DvbNitSettings
	DvbSdtSettings?: #DvbSdtSettings
	DvbSubPids?: string
	DvbTdtSettings?: #DvbTdtSettings
	DvbTeletextPid?: string
	Ebif?: string
	EbpAudioInterval?: string
	EbpLookaheadMs?: int
	EbpPlacement?: string
	EcmPid?: string
	EsRateInPes?: string
	EtvPlatformPid?: string
	EtvSignalPid?: string
	FragmentTime?: number
	Klv?: string
	KlvDataPids?: string
	NielsenId3Behavior?: string
	NullPacketBitrate?: number
	PatInterval?: int
	PcrControl?: string
	PcrPeriod?: int
	PcrPid?: string
	PmtInterval?: int
	PmtPid?: string
	ProgramNum?: int
	RateMode?: string
	Scte27Pids?: string
	Scte35Control?: string
	Scte35Pid?: string
	Scte35PrerollPullupMilliseconds?: number
	SegmentationMarkers?: string
	SegmentationStyle?: string
	SegmentationTime?: number
	TimedMetadataBehavior?: string
	TimedMetadataPid?: string
	TransportStreamId?: int
	VideoPid?: string
}

#M3u8Settings: {
	AudioFramesPerPes?: int
	AudioPids?: string
	EcmPid?: string
	KlvBehavior?: string
	KlvDataPids?: string
	NielsenId3Behavior?: string
	PatInterval?: int
	PcrControl?: string
	PcrPeriod?: int
	PcrPid?: string
	PmtInterval?: int
	PmtPid?: string
	ProgramNum?: int
	Scte35Behavior?: string
	Scte35Pid?: string
	TimedMetadataBehavior?: string
	TimedMetadataPid?: string
	TransportStreamId?: int
	VideoPid?: string
}

#MaintenanceCreateSettings: {
	MaintenanceDay?: string
	MaintenanceStartTime?: string
}

#MediaConnectRouterContainerSettings: {
	M2tsSettings?: #M2tsSettings
}

#MediaConnectRouterGroupSettings: {
	AvailabilityZones?: [...string]
}

#MediaConnectRouterOutputConnectionMap: {
	Pipeline0?: string
	Pipeline1?: string
}

#MediaConnectRouterOutputDestinationSettings: {
	EncryptionType?: string
	SecretArn?: string
}

#MediaConnectRouterOutputSettings: {
	ConnectedRouterInputs?: #MediaConnectRouterOutputConnectionMap
	ContainerSettings?: #MediaConnectRouterContainerSettings
	Destination?: #OutputLocationRef
}

#MediaPackageAdditionalDestinations: {
	Destination?: #OutputLocationRef
}

#MediaPackageGroupSettings: {
	Destination?: #OutputLocationRef
	MediapackageV2GroupSettings?: #MediaPackageV2GroupSettings
}

#MediaPackageOutputDestinationSettings: {
	ChannelEndpointId?: string
	ChannelGroup?: string
	ChannelId?: string
	ChannelName?: string
	MediaPackageRegionName?: string
}

#MediaPackageOutputSettings: {
	MediaPackageV2DestinationSettings?: #MediaPackageV2DestinationSettings
}

#MediaPackageV2DestinationSettings: {
	AudioGroupId?: string
	AudioRenditionSets?: string
	HlsAutoSelect?: string
	HlsDefault?: string
}

#MediaPackageV2GroupSettings: {
	AdditionalDestinations?: [...#MediaPackageAdditionalDestinations]
	CaptionLanguageMappings?: [...#CaptionLanguageMapping]
	Id3Behavior?: string
	KlvBehavior?: string
	NielsenId3Behavior?: string
	Scte35Type?: string
	SegmentLength?: int
	SegmentLengthUnits?: string
	TimedMetadataId3Frame?: string
	TimedMetadataId3Period?: int
	TimedMetadataPassthrough?: string
}

#MotionGraphicsConfiguration: {
	MotionGraphicsInsertion?: string
	MotionGraphicsSettings?: #MotionGraphicsSettings
}

#MotionGraphicsSettings: {
	HtmlMotionGraphicsSettings?: #HtmlMotionGraphicsSettings
}

#Mp2Settings: {
	Bitrate?: number
	CodingMode?: string
	SampleRate?: number
}

#Mpeg2FilterSettings: {
	TemporalFilterSettings?: #TemporalFilterSettings
}

#Mpeg2Settings: {
	AdaptiveQuantization?: string
	AfdSignaling?: string
	ColorMetadata?: string
	ColorSpace?: string
	DisplayAspectRatio?: string
	FilterSettings?: #Mpeg2FilterSettings
	FixedAfd?: string
	FramerateDenominator?: int
	FramerateNumerator?: int
	GopClosedCadence?: int
	GopNumBFrames?: int
	GopSize?: number
	GopSizeUnits?: string
	ScanType?: string
	SubgopLength?: string
	TimecodeBurninSettings?: #TimecodeBurninSettings
	TimecodeInsertion?: string
}

#MsSmoothGroupSettings: {
	AcquisitionPointId?: string
	AudioOnlyTimecodeControl?: string
	CertificateMode?: string
	ConnectionRetryInterval?: int
	Destination?: #OutputLocationRef
	EventId?: string
	EventIdMode?: string
	EventStopBehavior?: string
	FilecacheDuration?: int
	FragmentLength?: int
	InputLossAction?: string
	NumRetries?: int
	RestartDelay?: int
	SegmentationMode?: string
	SendDelayMs?: int
	SparseTrackType?: string
	StreamManifestBehavior?: string
	TimestampOffset?: string
	TimestampOffsetMode?: string
}

#MsSmoothOutputSettings: {
	H265PackagingType?: string
	NameModifier?: string
}

#MulticastInputSettings: {
	SourceIpAddress?: string
}

#MultiplexContainerSettings: {
	MultiplexM2tsSettings?: #MultiplexM2tsSettings
}

#MultiplexM2tsSettings: {
	AbsentInputAudioBehavior?: string
	Arib?: string
	AudioBufferModel?: string
	AudioFramesPerPes?: int
	AudioStreamType?: string
	CcDescriptor?: string
	Ebif?: string
	EsRateInPes?: string
	Klv?: string
	NielsenId3Behavior?: string
	PcrControl?: string
	PcrPeriod?: int
	Scte35Control?: string
	Scte35PrerollPullupMilliseconds?: number
}

#MultiplexOutputSettings: {
	ContainerSettings?: #MultiplexContainerSettings
	Destination?: #OutputLocationRef
}

#MultiplexProgramChannelDestinationSettings: {
	MultiplexId?: string
	ProgramName?: string
}

#NetworkInputSettings: {
	HlsInputSettings?: #HlsInputSettings
	MulticastInputSettings?: #MulticastInputSettings
	ServerValidation?: string
}

#NielsenCBET: {
	CbetCheckDigitString?: string
	CbetStepaside?: string
	Csid?: string
}

#NielsenConfiguration: {
	DistributorId?: string
	NielsenPcmToId3Tagging?: string
}

#NielsenNaesIiNw: {
	CheckDigitString?: string
	Sid?: number
	Timezone?: string
}

#NielsenWatermarksSettings: {
	NielsenCbetSettings?: #NielsenCBET
	NielsenDistributionType?: string
	NielsenNaesIiNwSettings?: #NielsenNaesIiNw
}

#Output: {
	AudioDescriptionNames?: [...string]
	CaptionDescriptionNames?: [...string]
	OutputName?: string
	OutputSettings?: #OutputSettings
	VideoDescriptionName?: string
}

#OutputDestination: {
	Id?: string
	LogicalInterfaceNames?: [...string]
	MediaConnectRouterSettings?: [...#MediaConnectRouterOutputDestinationSettings]
	MediaPackageSettings?: [...#MediaPackageOutputDestinationSettings]
	MultiplexSettings?: #MultiplexProgramChannelDestinationSettings
	Settings?: [...#OutputDestinationSettings]
	SrtSettings?: [...#SrtOutputDestinationSettings]
}

#OutputDestinationSettings: {
	PasswordParam?: string
	StreamName?: string
	Url?: string
	Username?: string
}

#OutputGroup: {
	Name?: string
	OutputGroupSettings?: #OutputGroupSettings
	Outputs?: [...#Output]
}

#OutputGroupSettings: {
	ArchiveGroupSettings?: #ArchiveGroupSettings
	CmafIngestGroupSettings?: #CmafIngestGroupSettings
	FrameCaptureGroupSettings?: #FrameCaptureGroupSettings
	HlsGroupSettings?: #HlsGroupSettings
	MediaConnectRouterGroupSettings?: #MediaConnectRouterGroupSettings
	MediaPackageGroupSettings?: #MediaPackageGroupSettings
	MsSmoothGroupSettings?: #MsSmoothGroupSettings
	MultiplexGroupSettings?: #MultiplexGroupSettings
	RtmpGroupSettings?: #RtmpGroupSettings
	SrtGroupSettings?: #SrtGroupSettings
	UdpGroupSettings?: #UdpGroupSettings
}

#OutputLocationRef: {
	DestinationRefId?: string
}

#OutputLockingSettings: {
	DisabledLockingSettings?: #DisabledLockingSettings
	EpochLockingSettings?: #EpochLockingSettings
	PipelineLockingSettings?: #PipelineLockingSettings
}

#OutputSettings: {
	ArchiveOutputSettings?: #ArchiveOutputSettings
	CmafIngestOutputSettings?: #CmafIngestOutputSettings
	FrameCaptureOutputSettings?: #FrameCaptureOutputSettings
	HlsOutputSettings?: #HlsOutputSettings
	MediaConnectRouterOutputSettings?: #MediaConnectRouterOutputSettings
	MediaPackageOutputSettings?: #MediaPackageOutputSettings
	MsSmoothOutputSettings?: #MsSmoothOutputSettings
	MultiplexOutputSettings?: #MultiplexOutputSettings
	RtmpOutputSettings?: #RtmpOutputSettings
	SrtOutputSettings?: #SrtOutputSettings
	UdpOutputSettings?: #UdpOutputSettings
}

#PipelineLockingSettings: {
	CustomEpoch?: string
	PipelineLockingMethod?: string
}

#PrimaryChannelSettings: {
	LinkedChannelType?: string
}

#RemixSettings: {
	ChannelMappings?: [...#AudioChannelMapping]
	ChannelsIn?: int
	ChannelsOut?: int
}

#RtmpGroupSettings: {
	AdMarkers?: [...string]
	AuthenticationScheme?: string
	CacheFullBehavior?: string
	CacheLength?: int
	CaptionData?: string
	IncludeFillerNalUnits?: string
	InputLossAction?: string
	RestartDelay?: int
}

#RtmpOutputSettings: {
	CertificateMode?: string
	ConnectionRetryInterval?: int
	Destination?: #OutputLocationRef
	NumRetries?: int
}

#Scte20SourceSettings: {
	Convert608To708?: string
	Source608ChannelNumber?: int
}

#Scte27SourceSettings: {
	OcrLanguage?: string
	Pid?: int
}

#Scte35SpliceInsert: {
	AdAvailOffset?: int
	NoRegionalBlackoutFlag?: string
	WebDeliveryAllowedFlag?: string
}

#Scte35TimeSignalApos: {
	AdAvailOffset?: int
	NoRegionalBlackoutFlag?: string
	WebDeliveryAllowedFlag?: string
}

#SmartSubtitleSourceSettings: {
	CaptionSynchronizationMode?: string
	InferenceFeedOutput?: string
}

#SrtGroupSettings: {
	InputLossAction?: string
}

#SrtOutputDestinationSettings: {
	ConnectionMode?: string
	EncryptionPassphraseSecretArn?: string
	ListenerPort?: int
	StreamId?: string
	Url?: string
}

#SrtOutputSettings: {
	BufferMsec?: int
	ContainerSettings?: #UdpContainerSettings
	Destination?: #OutputLocationRef
	EncryptionType?: string
	Latency?: int
}

#StandardHlsSettings: {
	AudioRenditionSets?: string
	M3u8Settings?: #M3u8Settings
}

#StaticKeySettings: {
	KeyProviderServer?: #InputLocation
	StaticKeyValue?: string
}

#TeletextSourceSettings: {
	OutputRectangle?: #CaptionRectangle
	PageNumber?: string
}

#TemporalFilterSettings: {
	PostFilterSharpening?: string
	Strength?: string
}

#ThumbnailConfiguration: {
	State?: string
}

#TimecodeBurninSettings: {
	FontSize?: string
	Position?: string
	Prefix?: string
}

#TimecodeConfig: {
	Source?: string
	SyncThreshold?: int
}

#TtmlDestinationSettings: {
	StyleControl?: string
}

#UdpContainerSettings: {
	M2tsSettings?: #M2tsSettings
}

#UdpGroupSettings: {
	InputLossAction?: string
	TimedMetadataId3Frame?: string
	TimedMetadataId3Period?: int
}

#UdpOutputSettings: {
	BufferMsec?: int
	ContainerSettings?: #UdpContainerSettings
	Destination?: #OutputLocationRef
	FecOutputSettings?: #FecOutputSettings
}

#VideoBlackFailoverSettings: {
	BlackDetectThreshold?: number
	VideoBlackThresholdMsec?: int
}

#VideoCodecSettings: {
	Av1Settings?: #Av1Settings
	FrameCaptureSettings?: #FrameCaptureSettings
	H264Settings?: #H264Settings
	H265Settings?: #H265Settings
	Mpeg2Settings?: #Mpeg2Settings
}

#VideoDescription: {
	CodecSettings?: #VideoCodecSettings
	Height?: int
	Name?: string
	RespondToAfd?: string
	ScalingBehavior?: string
	Sharpness?: int
	Width?: int
}

#VideoSelector: {
	ColorSpace?: string
	ColorSpaceSettings?: #VideoSelectorColorSpaceSettings
	ColorSpaceUsage?: string
	SelectorSettings?: #VideoSelectorSettings
}

#VideoSelectorColorSpaceSettings: {
	Hdr10Settings?: #Hdr10Settings
}

#VideoSelectorPid: {
	Pid?: int
}

#VideoSelectorProgramId: {
	ProgramId?: int
}

#VideoSelectorSettings: {
	VideoSelectorPid?: #VideoSelectorPid
	VideoSelectorProgramId?: #VideoSelectorProgramId
}

#VpcOutputSettings: {
	PublicAddressAllocationIds?: [...string]
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}

#WavSettings: {
	BitDepth?: number
	CodingMode?: string
	SampleRate?: number
}

#WebvttDestinationSettings: {
	StyleControl?: string
}
