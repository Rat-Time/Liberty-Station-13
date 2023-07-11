#define DMAPI5_PARAM_SERVER_PORT "tgs_port"
#define DMAPI5_PARAM_ACCESS_IDENTIFIER "tgs_key"

#define DMAPI5_BRIDGE_DATA "data"
#define DMAPI5_TOPIC_DATA "tgs_data"

#define DMAPI5_BRIDGE_REQUEST_LIMIT 8198
#define DMAPI5_TOPIC_REQUEST_LIMIT 65528
#define DMAPI5_TOPIC_RESPONSE_LIMIT 65529

#define DMAPI5_BRIDGE_COMMAND_PORT_UPDATE 0
#define DMAPI5_BRIDGE_COMMAND_STARTUP 1
#define DMAPI5_BRIDGE_COMMAND_PRIME 2
#define DMAPI5_BRIDGE_COMMAND_REBOOT 3
#define DMAPI5_BRIDGE_COMMAND_KILL 4
#define DMAPI5_BRIDGE_COMMAND_CHAT_SEND 5
#define DMAPI5_BRIDGE_COMMAND_CHUNK 6

#define DMAPI5_PARAMETER_ACCESS_IDENTIFIER "accessIdentifier"
#define DMAPI5_PARAMETER_CUSTOM_COMMANDS "customCommands"

#define DMAPI5_CHUNK "chunk"
#define DMAPI5_CHUNK_PAYLOAD "payload"
#define DMAPI5_CHUNK_TOTAL "totalChunks"
#define DMAPI5_CHUNK_SEQUENCE_ID "sequenceId"
#define DMAPI5_CHUNK_PAYLOAD_ID "payloadId"

#define DMAPI5_MISSING_CHUNKS "missingChunks"

#define DMAPI5_RESPONSE_ERROR_MESSAGE "errorMessage"

#define DMAPI5_BRIDGE_PARAMETER_COMMAND_TYPE "commandType"
#define DMAPI5_BRIDGE_PARAMETER_CURRENT_PORT "currentPort"
#define DMAPI5_BRIDGE_PARAMETER_VERSION "version"
#define DMAPI5_BRIDGE_PARAMETER_CHAT_MESSAGE "chatMessage"
#define DMAPI5_BRIDGE_PARAMETER_MINIMUM_SECURITY_LEVEL "minimumSecurityLevel"

#define DMAPI5_BRIDGE_RESPONSE_NEW_PORT "newPort"
#define DMAPI5_BRIDGE_RESPONSE_RUNTIME_INFORMATION "runtimeInformation"

#define DMAPI5_CHAT_MESSAGE_CHANNEL_IDS "channelIds"

#define DMAPI5_RUNTIME_INFORMATION_ACCESS_IDENTIFIER "accessIdentifier"
#define DMAPI5_RUNTIME_INFORMATION_SERVER_VERSION "serverVersion"
#define DMAPI5_RUNTIME_INFORMATION_SERVER_PORT "serverPort"
#define DMAPI5_RUNTIME_INFORMATION_API_VALIDATE_ONLY "apiValidateOnly"
#define DMAPI5_RUNTIME_INFORMATION_INSTANCE_NAME "instanceName"
#define DMAPI5_RUNTIME_INFORMATION_REVISION "revision"
#define DMAPI5_RUNTIME_INFORMATION_TEST_MERGES "testMerges"
#define DMAPI5_RUNTIME_INFORMATION_SECURITY_LEVEL "securityLevel"

#define DMAPI5_CHAT_UPDATE_CHANNELS "channels"

#define DMAPI5_TEST_MERGE_TIME_MERGED "timeMerged"
#define DMAPI5_TEST_MERGE_REVISION "revision"
#define DMAPI5_TEST_MERGE_TITLE_AT_MERGE "titleAtMerge"
#define DMAPI5_TEST_MERGE_BODY_AT_MERGE "bodyAtMerge"
#define DMAPI5_TEST_MERGE_URL "url"
#define DMAPI5_TEST_MERGE_AUTHOR "author"
#define DMAPI5_TEST_MERGE_NUMBER "number"
#define DMAPI5_TEST_MERGE_PULL_REQUEST_REVISION "pullRequestRevision"
#define DMAPI5_TEST_MERGE_COMMENT "comment"

#define DMAPI5_CHAT_COMMAND_NAME "name"
#define DMAPI5_CHAT_COMMAND_PARAMS "params"
#define DMAPI5_CHAT_COMMAND_USER "user"

#define DMAPI5_EVENT_NOTIFICATION_TYPE "type"
#define DMAPI5_EVENT_NOTIFICATION_PARAMETERS "parameters"

#define DMAPI5_TOPIC_COMMAND_CHAT_COMMAND 0
#define DMAPI5_TOPIC_COMMAND_EVENT_NOTIFICATION 1
#define DMAPI5_TOPIC_COMMAND_CHANGE_PORT 2
#define DMAPI5_TOPIC_COMMAND_CHANGE_REBOOT_STATE 3
#define DMAPI5_TOPIC_COMMAND_INSTANCE_RENAMED 4
#define DMAPI5_TOPIC_COMMAND_CHAT_CHANNELS_UPDATE 5
#define DMAPI5_TOPIC_COMMAND_SERVER_PORT_UPDATE 6
#define DMAPI5_TOPIC_COMMAND_HEARTBEAT 7
#define DMAPI5_TOPIC_COMMAND_WATCHDOG_REATTACH 8
#define DMAPI5_TOPIC_COMMAND_SEND_CHUNK 9
#define DMAPI5_TOPIC_COMMAND_RECEIVE_CHUNK 10

#define DMAPI5_TOPIC_PARAMETER_COMMAND_TYPE "commandType"
#define DMAPI5_TOPIC_PARAMETER_CHAT_COMMAND "chatCommand"
#define DMAPI5_TOPIC_PARAMETER_EVENT_NOTIFICATION "eventNotification"
#define DMAPI5_TOPIC_PARAMETER_NEW_PORT "newPort"
#define DMAPI5_TOPIC_PARAMETER_NEW_REBOOT_STATE "newRebootState"
#define DMAPI5_TOPIC_PARAMETER_NEW_INSTANCE_NAME "newInstanceName"
#define DMAPI5_TOPIC_PARAMETER_CHAT_UPDATE "chatUpdate"
#define DMAPI5_TOPIC_PARAMETER_NEW_SERVER_VERSION "newServerVersion"

#define DMAPI5_TOPIC_RESPONSE_COMMAND_RESPONSE "commandResponse"
#define DMAPI5_TOPIC_RESPONSE_COMMAND_RESPONSE_MESSAGE "commandResponseMessage"
#define DMAPI5_TOPIC_RESPONSE_CHAT_RESPONSES "chatResponses"

#define DMAPI5_REVISION_INFORMATION_COMMIT_SHA "commitSha"
#define DMAPI5_REVISION_INFORMATION_TIMESTAMP "timestamp"
#define DMAPI5_REVISION_INFORMATION_ORIGIN_COMMIT_SHA "originCommitSha"

#define DMAPI5_CHAT_USER_ID "id"
#define DMAPI5_CHAT_USER_FRIENDLY_NAME "friendlyName"
#define DMAPI5_CHAT_USER_MENTION "mention"
#define DMAPI5_CHAT_USER_CHANNEL "channel"

#define DMAPI5_CHAT_CHANNEL_ID "id"
#define DMAPI5_CHAT_CHANNEL_FRIENDLY_NAME "friendlyName"
#define DMAPI5_CHAT_CHANNEL_CONNECTION_NAME "connectionName"
#define DMAPI5_CHAT_CHANNEL_IS_ADMIN_CHANNEL "isAdminChannel"
#define DMAPI5_CHAT_CHANNEL_IS_PRIVATE_CHANNEL "isPrivateChannel"
#define DMAPI5_CHAT_CHANNEL_TAG "tag"
#define DMAPI5_CHAT_CHANNEL_EMBEDS_SUPPORTED "embedsSupported"

#define DMAPI5_CUSTOM_CHAT_COMMAND_NAME "name"
#define DMAPI5_CUSTOM_CHAT_COMMAND_HELP_TEXT "helpText"
#define DMAPI5_CUSTOM_CHAT_COMMAND_ADMIN_ONLY "adminOnly"
