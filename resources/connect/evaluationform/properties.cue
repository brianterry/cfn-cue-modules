package evaluationform

import "strings"

#Properties: {
	// The automatic evaluation configuration of an evaluation form.
	AutoEvaluationConfiguration?: #AutoEvaluationConfiguration
	// The description of the evaluation form.
	// *Length Constraints*: Minimum length of 0. Maximum length of 1024.
	Description?: string & strings.MaxRunes(1024)
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// Items that are part of the evaluation form. The total number of sections and questions must not exceed 100 each. Questions must be contained in a section.
	// *Minimum size*: 1
	// *Maximum size*: 100
	Items: [...#EvaluationFormBaseItem]
	// Configuration for language settings of this evaluation form.
	LanguageConfiguration?: #EvaluationFormLanguageConfiguration
	// Configuration for evaluation review settings of this evaluation form.
	ReviewConfiguration?: #EvaluationReviewConfiguration
	// A scoring strategy of the evaluation form.
	ScoringStrategy?: #ScoringStrategy
	// The status of the evaluation form.
	// *Allowed values*: ``DRAFT`` | ``ACTIVE``
	Status: "DRAFT" | "ACTIVE"
	// The tags used to organize, track, or control access for this resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.
	Tags?: [...#Tag]
	// Configuration that specifies the target for this evaluation form.
	TargetConfiguration?: #EvaluationFormTargetConfiguration
	// A title of the evaluation form.
	Title: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#AutoEvaluationConfiguration: {
	Enabled?: bool
}

#AutomaticFailConfiguration: {
	// The referenceId of the target section for auto failure.
	TargetSection?: string & =~"^[a-zA-Z0-9._-]{1,40}$"
}

#EvaluationFormBaseItem: {
	// A subsection or inner section of an item.
	Section: #EvaluationFormSection
}

#EvaluationFormItem: {
	// The information of the question.
	Question?: #EvaluationFormQuestion
	// The information of the section.
	Section?: #EvaluationFormSection
}

#EvaluationFormItemEnablementCondition: {
	// Operands of the enablement condition.
	Operands: [...#EvaluationFormItemEnablementConditionOperand]
	// The operator to be used to be applied to operands if more than one provided.
	Operator?: "OR" | "AND"
}

#EvaluationFormItemEnablementConditionOperand: {
	// An expression of the enablement condition.
	Expression?: #EvaluationFormItemEnablementExpression
}

#EvaluationFormItemEnablementConfiguration: {
	// An enablement action that if condition is satisfied.
	Action: "DISABLE" | "ENABLE"
	// A condition for item enablement configuration.
	Condition: #EvaluationFormItemEnablementCondition
	// An enablement action that if condition is not satisfied.
	DefaultAction?: "DISABLE" | "ENABLE"
}

#EvaluationFormItemEnablementExpression: {
	// A comparator to be used against list of values.
	Comparator: "IN" | "NOT_IN" | "ALL_IN" | "EXACT"
	// A source item of enablement expression.
	Source: #EvaluationFormItemEnablementSource
	// A list of values from source item.
	Values: [...#EvaluationFormItemEnablementSourceValue]
}

#EvaluationFormItemEnablementSource: {
	// A referenceId of the source item.
	RefId?: #RefId
	// A type of source item.
	Type: "QUESTION_REF_ID"
}

#EvaluationFormItemEnablementSourceValue: {
	// A referenceId of the source value.
	RefId?: #RefId
	// A type of source item value.
	Type?: "OPTION_REF_ID"
}

#EvaluationFormLanguageConfiguration: {
	// The language for the evaluation form.
	FormLanguage?: "de-DE" | "en-US" | "es-ES" | "fr-FR" | "it-IT" | "pt-BR" | "ja-JP" | "ko-KR" | "zh-CN"
}

#EvaluationFormMultiSelectQuestionAutomation: {
	AnswerSource?: #EvaluationFormQuestionAutomationAnswerSource
	// Reference IDs of default options.
	DefaultOptionRefIds?: #ReferenceIdList
	// Automation options for the multi-select question.
	Options?: [...#EvaluationFormMultiSelectQuestionAutomationOption]
}

#EvaluationFormMultiSelectQuestionAutomationOption: {
	// Rule category configuration for this automation option.
	RuleCategory: #MultiSelectQuestionRuleCategoryAutomation
}

#EvaluationFormMultiSelectQuestionOption: {
	// The flag to mark the option as automatic fail. If an automatic fail answer is provided, the overall evaluation gets a score of 0.
	AutomaticFail?: bool
	AutomaticFailConfiguration?: #AutomaticFailConfiguration
	// The points configuration for point-based scoring.
	PointsConfiguration?: #QuestionOptionPointsConfiguration
	// Reference identifier for this option.
	RefId: #RefId
	// The score assigned to the answer option.
	Score?: #Score
	// Display text for this option.
	Text: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#EvaluationFormMultiSelectQuestionProperties: {
	// Automation configuration for this multi-select question.
	Automation?: #EvaluationFormMultiSelectQuestionAutomation
	// Display format for the multi-select question.
	DisplayAs?: "DROPDOWN" | "CHECKBOX"
	// Options available for this multi-select question.
	Options: [...#EvaluationFormMultiSelectQuestionOption]
}

#EvaluationFormNumericQuestionAutomation: {
	// A source of automation answer for numeric question.
	AnswerSource?: #EvaluationFormQuestionAutomationAnswerSource
	// The property value of the automation.
	PropertyValue?: #NumericQuestionPropertyValueAutomation
}

#EvaluationFormNumericQuestionOption: {
	// The flag to mark the option as automatic fail. If an automatic fail answer is provided, the overall evaluation gets a score of 0.
	AutomaticFail?: bool
	// A configuration for automatic fail.
	AutomaticFailConfiguration?: #AutomaticFailConfiguration
	// The maximum answer value of the range option.
	MaxValue: int
	// The minimum answer value of the range option.
	MinValue: int
	// The points configuration for point-based scoring.
	PointsConfiguration?: #QuestionOptionPointsConfiguration
	// The score assigned to answer values within the range option.
	// *Minimum*: 0
	// *Maximum*: 10
	Score?: #Score
}

#EvaluationFormNumericQuestionProperties: {
	// The automation properties of the numeric question.
	Automation?: #EvaluationFormNumericQuestionAutomation
	// The maximum answer value.
	MaxValue: int
	// The minimum answer value.
	MinValue: int
	// The scoring options of the numeric question.
	Options?: [...#EvaluationFormNumericQuestionOption]
}

#EvaluationFormQuestion: {
	// A question conditional enablement.
	Enablement?: #EvaluationFormItemEnablementConfiguration
	// The instructions of the section.
	// *Length Constraints*: Minimum length of 0. Maximum length of 1024.
	Instructions?: string & strings.MaxRunes(1024)
	// The flag to enable not applicable answers to the question.
	NotApplicableEnabled?: bool
	// The type of the question.
	// *Allowed values*: ``NUMERIC`` | ``SINGLESELECT`` | ``TEXT``
	QuestionType: "NUMERIC" | "SINGLESELECT" | "TEXT" | "MULTISELECT" | "DATETIME"
	// The properties of the type of question. Text questions do not have to define question type properties.
	QuestionTypeProperties?: #EvaluationFormQuestionTypeProperties
	// The identifier of the question. An identifier must be unique within the evaluation form.
	// *Length Constraints*: Minimum length of 1. Maximum length of 40.
	RefId: #RefId
	// The scoring configuration of the question.
	ScoringConfiguration?: #EvaluationFormQuestionScoringConfiguration
	// The title of the question.
	// *Length Constraints*: Minimum length of 1. Maximum length of 350.
	Title: string & strings.MinRunes(1) & strings.MaxRunes(350)
	// The scoring weight of the section.
	// *Minimum*: 0
	// *Maximum*: 100
	Weight?: #Weight
}

#EvaluationFormQuestionAutomationAnswerSource: {
	// The automation answer source type.
	SourceType: "CONTACT_LENS_DATA" | "GEN_AI"
}

#EvaluationFormQuestionScoringConfiguration: {
	// The flag to exclude the question from scoring.
	IsExcludedFromScoring?: bool
	// The points configuration for point-based scoring.
	PointsConfiguration?: #QuestionPointsConfiguration
	// The score thresholds for performance categories.
	ScoreThresholds?: [...#EvaluationFormScoreThreshold]
}

#EvaluationFormQuestionTypeProperties: {
	// Properties for multi-select question types.
	MultiSelect?: #EvaluationFormMultiSelectQuestionProperties
	// The properties of the numeric question.
	Numeric?: #EvaluationFormNumericQuestionProperties
	// The properties of the numeric question.
	SingleSelect?: #EvaluationFormSingleSelectQuestionProperties
	// The properties of the text question.
	Text?: #EvaluationFormTextQuestionProperties
}

#EvaluationFormScoreThreshold: {
	// The maximum score percentage for the performance category.
	MaxScorePercentage?: number & >=0 & <=100
	// The minimum score percentage for the performance category.
	MinScorePercentage?: number & >=0 & <=100
	// The performance category name.
	PerformanceCategory: "NEEDS_IMPROVEMENT" | "EXCEEDS_EXPECTATIONS"
}

#EvaluationFormSection: {
	// The instructions of the section.
	Instructions?: string & strings.MaxRunes(1024)
	// The flag to exclude the section from scoring.
	IsExcludedFromScoring?: bool
	// The items of the section.
	// *Minimum*: 1
	Items?: [...#EvaluationFormItem]
	// The identifier of the section. An identifier must be unique within the evaluation form.
	// *Length Constraints*: Minimum length of 1. Maximum length of 40.
	RefId: #RefId
	// The score thresholds for performance categories.
	ScoreThresholds?: [...#EvaluationFormScoreThreshold]
	// The title of the section.
	// *Length Constraints*: Minimum length of 1. Maximum length of 128.
	Title: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The scoring weight of the section.
	// *Minimum*: 0
	// *Maximum*: 100
	Weight?: #Weight
}

#EvaluationFormSingleSelectQuestionAutomation: {
	// Automation answer source.
	AnswerSource?: #EvaluationFormQuestionAutomationAnswerSource
	// The identifier of the default answer option, when none of the automation options match the criteria.
	// *Length Constraints*: Minimum length of 1. Maximum length of 40.
	DefaultOptionRefId?: #RefId
	// The automation options of the single select question.
	// *Minimum*: 1
	// *Maximum*: 20
	Options?: [...#EvaluationFormSingleSelectQuestionAutomationOption]
}

#EvaluationFormSingleSelectQuestionAutomationOption: {
	// The automation option based on a rule category for the single select question.
	RuleCategory: #SingleSelectQuestionRuleCategoryAutomation
}

#EvaluationFormSingleSelectQuestionOption: {
	// The flag to mark the option as automatic fail. If an automatic fail answer is provided, the overall evaluation gets a score of 0.
	AutomaticFail?: bool
	// Whether automatic fail is configured on a single select question.
	AutomaticFailConfiguration?: #AutomaticFailConfiguration
	// The points configuration for point-based scoring.
	PointsConfiguration?: #QuestionOptionPointsConfiguration
	// The identifier of the answer option. An identifier must be unique within the question.
	// *Length Constraints*: Minimum length of 1. Maximum length of 40.
	RefId: #RefId
	// The score assigned to the answer option.
	// *Minimum*: 0
	// *Maximum*: 10
	Score?: #Score
	// The title of the answer option.
	// *Length Constraints*: Minimum length of 1. Maximum length of 128.
	Text: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#EvaluationFormSingleSelectQuestionProperties: {
	// The display mode of the single select question.
	Automation?: #EvaluationFormSingleSelectQuestionAutomation
	// The display mode of the single select question.
	// *Allowed values*: ``DROPDOWN`` | ``RADIO``
	DisplayAs?: "DROPDOWN" | "RADIO"
	// The answer options of the single select question.
	// *Minimum*: 2
	// *Maximum*: 256
	Options: [...#EvaluationFormSingleSelectQuestionOption]
}

#EvaluationFormTargetConfiguration: {
	// The contact interaction type for this evaluation form.
	ContactInteractionType: "AGENT" | "AUTOMATED" | "CUSTOMER"
}

#EvaluationFormTextQuestionAutomation: {
	// Automation answer source.
	AnswerSource?: #EvaluationFormQuestionAutomationAnswerSource
}

#EvaluationFormTextQuestionProperties: {
	// The automation properties of the text question.
	Automation?: #EvaluationFormTextQuestionAutomation
}

#EvaluationReviewConfiguration: {
	// Number of days during which a request for review can be submitted for evaluations created from this form.
	EligibilityDays?: int & >=1 & <=90
	// List of recipients who should be notified when a review is requested.
	ReviewNotificationRecipients: [...#EvaluationReviewNotificationRecipient]
}

#EvaluationReviewNotificationRecipient: {
	// The type of notification recipient.
	Type: "USER_ID"
	// The value associated with the notification recipient type.
	Value: #EvaluationReviewNotificationRecipientValue
}

#EvaluationReviewNotificationRecipientValue: {
	// The user identifier for the notification recipient.
	UserId?: string
}

#MultiSelectQuestionRuleCategoryAutomation: {
	// The category name for this automation rule.
	Category: string & strings.MinRunes(1) & strings.MaxRunes(50)
	// The condition for this automation rule.
	Condition: "PRESENT" | "NOT_PRESENT"
	// Reference IDs of options for this automation rule.
	OptionRefIds: #ReferenceIdList
}

#NumericQuestionPropertyValueAutomation: {
	// The property label of the automation.
	Label: "OVERALL_CUSTOMER_SENTIMENT_SCORE" | "OVERALL_AGENT_SENTIMENT_SCORE" | "NON_TALK_TIME" | "NON_TALK_TIME_PERCENTAGE" | "NUMBER_OF_INTERRUPTIONS" | "CONTACT_DURATION" | "AGENT_INTERACTION_DURATION" | "CUSTOMER_HOLD_TIME" | "LONGEST_HOLD_DURATION" | "NUMBER_OF_HOLDS" | "AGENT_INTERACTION_AND_HOLD_DURATION" | "CUSTOMER_SENTIMENT_SCORE_WITHOUT_AGENT" | "CUSTOMER_SENTIMENT_SCORE_WITH_AGENT"
}

#PointValue: int & >=0 & <=100

#QuestionOptionPointsConfiguration: {
	// The flag to mark the option as a bonus option.
	IsBonus?: bool
	// The point value assigned to the answer option.
	PointValue: #PointValue
}

#QuestionPointsConfiguration: {
	// The flag to mark the question as a bonus question.
	IsBonus?: bool
	// The maximum point value.
	MaxPointValue?: #PointValue
	// The minimum point value.
	MinPointValue?: #PointValue
}

#RefId: string & =~"^[a-zA-Z0-9._-]{1,40}$"

#ReferenceIdList: [...#RefId]

#Score: int & >=0 & <=10

#ScoringStrategy: {
	// The scoring mode of the evaluation form.
	// *Allowed values*: ``QUESTION_ONLY`` | ``SECTION_ONLY``
	Mode: "QUESTION_ONLY" | "SECTION_ONLY" | "POINTS_BASED"
	ScoreThresholds?: [...#EvaluationFormScoreThreshold]
	// The scoring status of the evaluation form.
	// *Allowed values*: ``ENABLED`` | ``DISABLED``
	Status: "ENABLED" | "DISABLED"
}

#SingleSelectQuestionRuleCategoryAutomation: {
	// The category name, as defined in Rules.
	// *Minimum*: 1
	// *Maximum*: 50
	Category: string & strings.MinRunes(1) & strings.MaxRunes(50)
	// The condition to apply for the automation option. If the condition is PRESENT, then the option is applied when the contact data includes the category. Similarly, if the condition is NOT_PRESENT, then the option is applied when the contact data does not include the category.
	// *Allowed values*: ``PRESENT`` | ``NOT_PRESENT``
	// *Maximum*: 50
	Condition: "PRESENT" | "NOT_PRESENT"
	// The identifier of the answer option. An identifier must be unique within the question.
	// *Length Constraints*: Minimum length of 1. Maximum length of 40.
	OptionRefId: #RefId
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Value: string & strings.MaxRunes(256)
}

#Weight: number & >=0 & <=100
