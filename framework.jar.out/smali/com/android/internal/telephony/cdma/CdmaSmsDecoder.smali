.class public Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;
.super Ljava/lang/Object;
.source "CdmaSmsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;,
        Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_TAG:Ljava/lang/String; = "CDMA"

.field static final accepted_TRANSPORT_TYPE:[B

.field static final accepted_TRANSPORT_TYPE_param_list:[[B

.field static final accepted_param_ACKNOWLEDGE:[B

.field static final accepted_param_BROADCAST:[B

.field static final accepted_param_POINT_TO_POINT:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

.field static final accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final accepted_subparam_IS91_EXTENDED:[B

.field static final accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

.field static final accepted_subparam_WIRELESS_APPLICATION:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_delivery:[B

.field static final accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

.field static final accepted_subparam_WIRELESS_PAGING_user_ack:[B

.field static final accepted_subparam_broadcast:[B

.field static final accepted_subparam_raw_message_waiting_indication:[B

.field static final accepted_subparam_submit_report:[B

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field static final required_TRANSPORT_TYPE_param_list:[[B

.field static final required_param_ACKNOWLEDGE:[B

.field static final required_param_BROADCAST:[B

.field static final required_param_POINT_TO_POINT:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

.field static final required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

.field static final required_subparam_IS91_EXTENDED:[B

.field static final required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

.field static final required_subparam_VOICE_MAIL_NOTIFICATION:[B

.field static final required_subparam_WIRELESS_APPLICATION:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery:[B

.field static final required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_read_ack:[B

.field static final required_subparam_WIRELESS_MESSAGING_user_ack:[B

.field static final required_subparam_WIRELESS_PAGING_delivery:[B

.field static final required_subparam_WIRELESS_PAGING_delivery_ack:[B

.field static final required_subparam_WIRELESS_PAGING_user_ack:[B

.field static final required_subparam_broadcast:[B

.field static final required_subparam_raw_message_waiting_indication:[B

.field static final required_subparam_submit_report:[B


# instance fields
.field final BODY_EMPTY:I

.field final BODY_ENCODING_CHAR:I

.field final BODY_ENCODING_RAW_DATA:I

.field final BODY_ENCODING_UNICODE:I

.field final BODY_ENCODING_UNKNOWN:I

.field TeleserviceMsgType:B

.field TeleserviceParam_absoluteValidity:[S

.field TeleserviceParam_alertOnDelivery:B

.field TeleserviceParam_callbackAddr:[B

.field TeleserviceParam_callbackAddrPlan:B

.field TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_displayMode:B

.field TeleserviceParam_downloadMode:B

.field TeleserviceParam_encodingUserData:[[B

.field TeleserviceParam_encodingUserDataEncoding:[B

.field TeleserviceParam_errorClass:B

.field TeleserviceParam_errorDetail:B

.field TeleserviceParam_gsmTpFailure:B

.field TeleserviceParam_language:B

.field TeleserviceParam_messageCenterTimeStamp:[S

.field TeleserviceParam_messageId:S

.field TeleserviceParam_messageIdInCenter:S

.field TeleserviceParam_priority:B

.field TeleserviceParam_privacy:B

.field TeleserviceParam_relativeValidity:[B

.field TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

.field TeleserviceParam_replyManualAck:Z

.field TeleserviceParam_replyReadAck:Z

.field TeleserviceParam_replySubmitReport:Z

.field TeleserviceParam_settingAlertForTypeOfService:[B

.field TeleserviceParam_settingData:[[B

.field TeleserviceParam_settingEncoding:B

.field TeleserviceParam_settingLanguage:[B

.field TeleserviceParam_settingMaxMessagesForTypeOfService:[S

.field TeleserviceParam_settingOperation:[B

.field TeleserviceParam_settingTypeOfService:[S

.field TeleserviceParam_userData:[B

.field TeleserviceParam_userDataEncoding:B

.field TeleserviceParam_userDataEncodingExtended:S

.field TeleserviceParam_userDataHeader:[B

.field TeleserviceParam_userDataHeaderExisted:Z

.field TeleserviceParam_userResponseCode:S

.field TeleserviceParam_vmnAccessNumber:[B

.field TeleserviceParam_vmnAccessNumberPlan:B

.field TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_vmnAckDeletedAcks:[S

.field TeleserviceParam_vmnAckMailboxId:S

.field TeleserviceParam_vmnAckPlayedAcks:[S

.field TeleserviceParam_vmnAckUnheardMessages:S

.field TeleserviceParam_vmnAllowReply:Z

.field TeleserviceParam_vmnCallingPartyNumber:[B

.field TeleserviceParam_vmnCallingPartyNumberPlan:B

.field TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TeleserviceParam_vmnChangePassword:Z

.field TeleserviceParam_vmnIncludeFax:Z

.field TeleserviceParam_vmnLengthInSeconds:S

.field TeleserviceParam_vmnMailboxId:S

.field TeleserviceParam_vmnMessageId:S

.field TeleserviceParam_vmnPasswordExisted:Z

.field TeleserviceParam_vmnPasswordMaxLen:B

.field TeleserviceParam_vmnPasswordMinLen:B

.field TeleserviceParam_vmnPriority:B

.field TeleserviceParam_vmnRetentionDays:B

.field TeleserviceParam_vmnServerAlmostFull:Z

.field TeleserviceParam_vmnServerFull:Z

.field TeleserviceParam_vmnSetupInitUserPrompt:Z

.field TeleserviceParam_vmnUnheardMessages:S

.field TeleserviceParam_voiceMailsInServer:B

.field TeleserviceParameters:[Z

.field TransportMsgType:B

.field TransportParam_causeDetail:B

.field TransportParam_destAddr:[B

.field TransportParam_destAddrPlan:B

.field TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_errorClass:B

.field TransportParam_fromAddr:[B

.field TransportParam_fromAddrDigitMode:B

.field TransportParam_fromAddrNumberMode:B

.field TransportParam_fromAddrNumberOfDigits:I

.field TransportParam_fromAddrPlan:B

.field TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

.field TransportParam_replySeqNumber:B

.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:B

.field TransportParam_teleserviceCategory:I

.field TransportParam_typeOfService:I

.field TransportParameters:[Z

.field dataEnd:I

.field dataEnd_bearerData:I

.field dataEnd_userData:I

.field param_len:S

.field smsData:[B

.field startBitIndex_decodeAddress:I

.field startIndex:I

.field startIndex_bearerData:I

.field startIndex_userData:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE:[B

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_POINT_TO_POINT:[B

    .line 77
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_POINT_TO_POINT:[B

    .line 82
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_BROADCAST:[B

    .line 87
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_BROADCAST:[B

    .line 91
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_ACKNOWLEDGE:[B

    .line 96
    new-array v0, v3, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_ACKNOWLEDGE:[B

    .line 100
    new-array v0, v6, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_BROADCAST:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    .line 106
    new-array v0, v6, [[B

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_POINT_TO_POINT:[B

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_BROADCAST:[B

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_param_ACKNOWLEDGE:[B

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_TRANSPORT_TYPE_param_list:[[B

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    .line 115
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    .line 119
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_broadcast:[B

    .line 133
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_broadcast:[B

    .line 137
    new-array v0, v4, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_IS91_EXTENDED:[B

    .line 142
    new-array v0, v4, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_IS91_EXTENDED:[B

    .line 147
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery:[B

    .line 161
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery:[B

    .line 165
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    .line 174
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    .line 178
    new-array v0, v5, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

    .line 186
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery_ack:[B

    .line 190
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    .line 208
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    .line 212
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    .line 221
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    .line 225
    new-array v0, v5, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    .line 233
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    .line 237
    new-array v0, v5, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    .line 245
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    .line 249
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

    .line 263
    new-array v0, v4, [B

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_VOICE_MAIL_NOTIFICATION:[B

    .line 268
    new-array v0, v4, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    .line 273
    new-array v0, v4, [B

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    .line 278
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    .line 296
    new-array v0, v4, [B

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    .line 301
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    .line 310
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    .line 314
    new-array v0, v5, [B

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    .line 322
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    .line 326
    new-array v0, v5, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    .line 334
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    .line 338
    new-array v0, v6, [B

    fill-array-data v0, :array_19

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    .line 344
    new-array v0, v4, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    .line 349
    new-array v0, v4, [B

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    .line 354
    new-array v0, v4, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    .line 359
    new-array v0, v6, [B

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    .line 365
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    .line 369
    new-array v0, v5, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_submit_report:[B

    .line 377
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_submit_report:[B

    .line 382
    new-array v0, v4, [B

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_raw_message_waiting_indication:[B

    .line 388
    new-array v0, v4, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_raw_message_waiting_indication:[B

    return-void

    .line 60
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
    .end array-data

    .line 66
    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x8t
    .end array-data

    .line 82
    :array_2
    .array-data 0x1
        0x1t
        0x8t
    .end array-data

    .line 91
    nop

    :array_3
    .array-data 0x1
        0x5t
        0x7t
    .end array-data

    .line 112
    nop

    :array_4
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x7t 0x0t
        0xft 0x0t
        0x1ft 0x0t
        0x3ft 0x0t
        0x7ft 0x0t
        0xfft 0x0t
    .end array-data

    .line 115
    nop

    :array_5
    .array-data 0x1
        0x0t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 119
    :array_6
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data

    .line 137
    :array_7
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 142
    nop

    :array_8
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 147
    nop

    :array_9
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x8t
        0x9t
        0xat
        0xbt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    .line 165
    :array_a
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 178
    nop

    :array_b
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 190
    nop

    :array_c
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    .line 212
    :array_d
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 225
    nop

    :array_e
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 237
    nop

    :array_f
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 249
    nop

    :array_10
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x8t
        0x9t
        0xbt
        0xct
        0xet
        0x10t
        0x16t
        0x17t
    .end array-data

    .line 263
    :array_11
    .array-data 0x1
        0x0t
        0xbt
    .end array-data

    .line 268
    nop

    :array_12
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 273
    nop

    :array_13
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 278
    nop

    :array_14
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
    .end array-data

    .line 296
    :array_15
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 301
    nop

    :array_16
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 314
    nop

    :array_17
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x11t
    .end array-data

    .line 326
    nop

    :array_18
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x10t
        0x14t
    .end array-data

    .line 338
    nop

    :array_19
    .array-data 0x1
        0x0t
        0x3t
        0x12t
    .end array-data

    .line 344
    :array_1a
    .array-data 0x1
        0x0t
        0x12t
    .end array-data

    .line 349
    nop

    :array_1b
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 354
    nop

    :array_1c
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    .line 359
    nop

    :array_1d
    .array-data 0x1
        0x0t
        0x1t
        0x2t
    .end array-data

    .line 369
    :array_1e
    .array-data 0x1
        0x0t
        0x1t
        0xdt
        0x10t
        0x15t
    .end array-data

    .line 382
    nop

    :array_1f
    .array-data 0x1
        0x0t
        0xbt
    .end array-data

    .line 388
    nop

    :array_20
    .array-data 0x1
        0x0t
        0xbt
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "pdu"

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_EMPTY:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_UNKNOWN:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_RAW_DATA:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_UNICODE:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->BODY_ENCODING_CHAR:I

    .line 421
    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    .line 422
    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    .line 427
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    .line 560
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    .line 561
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 563
    return-void
.end method

.method private decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B
    .locals 10
    .parameter "startBitIndex"
    .parameter "dtmfDigit"
    .parameter "numberingType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 710
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v6, p1, 0x8

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_0

    .line 711
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 715
    :cond_0
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    .line 716
    .local v4, numberOfCharacters:I
    add-int/lit8 p1, p1, 0x8

    .line 718
    if-nez v4, :cond_1

    .line 719
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    .line 721
    const/4 v1, 0x0

    .line 771
    :goto_0
    return-object v1

    .line 727
    :cond_1
    if-eqz p2, :cond_4

    .line 728
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v6, v4, 0x2

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_2

    .line 729
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 733
    :cond_2
    new-array v1, v4, [B

    .line 734
    .local v1, addressDecoded:[B
    const/4 v0, 0x0

    .local v0, addrIndex:I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 735
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    aget-byte v5, v5, v6

    aput-byte v5, v1, v0

    .line 737
    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    .line 738
    .local v3, ix:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    const/16 v3, 0xa

    .line 739
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dtmfDigitToAscII:[B

    aget-byte v5, v5, v3

    aput-byte v5, v1, v0

    .line 741
    add-int/lit8 p1, p1, 0x4

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 745
    .end local v0           #addrIndex:I
    .end local v1           #addressDecoded:[B
    .end local v3           #ix:I
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v6, v4, 0x3

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_5

    .line 746
    const-string v5, "CDMA"

    const-string v6, "DecodeSMS address size"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 749
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 756
    new-array v1, v4, [B

    .line 757
    .restart local v1       #addressDecoded:[B
    const/4 v0, 0x0

    .restart local v0       #addrIndex:I
    :goto_2
    if-ge v0, v4, :cond_6

    .line 758
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 759
    add-int/lit8 p1, p1, 0x8

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 752
    .end local v0           #addrIndex:I
    .end local v1           #addressDecoded:[B
    :pswitch_0
    invoke-direct {p0, p1, v7, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v1

    .line 753
    .restart local v1       #addressDecoded:[B
    shl-int/lit8 v5, v4, 0x3

    add-int/2addr p1, v5

    .line 764
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    if-ne p3, v5, :cond_7

    .line 765
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 766
    .local v2, addressInternational:[B
    const/16 v5, 0x2b

    aput-byte v5, v2, v8

    .line 767
    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v1, v8, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    move-object v1, v2

    .line 770
    .end local v2           #addressInternational:[B
    :cond_7
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    goto/16 :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBCDnumber(I)I
    .locals 4
    .parameter "bcdOctet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 776
    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 777
    .local v0, highBCD:I
    and-int/lit8 v1, p1, 0xf

    .line 778
    .local v1, lowBCD:I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 779
    :cond_0
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS BCD number"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 782
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private decodeBitStream(II)I
    .locals 8
    .parameter "startBitIndex"
    .parameter "lengthOfBits"

    .prologue
    const/16 v7, 0x8

    .line 611
    shr-int/lit8 v2, p1, 0x3

    .line 612
    .local v2, bytesOffset:I
    and-int/lit8 v0, p1, 0x7

    .line 613
    .local v0, bitsOffset:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    .line 615
    .local v4, returnValue:I
    add-int v5, v0, p2

    if-gt v5, v7, :cond_1

    .line 616
    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p2

    shr-int v5, v4, v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    aget-short v6, v6, p2

    and-int v4, v5, v6

    .line 632
    :cond_0
    :goto_0
    return v4

    .line 619
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    .line 620
    add-int/lit8 v3, v2, 0x1

    .line 621
    .local v3, bytesOffsetRemaining:I
    rsub-int/lit8 v5, v0, 0x8

    sub-int v1, p2, v5

    .line 622
    .local v1, bitsRemaining:I
    :goto_1
    if-le v1, v7, :cond_2

    .line 623
    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 624
    add-int/lit8 v3, v3, 0x1

    .line 625
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 627
    :cond_2
    if-lez v1, :cond_0

    .line 628
    shl-int v5, v4, v1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    aget-byte v6, v6, v3

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v6, v7

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->bitsMaskRight:[S

    aget-short v7, v7, v1

    and-int/2addr v6, v7

    or-int v4, v5, v6

    goto :goto_0
.end method

.method private decodeBitStreamIntoBytes(III)[B
    .locals 3
    .parameter "startBitIndex"
    .parameter "lengthOfBits"
    .parameter "lengthOfBytes"

    .prologue
    .line 637
    new-array v0, p3, [B

    .line 640
    .local v0, byteArray:[B
    const/4 v1, 0x0

    .local v1, copyIndex:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 642
    add-int/2addr p1, p2

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    :cond_0
    return-object v0
.end method

.method private decodeBitStreamIntoShorts(III)[S
    .locals 3
    .parameter "startBitIndex"
    .parameter "lengthOfBits"
    .parameter "lengthOfBytes"

    .prologue
    .line 650
    new-array v1, p3, [S

    .line 653
    .local v1, shortArray:[S
    const/4 v0, 0x0

    .local v0, copyIndex:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 654
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 655
    add-int/2addr p1, p2

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 658
    :cond_0
    return-object v1
.end method

.method private decodeParameter_header()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 573
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parmHeader size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v1, v2

    .line 578
    .local v0, param_id:B
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    .line 579
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 580
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ge v1, v2, :cond_1

    .line 581
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parmHeader size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 584
    :cond_1
    return v0
.end method

.method private decodePeriodRelative(I)[B
    .locals 7
    .parameter "period"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 833
    const/16 v2, 0xf4

    if-le p1, v2, :cond_0

    .line 834
    const/4 v1, 0x0

    .line 871
    :goto_0
    return-object v1

    .line 836
    :cond_0
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 837
    .local v1, relativeTime:[B
    const/16 v2, 0xa7

    if-ge p1, v2, :cond_3

    .line 838
    aput-byte v3, v1, v3

    .line 839
    aput-byte v3, v1, v5

    .line 843
    const/16 v2, 0x8f

    if-ge p1, v2, :cond_1

    .line 844
    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v0, v2, 0x5

    .line 845
    .local v0, offsetValue:I
    div-int/lit8 v2, v0, 0x3c

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 846
    rem-int/lit8 v2, v0, 0x3c

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    goto :goto_0

    .line 849
    .end local v0           #offsetValue:I
    :cond_1
    add-int/lit16 v0, p1, -0x8f

    .line 850
    .restart local v0       #offsetValue:I
    shr-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 851
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    .line 852
    const/16 v2, 0x1e

    aput-byte v2, v1, v4

    goto :goto_0

    .line 855
    :cond_2
    aput-byte v3, v1, v4

    goto :goto_0

    .line 860
    .end local v0           #offsetValue:I
    :cond_3
    const/16 v2, 0xc5

    if-ge p1, v2, :cond_4

    .line 861
    aput-byte v3, v1, v3

    .line 862
    add-int/lit16 v2, p1, -0xa6

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 868
    :goto_1
    aput-byte v3, v1, v6

    .line 869
    aput-byte v3, v1, v4

    goto :goto_0

    .line 865
    :cond_4
    add-int/lit16 v2, p1, -0xc0

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 866
    aput-byte v3, v1, v5

    goto :goto_1
.end method

.method private decodeTeleservice()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1320
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1321
    .local v1, startIndex_teleservice:I
    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1323
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v2

    if-nez v2, :cond_3

    .line 1325
    iget-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ge v2, v3, :cond_2

    .line 1326
    :cond_1
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-id size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1329
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1330
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1335
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v2, v3, :cond_0

    .line 1336
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    if-ne v2, v6, :cond_4

    .line 1337
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-id not existed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1333
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 1340
    :cond_4
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1342
    const/4 v2, 0x2

    new-array v0, v2, [[B

    .line 1344
    .local v0, filtersApplied:[[B
    const/16 v2, 0x18

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 1346
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    if-ne v2, v4, :cond_6

    .line 1347
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    if-ne v2, v4, :cond_5

    .line 1348
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_broadcast:[B

    aput-object v2, v0, v5

    .line 1349
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_broadcast:[B

    aput-object v2, v0, v4

    .line 1350
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDeliveryBroadcast([[B)V

    .line 1485
    :goto_1
    return-void

    .line 1352
    :cond_5
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS broadcast but not delivery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1356
    :cond_6
    iget-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    packed-switch v2, :pswitch_data_0

    .line 1481
    :pswitch_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported msg-type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1358
    :pswitch_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_1

    .line 1372
    :pswitch_2
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported submit-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1360
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1361
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    .line 1376
    :goto_2
    :pswitch_4
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_2

    .line 1410
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported delivery-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1364
    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v5

    .line 1365
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1368
    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1369
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_2

    .line 1378
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_IS91_EXTENDED:[B

    aput-object v2, v0, v5

    .line 1379
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_IS91_EXTENDED:[B

    aput-object v2, v0, v4

    .line 1413
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDelivery([[B)V

    goto/16 :goto_1

    .line 1382
    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1383
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1386
    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1387
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1390
    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_VOICE_MAIL_NOTIFICATION:[B

    aput-object v2, v0, v5

    .line 1391
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_VOICE_MAIL_NOTIFICATION:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1394
    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v5

    .line 1395
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_APPLICATION:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1398
    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v5

    .line 1399
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1402
    :pswitch_d
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v5

    .line 1403
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_SERVICE_CATEGORY_PROGRAMMING:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1406
    :pswitch_e
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    aput-object v2, v0, v5

    .line 1407
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_delivery:[B

    aput-object v2, v0, v4

    goto :goto_3

    .line 1416
    :pswitch_f
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_3

    .line 1430
    :pswitch_10
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported deliveryAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1418
    :pswitch_11
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1419
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_delivery_ack:[B

    aput-object v2, v0, v4

    .line 1433
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceDeliveryAck([[B)V

    goto/16 :goto_1

    .line 1422
    :pswitch_12
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1423
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    .line 1426
    :pswitch_13
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v5

    .line 1427
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_delivery_ack:[B

    aput-object v2, v0, v4

    goto :goto_4

    .line 1436
    :pswitch_14
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_4

    .line 1454
    :pswitch_15
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported userAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1438
    :pswitch_16
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1439
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_PAGING_user_ack:[B

    aput-object v2, v0, v4

    .line 1457
    :goto_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceUserAck([[B)V

    goto/16 :goto_1

    .line 1442
    :pswitch_17
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1443
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1446
    :pswitch_18
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v5

    .line 1447
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1450
    :pswitch_19
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v5

    .line 1451
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_CARD_APPLICATION_TOOLKIT_user_ack:[B

    aput-object v2, v0, v4

    goto :goto_5

    .line 1460
    :pswitch_1a
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v2, :pswitch_data_5

    .line 1470
    :pswitch_1b
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeSMS unsupported readAck-category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1462
    :pswitch_1c
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v5

    .line 1463
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    .line 1473
    :goto_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceReadAck([[B)V

    goto/16 :goto_1

    .line 1466
    :pswitch_1d
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v5

    .line 1467
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_WIRELESS_ENHANCED_MESSAGING_read_ack:[B

    aput-object v2, v0, v4

    goto :goto_6

    .line 1476
    :pswitch_1e
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_submit_report:[B

    aput-object v2, v0, v5

    .line 1477
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_submit_report:[B

    aput-object v2, v0, v4

    .line 1478
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubmitReport([[B)V

    goto/16 :goto_1

    .line 1356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_f
        :pswitch_14
        :pswitch_1a
        :pswitch_0
        :pswitch_1e
    .end packed-switch

    .line 1358
    :pswitch_data_1
    .packed-switch 0x1002
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1376
    :pswitch_data_2
    .packed-switch 0x1000
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 1416
    :pswitch_data_3
    .packed-switch 0x1001
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_13
    .end packed-switch

    .line 1436
    :pswitch_data_4
    .packed-switch 0x1001
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_19
    .end packed-switch

    .line 1460
    :pswitch_data_5
    .packed-switch 0x1002
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1d
    .end packed-switch
.end method

.method private decodeTeleserviceDelivery([[B)V
    .locals 3
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1498
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1499
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x16

    aget-boolean v0, v0, v1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x17

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1505
    :cond_1
    return-void
.end method

.method private decodeTeleserviceDeliveryAck([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1509
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1510
    return-void
.end method

.method private decodeTeleserviceDeliveryBroadcast([[B)V
    .locals 3
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 1489
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 1491
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_priority:B

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1494
    :cond_0
    return-void
.end method

.method private decodeTeleserviceParamAbsoluteValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1825
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTimeStamp()[S

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    .line 1826
    return-void
.end method

.method private decodeTeleserviceParamAlertOnMessageDelivery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1882
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1884
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_alertOnDelivery:B

    .line 1889
    :goto_0
    return-void

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_alertOnDelivery:B

    goto :goto_0
.end method

.method private decodeTeleserviceParamBroadcastServiceSetting()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x8

    .line 1990
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v4, 0x3

    .line 1992
    .local v3, startBitIndex:I
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_0

    .line 1993
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1996
    :cond_0
    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingEncoding:B

    .line 1997
    add-int/lit8 v3, v3, 0x5

    .line 1999
    const/4 v1, 0x0

    .line 2002
    .local v1, indexOfFields:I
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x30

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_2

    .line 2003
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 2007
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    .line 2008
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([S)[S

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    .line 2009
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    .line 2010
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([S)[S

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    .line 2011
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    .line 2012
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([[B)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    .line 2014
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingOperation:[B

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2015
    add-int/lit8 v3, v3, 0x4

    .line 2016
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingTypeOfService:[S

    const/16 v5, 0x10

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 2017
    add-int/lit8 v3, v3, 0x10

    .line 2018
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingLanguage:[B

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2019
    add-int/lit8 v3, v3, 0x8

    .line 2020
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingMaxMessagesForTypeOfService:[S

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v1

    .line 2021
    add-int/lit8 v3, v3, 0x8

    .line 2022
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingAlertForTypeOfService:[B

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2023
    add-int/lit8 v3, v3, 0x4

    .line 2025
    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 2026
    .local v2, numberOfCharacters:I
    add-int/lit8 v3, v3, 0x8

    .line 2028
    const/16 v0, 0x8

    .line 2029
    .local v0, bitsPerCharacters:I
    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingEncoding:B

    packed-switch v4, :pswitch_data_0

    .line 2048
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_3

    .line 2049
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-setting size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 2036
    :pswitch_1
    const/4 v0, 0x7

    .line 2037
    goto :goto_0

    .line 2039
    :pswitch_2
    shl-int/lit8 v2, v2, 0x1

    .line 2040
    goto :goto_0

    .line 2052
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_settingData:[[B

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 2053
    mul-int v4, v2, v0

    add-int/2addr v3, v4

    .line 2054
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_1

    .line 2055
    return-void

    .line 2029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeTeleserviceParamCallBack()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1898
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v4, v5

    if-ge v4, v2, :cond_0

    .line 1899
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-callback size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 1903
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    shr-int/lit8 v0, v4, 0x7

    .line 1904
    .local v0, digitMode:I
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v4, v4, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 1905
    .local v1, startBitIndex:I
    if-eqz v0, :cond_1

    .line 1906
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1908
    add-int/lit8 v1, v1, 0x3

    .line 1909
    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrPlan:B

    .line 1910
    add-int/lit8 v1, v1, 0x4

    .line 1917
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddr:[B

    .line 1918
    return-void

    .line 1913
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1914
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_callbackAddrPlan:B

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1917
    goto :goto_1
.end method

.method private decodeTeleserviceParamDisplayMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    .line 1924
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_downloadMode:B

    .line 1930
    :goto_0
    return-void

    .line 1928
    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_downloadMode:B

    goto :goto_0
.end method

.method private decodeTeleserviceParamErrorCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_errorClass:B

    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_errorDetail:B

    .line 2061
    return-void
.end method

.method private decodeTeleserviceParamGsmTpFailure()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_gsmTpFailure:B

    .line 2066
    return-void
.end method

.method private decodeTeleserviceParamLanguage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_language:B

    .line 1894
    return-void
.end method

.method private decodeTeleserviceParamMessageCenterTimeStamp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTimeStamp()[S

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    .line 1821
    return-void
.end method

.method private decodeTeleserviceParamMessageID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceMsgType:B

    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageId:S

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeaderExisted:Z

    .line 1659
    return-void

    .line 1658
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeTeleserviceParamMessageIdInCenter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageIdInCenter:S

    .line 1986
    return-void
.end method

.method private decodeTeleserviceParamMultiEncodingUserData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1934
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v4, 0x3

    .line 1935
    .local v3, startBitIndex:I
    const/4 v1, 0x0

    .line 1939
    .local v1, indexOfFields:I
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0xd

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1940
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-multiUser size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1944
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    .line 1945
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->extendArray([[B)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    .line 1947
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserDataEncoding:[B

    const/4 v5, 0x5

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 1948
    add-int/lit8 v3, v3, 0x5

    .line 1949
    const/16 v4, 0x8

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 1950
    .local v2, numberOfCharacters:I
    add-int/lit8 v3, v3, 0x8

    .line 1952
    const/16 v0, 0x8

    .line 1953
    .local v0, bitsPerCharacters:I
    iget-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    packed-switch v4, :pswitch_data_0

    .line 1972
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_2

    .line 1973
    const-string v4, "CDMA"

    const-string v5, "DecodeSMS subparm-multiUser size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 1960
    :pswitch_1
    const/4 v0, 0x7

    .line 1961
    goto :goto_0

    .line 1963
    :pswitch_2
    shl-int/lit8 v2, v2, 0x1

    .line 1964
    goto :goto_0

    .line 1976
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_encodingUserData:[[B

    invoke-direct {p0, v3, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 1977
    mul-int v4, v2, v0

    add-int/2addr v3, v4

    .line 1978
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v3, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_0

    .line 1979
    return-void

    .line 1953
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeTeleserviceParamPriority()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_priority:B

    .line 1859
    return-void
.end method

.method private decodeTeleserviceParamPrivacy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_privacy:B

    .line 1864
    return-void
.end method

.method private decodeTeleserviceParamRelativeValidity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1830
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1831
    .local v0, validity:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodePeriodRelative(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidity:[B

    .line 1832
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidity:[B

    if-eqz v1, :cond_0

    .line 1833
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Fixed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    .line 1854
    :goto_0
    return-void

    .line 1836
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1850
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeSMS subparm-relaValid peroid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1838
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->Indefinite:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1841
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMessageDisplayed:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1844
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilMobileInactive:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1847
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;->UntilLeavingThisRegistrationArea:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_relativeValidityType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$RelativeTime;

    goto :goto_0

    .line 1836
    :pswitch_data_0
    .packed-switch 0xf5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private decodeTeleserviceParamReplyOption()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1869
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v1, v4

    .line 1870
    .local v0, options:B
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replyManualAck:Z

    .line 1871
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replyReadAck:Z

    .line 1872
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_replySubmitReport:Z

    .line 1873
    return-void

    :cond_0
    move v1, v3

    .line 1870
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1871
    goto :goto_1

    :cond_2
    move v2, v3

    .line 1872
    goto :goto_2
.end method

.method private decodeTeleserviceParamUserData()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 1663
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v6, 0x3

    .line 1665
    .local v3, startBitIndex:I
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x5

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_0

    .line 1666
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1669
    :cond_0
    const/4 v6, 0x5

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    .line 1670
    add-int/lit8 v3, v3, 0x5

    .line 1672
    const/4 v2, 0x0

    .line 1674
    .local v2, processGsmSmsUserDataHeader:Z
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-ne v6, v8, :cond_1

    .line 1675
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    packed-switch v6, :pswitch_data_0

    .line 1702
    :cond_1
    :goto_0
    :pswitch_0
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    sparse-switch v6, :sswitch_data_0

    .line 1713
    const/4 v6, -0x1

    iput-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    .line 1717
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_3

    .line 1718
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1677
    :pswitch_1
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    if-eq v6, v8, :cond_1

    .line 1678
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DecodeSMS subparm-user is91 encoding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1683
    :pswitch_2
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    if-eqz v6, :cond_1

    .line 1684
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DecodeSMS subparm-user wap encoding : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1690
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeaderExisted:Z

    if-ne v6, v8, :cond_1

    .line 1691
    const/4 v2, 0x1

    goto :goto_0

    .line 1705
    :sswitch_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_2

    .line 1706
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1709
    :cond_2
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    .line 1710
    add-int/lit8 v3, v3, 0x8

    .line 1711
    goto/16 :goto_1

    .line 1721
    :cond_3
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    .line 1722
    .local v1, numberOfCharacters:I
    add-int/lit8 v3, v3, 0x8

    .line 1724
    const/16 v0, 0x8

    .line 1725
    .local v0, bitsPerCharacters:I
    iget-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    packed-switch v6, :pswitch_data_1

    .line 1775
    :cond_4
    :goto_2
    :pswitch_4
    if-ne v2, v8, :cond_a

    .line 1776
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_6

    .line 1777
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1729
    :pswitch_5
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    packed-switch v6, :pswitch_data_2

    .line 1737
    const/4 v0, 0x6

    .line 1738
    goto :goto_2

    .line 1731
    :pswitch_6
    const/4 v0, 0x4

    .line 1732
    goto :goto_2

    .line 1744
    :pswitch_7
    const/4 v0, 0x7

    .line 1745
    goto :goto_2

    .line 1747
    :pswitch_8
    shl-int/lit8 v1, v1, 0x1

    .line 1748
    goto :goto_2

    .line 1750
    :pswitch_9
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5

    .line 1751
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit8 v6, v6, 0x2c

    if-nez v6, :cond_4

    .line 1752
    const/4 v0, 0x7

    goto :goto_2

    .line 1756
    :cond_5
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v6, v6, 0xf0

    sparse-switch v6, :sswitch_data_1

    goto :goto_2

    .line 1759
    :sswitch_1
    const/4 v0, 0x7

    .line 1760
    goto :goto_2

    .line 1762
    :sswitch_2
    iget-short v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_4

    .line 1763
    const/4 v0, 0x7

    goto :goto_2

    .line 1780
    :cond_6
    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v5

    .line 1781
    .local v5, userDataHeaderLength:I
    add-int/lit8 v3, v3, 0x8

    .line 1783
    if-lez v5, :cond_8

    .line 1784
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_7

    .line 1785
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1788
    :cond_7
    invoke-direct {p0, v3, v9, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    .line 1789
    shl-int/lit8 v6, v5, 0x3

    add-int/2addr v3, v6

    .line 1793
    :cond_8
    mul-int v6, v1, v0

    add-int/lit8 v7, v5, 0x1

    shl-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    rem-int v4, v6, v0

    .line 1795
    .local v4, userDataHeaderFillBits:I
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int v7, v3, v4

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_9

    .line 1796
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1799
    :cond_9
    add-int/2addr v3, v4

    .line 1800
    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    div-int/2addr v6, v0

    sub-int/2addr v1, v6

    .line 1803
    .end local v4           #userDataHeaderFillBits:I
    .end local v5           #userDataHeaderLength:I
    :cond_a
    if-lez v1, :cond_c

    .line 1804
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    mul-int v7, v1, v0

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    shr-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_b

    .line 1805
    const-string v6, "CDMA"

    const-string v7, "DecodeSMS subparm-user size"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 1808
    :cond_b
    invoke-direct {p0, v3, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    .line 1809
    mul-int v6, v1, v0

    add-int/2addr v3, v6

    .line 1811
    :cond_c
    return-void

    .line 1675
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1702
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 1725
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_9
    .end packed-switch

    .line 1729
    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_6
    .end packed-switch

    .line 1756
    :sswitch_data_1
    .sparse-switch
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method private decodeTeleserviceParamUserResponseCode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userResponseCode:S

    .line 1816
    return-void
.end method

.method private decodeTeleserviceParamVoiceMailMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_voiceMailsInServer:B

    .line 1878
    return-void
.end method

.method private decodeTeleserviceParamVoiceMailNotification()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2070
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v2, 0x3

    .line 2072
    .local v1, startBitIndex:I
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_0

    .line 2073
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2076
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPriority:B

    .line 2077
    add-int/lit8 v1, v1, 0x2

    .line 2079
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordExisted:Z

    .line 2080
    add-int/lit8 v1, v1, 0x1

    .line 2082
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnSetupInitUserPrompt:Z

    .line 2083
    add-int/lit8 v1, v1, 0x1

    .line 2085
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnChangePassword:Z

    .line 2086
    add-int/lit8 v1, v1, 0x1

    .line 2088
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnSetupInitUserPrompt:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnChangePassword:Z

    if-nez v2, :cond_5

    .line 2090
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_4

    .line 2091
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_1
    move v2, v4

    .line 2079
    goto :goto_0

    :cond_2
    move v2, v4

    .line 2082
    goto :goto_1

    :cond_3
    move v2, v4

    .line 2085
    goto :goto_2

    .line 2094
    :cond_4
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordMinLen:B

    .line 2095
    add-int/lit8 v1, v1, 0x4

    .line 2096
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnPasswordMaxLen:B

    .line 2097
    add-int/lit8 v1, v1, 0x4

    .line 2100
    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x43

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_6

    .line 2101
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2105
    :cond_6
    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnUnheardMessages:S

    .line 2106
    add-int/lit8 v1, v1, 0x8

    .line 2108
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnServerAlmostFull:Z

    .line 2109
    add-int/lit8 v1, v1, 0x1

    .line 2111
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnServerFull:Z

    .line 2112
    add-int/lit8 v1, v1, 0x1

    .line 2114
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAllowReply:Z

    .line 2115
    add-int/lit8 v1, v1, 0x1

    .line 2117
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnIncludeFax:Z

    .line 2118
    add-int/lit8 v1, v1, 0x1

    .line 2120
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnLengthInSeconds:S

    .line 2121
    add-int/lit8 v1, v1, 0xc

    .line 2123
    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnRetentionDays:B

    .line 2124
    add-int/lit8 v1, v1, 0x7

    .line 2126
    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnMessageId:S

    .line 2127
    add-int/lit8 v1, v1, 0x10

    .line 2129
    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnMailboxId:S

    .line 2130
    add-int/lit8 v1, v1, 0x10

    .line 2132
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v0

    .line 2134
    .local v0, digitMode:I
    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 2136
    add-int/lit8 v1, v1, 0x3

    .line 2138
    if-eqz v0, :cond_c

    .line 2139
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_b

    .line 2140
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .end local v0           #digitMode:I
    :cond_7
    move v2, v4

    .line 2108
    goto :goto_3

    :cond_8
    move v2, v4

    .line 2111
    goto :goto_4

    :cond_9
    move v2, v4

    .line 2114
    goto :goto_5

    :cond_a
    move v2, v4

    .line 2117
    goto :goto_6

    .line 2143
    .restart local v0       #digitMode:I
    :cond_b
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberPlan:B

    .line 2144
    add-int/lit8 v1, v1, 0x4

    .line 2150
    :goto_7
    if-nez v0, :cond_d

    move v2, v3

    :goto_8
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumber:[B

    .line 2151
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startBitIndex_decodeAddress:I

    .line 2153
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_e

    .line 2154
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2147
    :cond_c
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAccessNumberPlan:B

    goto :goto_7

    :cond_d
    move v2, v4

    .line 2150
    goto :goto_8

    .line 2158
    :cond_e
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v0

    .line 2160
    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 2162
    add-int/lit8 v1, v1, 0x3

    .line 2164
    if-eqz v0, :cond_10

    .line 2165
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_f

    .line 2166
    const-string v2, "CDMA"

    const-string v3, "DecodeSMS subparm-vmailNoti size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 2169
    :cond_f
    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberPlan:B

    .line 2170
    add-int/lit8 v1, v1, 0x4

    .line 2176
    :goto_9
    if-nez v0, :cond_11

    :goto_a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumber:[B

    .line 2177
    return-void

    .line 2173
    :cond_10
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnCallingPartyNumberPlan:B

    goto :goto_9

    :cond_11
    move v3, v4

    .line 2176
    goto :goto_a
.end method

.method private decodeTeleserviceParamVoiceMailNotificationAck()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/16 v6, 0x10

    .line 2181
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v2, v3, 0x3

    .line 2183
    .local v2, startBitIndex:I
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v4, v2, 0x1e

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_0

    .line 2184
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS subparm-vmailNotiAck size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 2187
    :cond_0
    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckMailboxId:S

    .line 2188
    add-int/lit8 v2, v2, 0x10

    .line 2190
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckUnheardMessages:S

    .line 2191
    add-int/lit8 v2, v2, 0x8

    .line 2193
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v0, v3

    .line 2194
    .local v0, deletedAcks:I
    add-int/lit8 v2, v2, 0x3

    .line 2196
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-short v1, v3

    .line 2197
    .local v1, playedAcks:I
    add-int/lit8 v2, v2, 0x3

    .line 2199
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    shl-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    shl-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_1

    .line 2200
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS subparm-vmailNotiAck size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 2204
    :cond_1
    invoke-direct {p0, v2, v6, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoShorts(III)[S

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckDeletedAcks:[S

    .line 2205
    shl-int/lit8 v3, v0, 0x4

    add-int/2addr v2, v3

    .line 2207
    invoke-direct {p0, v2, v6, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoShorts(III)[S

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_vmnAckPlayedAcks:[S

    .line 2208
    shl-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 2209
    return-void
.end method

.method private decodeTeleserviceRawMessageWaitingIndication([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1530
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1531
    return-void
.end method

.method private decodeTeleserviceReadAck([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1519
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1520
    return-void
.end method

.method private decodeTeleserviceSingleParameter(B)V
    .locals 1
    .parameter "param_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1577
    packed-switch p1, :pswitch_data_0

    .line 1650
    :goto_0
    :pswitch_0
    return-void

    .line 1579
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageID()V

    goto :goto_0

    .line 1583
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_userData:I

    .line 1584
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_userData:I

    goto :goto_0

    .line 1587
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamUserResponseCode()V

    goto :goto_0

    .line 1590
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageCenterTimeStamp()V

    goto :goto_0

    .line 1593
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamAbsoluteValidity()V

    goto :goto_0

    .line 1596
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamRelativeValidity()V

    goto :goto_0

    .line 1603
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamPriority()V

    goto :goto_0

    .line 1606
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamPrivacy()V

    goto :goto_0

    .line 1609
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamReplyOption()V

    goto :goto_0

    .line 1612
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailMessages()V

    goto :goto_0

    .line 1615
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamAlertOnMessageDelivery()V

    goto :goto_0

    .line 1618
    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamLanguage()V

    goto :goto_0

    .line 1621
    :pswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamCallBack()V

    goto :goto_0

    .line 1624
    :pswitch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamDisplayMode()V

    goto :goto_0

    .line 1627
    :pswitch_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMultiEncodingUserData()V

    goto :goto_0

    .line 1630
    :pswitch_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamMessageIdInCenter()V

    goto :goto_0

    .line 1633
    :pswitch_11
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamBroadcastServiceSetting()V

    goto :goto_0

    .line 1638
    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamErrorCode()V

    goto :goto_0

    .line 1641
    :pswitch_13
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamGsmTpFailure()V

    goto :goto_0

    .line 1644
    :pswitch_14
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailNotification()V

    goto :goto_0

    .line 1647
    :pswitch_15
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamVoiceMailNotificationAck()V

    goto :goto_0

    .line 1577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private decodeTeleserviceSubParam([[B)V
    .locals 10
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1538
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v4

    .line 1539
    .local v4, param_id:B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {p0, v4, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v8

    aput-boolean v8, v7, v4

    .line 1540
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v4

    if-ne v7, v9, :cond_3

    .line 1541
    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue;->fixedLengthSubparameter:[B

    aget-byte v6, v7, v4

    .line 1542
    .local v6, parameterLength:I
    if-eqz v6, :cond_1

    iget-short v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    if-ne v6, v7, :cond_2

    .line 1543
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1545
    .local v1, current_dataEnd:I
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1546
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSingleParameter(B)V

    .line 1547
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1548
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1559
    .end local v1           #current_dataEnd:I
    .end local v6           #parameterLength:I
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v7, v8, :cond_0

    .line 1561
    aget-object v0, p1, v9

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-byte v5, v0, v2

    .line 1562
    .local v5, param_required:B
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v5

    if-eq v7, v9, :cond_4

    .line 1563
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS required subparm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not existed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1551
    .end local v0           #arr$:[B
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #param_required:B
    .restart local v6       #parameterLength:I
    :cond_2
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS subparm-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1557
    .end local v6           #parameterLength:I
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 1561
    .restart local v0       #arr$:[B
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #param_required:B
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1568
    .end local v5           #param_required:B
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v7, v7, v9

    if-ne v7, v9, :cond_6

    .line 1569
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_userData:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 1570
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_userData:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 1571
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceParamUserData()V

    .line 1573
    :cond_6
    return-void
.end method

.method private decodeTeleserviceSubmitReport([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1524
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1525
    return-void
.end method

.method private decodeTeleserviceUserAck([[B)V
    .locals 0
    .parameter "filtersApplied"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1514
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceSubParam([[B)V

    .line 1515
    return-void
.end method

.method private decodeTimeStamp()[S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 787
    const/4 v3, 0x6

    new-array v0, v3, [S

    .line 788
    .local v0, absoluteTime:[S
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v3, 0x3

    .line 790
    .local v1, startBitIndex:I
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    int-to-short v3, v3

    aput-short v3, v0, v7

    .line 792
    add-int/lit8 v1, v1, 0x8

    .line 793
    aget-short v3, v0, v7

    const/16 v4, 0x7cc

    if-ge v3, v4, :cond_0

    .line 794
    aget-short v3, v0, v7

    add-int/lit8 v3, v3, 0x64

    int-to-short v3, v3

    aput-short v3, v0, v7

    .line 796
    :cond_0
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v6

    .line 798
    add-int/lit8 v1, v1, 0x8

    .line 799
    aget-short v3, v0, v6

    if-lt v3, v6, :cond_1

    aget-short v3, v0, v6

    const/16 v4, 0xc

    if-le v3, v4, :cond_3

    :cond_1
    move-object v0, v2

    .line 828
    .end local v0           #absoluteTime:[S
    :cond_2
    :goto_0
    return-object v0

    .line 803
    .restart local v0       #absoluteTime:[S
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v8

    .line 805
    add-int/lit8 v1, v1, 0x8

    .line 806
    aget-short v3, v0, v8

    if-lt v3, v6, :cond_4

    aget-short v3, v0, v8

    const/16 v4, 0x1f

    if-le v3, v4, :cond_5

    :cond_4
    move-object v0, v2

    .line 808
    goto :goto_0

    .line 810
    :cond_5
    const/4 v3, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 812
    add-int/lit8 v1, v1, 0x8

    .line 813
    const/4 v3, 0x3

    aget-short v3, v0, v3

    const/16 v4, 0x17

    if-le v3, v4, :cond_6

    move-object v0, v2

    .line 814
    goto :goto_0

    .line 816
    :cond_6
    const/4 v3, 0x4

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 818
    add-int/lit8 v1, v1, 0x8

    .line 819
    const/4 v3, 0x4

    aget-short v3, v0, v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_7

    move-object v0, v2

    .line 820
    goto :goto_0

    .line 822
    :cond_7
    const/4 v3, 0x5

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 824
    add-int/lit8 v1, v1, 0x8

    .line 825
    const/4 v3, 0x5

    aget-short v3, v0, v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_2

    move-object v0, v2

    .line 826
    goto :goto_0
.end method

.method private decodeTransport()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 922
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v9, v10

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    .line 923
    const-string v9, "CDMA"

    const-string v10, "DecodeSMS Transport size"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 927
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v9, v9, v10

    iput-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    .line 928
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 929
    iget-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE:[B

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v9

    if-nez v9, :cond_1

    .line 930
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DecodeSMS Transport type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not allowed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 934
    :cond_1
    const/16 v9, 0x9

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    .line 935
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_TRANSPORT_TYPE_param_list:[[B

    iget-byte v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    aget-object v6, v9, v10

    .line 939
    .local v6, param_accepted:[B
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeParameter_header()B

    move-result v7

    .line 940
    .local v7, param_id:B
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v7

    if-nez v9, :cond_5

    .line 941
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->existInGivenList(B[B)Z

    move-result v10

    aput-boolean v10, v9, v7

    .line 942
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v7

    if-ne v9, v11, :cond_4

    .line 943
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 945
    .local v1, current_dataEnd:I
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 946
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParameter(B)V

    .line 947
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 948
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 957
    .end local v1           #current_dataEnd:I
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    if-gt v9, v10, :cond_2

    .line 959
    const/4 v2, 0x1

    .line 961
    .local v2, dataPrepared:Z
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_TRANSPORT_TYPE_param_list:[[B

    iget-byte v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    aget-object v0, v9, v10

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-byte v8, v0, v4

    .line 962
    .local v8, param_required:B
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v8

    if-eq v9, v11, :cond_3

    .line 963
    const/4 v2, 0x0

    .line 961
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 951
    .end local v0           #arr$:[B
    .end local v2           #dataPrepared:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #param_required:B
    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 955
    :cond_5
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iget-short v10, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->param_len:S

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    goto :goto_0

    .line 967
    .restart local v0       #arr$:[B
    .restart local v2       #dataPrepared:Z
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_6
    if-eqz v2, :cond_8

    .line 968
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v13

    if-ne v9, v11, :cond_7

    .line 969
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 970
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 971
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleservice()V

    .line 993
    :cond_7
    :goto_2
    return-void

    .line 977
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v12

    if-ne v9, v11, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    const/16 v10, 0x1003

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    aget-boolean v9, v9, v13

    if-ne v9, v11, :cond_9

    .line 980
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    .line 981
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    .line 983
    const/4 v9, 0x2

    new-array v3, v9, [[B

    .line 984
    .local v3, filtersApplied:[[B
    const/16 v9, 0x18

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 985
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->accepted_subparam_raw_message_waiting_indication:[B

    aput-object v9, v3, v12

    .line 986
    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->required_subparam_raw_message_waiting_indication:[B

    aput-object v9, v3, v11

    .line 987
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTeleserviceRawMessageWaitingIndication([[B)V

    goto :goto_2

    .line 989
    .end local v3           #filtersApplied:[[B
    :cond_9
    const-string v9, "CDMA"

    const-string v10, "DecodeSMS required parms not existed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9
.end method

.method private decodeTransportParamBearerReplyOption()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1262
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-reply size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    .line 1267
    return-void
.end method

.method private decodeTransportParamCauseCodes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x6b

    const/16 v6, 0x42

    const/16 v5, 0x30

    const/16 v4, 0x27

    const/4 v3, 0x5

    .line 1271
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1272
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-cause size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1276
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    .line 1277
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    .line 1279
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    if-eqz v1, :cond_1

    .line 1280
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 1282
    const/16 v1, 0x6a

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    .line 1312
    :cond_1
    :goto_0
    return-void

    .line 1285
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    .line 1286
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    and-int/lit16 v0, v1, 0xff

    .line 1287
    .local v0, causeDetail:I
    if-le v0, v3, :cond_3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    .line 1289
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1292
    :cond_3
    if-le v0, v4, :cond_4

    if-ge v0, v5, :cond_4

    .line 1294
    iput-byte v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1297
    :cond_4
    if-lt v0, v5, :cond_5

    const/16 v1, 0x40

    if-ge v0, v1, :cond_5

    .line 1299
    const/16 v1, 0x24

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1302
    :cond_5
    if-le v0, v6, :cond_6

    const/16 v1, 0x60

    if-ge v0, v1, :cond_6

    .line 1304
    iput-byte v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0

    .line 1307
    :cond_6
    if-le v0, v7, :cond_1

    .line 1308
    iput-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    goto :goto_0
.end method

.method private decodeTransportParamDestAddress()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1099
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v3, v6

    if-ge v3, v4, :cond_0

    .line 1100
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS parm-address size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 1104
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0x80

    shr-int/lit8 v0, v3, 0x7

    .line 1105
    .local v0, digitMode:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x40

    shr-int/lit8 v1, v3, 0x6

    .line 1107
    .local v1, numberMode:I
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v3, 0x2

    .line 1109
    .local v2, startBitIndex:I
    if-eqz v0, :cond_4

    .line 1110
    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    const/4 v6, 0x3

    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v6

    int-to-byte v6, v6

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1112
    add-int/lit8 v2, v2, 0x3

    .line 1117
    if-nez v1, :cond_3

    .line 1118
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    if-ge v3, v6, :cond_2

    .line 1119
    const-string v3, "CDMA"

    const-string v4, "DecodeSMS parm-address size"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_1
    move v3, v5

    .line 1110
    goto :goto_0

    .line 1123
    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    .line 1124
    add-int/lit8 v2, v2, 0x4

    .line 1135
    :goto_1
    if-nez v0, :cond_5

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    .line 1136
    return-void

    .line 1127
    :cond_3
    iput-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    goto :goto_1

    .line 1131
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1132
    iput-byte v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddrPlan:B

    goto :goto_1

    :cond_5
    move v4, v5

    .line 1135
    goto :goto_2
.end method

.method private decodeTransportParamOrigAddress()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1057
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v1, v4

    if-ge v1, v2, :cond_0

    .line 1058
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-address size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 1062
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    .line 1063
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x40

    shr-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    .line 1065
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, 0x2

    .line 1067
    .local v0, startBitIndex:I
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    if-eqz v1, :cond_4

    .line 1068
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    const/4 v4, 0x3

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1070
    add-int/lit8 v0, v0, 0x3

    .line 1075
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    if-nez v1, :cond_3

    .line 1076
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    if-ge v1, v4, :cond_2

    .line 1077
    const-string v1, "CDMA"

    const-string v2, "DecodeSMS parm-address size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_1
    move v1, v3

    .line 1068
    goto :goto_0

    .line 1081
    :cond_2
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    .line 1082
    add-int/lit8 v0, v0, 0x4

    .line 1093
    :goto_1
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    .line 1094
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    if-nez v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeAddress(IZLcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    .line 1095
    return-void

    .line 1085
    :cond_3
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    goto :goto_1

    .line 1089
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 1090
    iput-byte v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    goto :goto_1

    :cond_5
    move v2, v3

    .line 1094
    goto :goto_2
.end method

.method private decodeTransportParamServiceCategory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1047
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-category size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_typeOfService:I

    .line 1053
    return-void
.end method

.method private decodeTransportParamSubAddress()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x8

    .line 1140
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 1141
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1145
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xe0

    shr-int/lit8 v7, v7, 0x5

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    .line 1146
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0x10

    shr-int/lit8 v5, v7, 0x4

    .line 1147
    .local v5, oddCHARi:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int v4, v7, v8

    .line 1149
    .local v4, numberOfCharacters:I
    if-nez v4, :cond_2

    .line 1257
    :cond_1
    :goto_0
    return-void

    .line 1152
    :cond_2
    shl-int/lit8 v7, v4, 0x1

    sub-int v4, v7, v5

    .line 1153
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v7, v8

    shr-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_3

    .line 1154
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1158
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    shl-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v7, 0xc

    .line 1162
    .local v6, startBitIndex:I
    iget-byte v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    packed-switch v7, :pswitch_data_0

    .line 1254
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddrType:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1164
    :pswitch_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x8

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    .line 1165
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1168
    :cond_4
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v2

    .line 1169
    .local v2, afiField:I
    add-int/lit8 v6, v6, 0x8

    .line 1170
    add-int/lit8 v4, v4, -0x2

    .line 1172
    sparse-switch v2, :sswitch_data_0

    .line 1244
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress-NSAP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1174
    :sswitch_0
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x10

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_5

    .line 1175
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1178
    :cond_5
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/lit8 v8, v6, 0x8

    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBCDnumber(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-short v0, v7

    .line 1180
    .local v0, NSAP_internetCodePoint:S
    add-int/lit8 v6, v6, 0x10

    .line 1182
    packed-switch v0, :pswitch_data_1

    .line 1214
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DecodeSMS unknown parm-subaddress-NSAP-IP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1184
    :pswitch_1
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit16 v8, v6, 0x80

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_6

    .line 1185
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1188
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1189
    .local v3, ipAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, addrIndex:I
    :goto_1
    if-ge v1, v10, :cond_8

    .line 1190
    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1191
    add-int/lit8 v6, v6, 0x10

    .line 1192
    const/4 v7, 0x7

    if-ge v1, v7, :cond_7

    .line 1193
    new-instance v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1189
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1196
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 1199
    .end local v1           #addrIndex:I
    .end local v3           #ipAddress:Ljava/lang/String;
    :pswitch_2
    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    add-int/lit8 v8, v6, 0x20

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_9

    .line 1200
    const-string v7, "CDMA"

    const-string v8, "DecodeSMS parm-subaddress size"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 1203
    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1204
    .restart local v3       #ipAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_2
    if-ge v1, v11, :cond_b

    .line 1205
    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1206
    add-int/lit8 v6, v6, 0x8

    .line 1207
    const/4 v7, 0x3

    if-ge v1, v7, :cond_a

    .line 1208
    new-instance v7, Ljava/lang/String;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1204
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1211
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 1219
    .end local v0           #NSAP_internetCodePoint:S
    .end local v1           #addrIndex:I
    .end local v3           #ipAddress:Ljava/lang/String;
    :sswitch_1
    shr-int/lit8 v4, v4, 0x1

    .line 1220
    const/16 v7, 0x13

    if-le v4, v7, :cond_c

    .line 1222
    const/16 v4, 0x13

    .line 1224
    :cond_c
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1225
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_3
    if-ge v1, v4, :cond_1

    .line 1226
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 1227
    add-int/lit8 v6, v6, 0x8

    .line 1225
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1231
    .end local v1           #addrIndex:I
    :sswitch_2
    shr-int/lit8 v4, v4, 0x1

    .line 1232
    const/16 v7, 0x9

    if-le v4, v7, :cond_d

    .line 1234
    const/16 v4, 0x9

    .line 1236
    :cond_d
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1237
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_4
    if-ge v1, v4, :cond_1

    .line 1238
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 1239
    add-int/lit8 v6, v6, 0x8

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1249
    .end local v1           #addrIndex:I
    .end local v2           #afiField:I
    :pswitch_3
    invoke-direct {p0, v6, v11, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeBitStreamIntoBytes(III)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_subAddr:[B

    .line 1250
    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    .line 1252
    goto/16 :goto_0

    .line 1162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1172
    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch

    .line 1182
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeTransportParamTeleserviceId()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1035
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1036
    const-string v0, "CDMA"

    const-string v1, "DecodeSMS parm-id size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    .line 1042
    return-void
.end method

.method private decodeTransportParameter(B)V
    .locals 3
    .parameter "param_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    packed-switch p1, :pswitch_data_0

    .line 1028
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecodeSMS unknown parms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 999
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamTeleserviceId()V

    .line 1031
    :goto_0
    return-void

    .line 1002
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamServiceCategory()V

    goto :goto_0

    .line 1005
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamOrigAddress()V

    goto :goto_0

    .line 1008
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamSubAddress()V

    goto :goto_0

    .line 1011
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamDestAddress()V

    goto :goto_0

    .line 1014
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamSubAddress()V

    goto :goto_0

    .line 1017
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamBearerReplyOption()V

    goto :goto_0

    .line 1020
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransportParamCauseCodes()V

    goto :goto_0

    .line 1024
    :pswitch_8
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    .line 1025
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    goto :goto_0

    .line 997
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private existInGivenList(B[B)Z
    .locals 5
    .parameter "checkItem"
    .parameter "givenList"

    .prologue
    .line 590
    move-object v0, p2

    .local v0, arr$:[B
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    .line 591
    .local v3, listItem:B
    if-ne v3, p1, :cond_0

    .line 592
    const/4 v4, 0x1

    .line 595
    .end local v3           #listItem:B
    :goto_1
    return v4

    .line 590
    .restart local v3       #listItem:B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v3           #listItem:B
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private existInGivenList(I[I)Z
    .locals 5
    .parameter "checkItem"
    .parameter "givenList"

    .prologue
    .line 601
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 602
    .local v3, listItem:I
    if-ne v3, p1, :cond_0

    .line 603
    const/4 v4, 0x1

    .line 606
    .end local v3           #listItem:I
    :goto_1
    return v4

    .line 601
    .restart local v3       #listItem:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v3           #listItem:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private extendArray([B)[B
    .locals 3
    .parameter "givenArray"

    .prologue
    const/4 v2, 0x0

    .line 878
    if-nez p1, :cond_0

    .line 879
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 885
    .local v0, extendedArray:[B
    :goto_0
    return-object v0

    .line 882
    .end local v0           #extendedArray:[B
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 883
    .restart local v0       #extendedArray:[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private extendArray([S)[S
    .locals 3
    .parameter "givenArray"

    .prologue
    const/4 v2, 0x0

    .line 892
    if-nez p1, :cond_0

    .line 893
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 899
    .local v0, extendedArray:[S
    :goto_0
    return-object v0

    .line 896
    .end local v0           #extendedArray:[S
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [S

    .line 897
    .restart local v0       #extendedArray:[S
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private extendArray([[B)[[B
    .locals 3
    .parameter "givenArray"

    .prologue
    const/4 v2, 0x0

    .line 906
    if-nez p1, :cond_0

    .line 907
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 913
    .local v0, extendedArray:[[B
    :goto_0
    return-object v0

    .line 910
    .end local v0           #extendedArray:[[B
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [[B

    .line 911
    .restart local v0       #extendedArray:[[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z
    .locals 3
    .parameter "layer"
    .parameter "field"

    .prologue
    .line 2214
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsDecoder$messageLayer:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2222
    const/4 v1, 0x0

    .line 2224
    :goto_0
    return v1

    .line 2216
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParameters:[Z

    .line 2224
    .local v0, parameters:[Z
    :goto_1
    aget-boolean v1, v0, p2

    goto :goto_0

    .line 2219
    .end local v0           #parameters:[Z
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    .line 2220
    .restart local v0       #parameters:[Z
    goto :goto_1

    .line 2214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private translateAddrNumberType(ZB)Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .locals 2
    .parameter "dataNetwork"
    .parameter "numberType"

    .prologue
    .line 665
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_RESERVED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 666
    .local v0, returnValue:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 667
    packed-switch p2, :pswitch_data_0

    .line 705
    :goto_0
    return-object v0

    .line 669
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN_DATA_NETWORK:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 670
    goto :goto_0

    .line 672
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_PROTOCOL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 673
    goto :goto_0

    .line 675
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNET_EMAIL_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 676
    goto :goto_0

    .line 682
    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 684
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 685
    goto :goto_0

    .line 687
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 688
    goto :goto_0

    .line 690
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 691
    goto :goto_0

    .line 693
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_NETWORK_SPECIFIC:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 694
    goto :goto_0

    .line 696
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_SUBSCRIBER:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 697
    goto :goto_0

    .line 699
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_ABBREVIATED:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 700
    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 682
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public absoluteValidatyPeriodInMilliSeconds()J
    .locals 8

    .prologue
    .line 2350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2351
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2352
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v6, 0x4

    aget-short v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_absoluteValidity:[S

    const/4 v7, 0x5

    aget-short v6, v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2358
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public causeCode()I
    .locals 1

    .prologue
    .line 2309
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_causeDetail:B

    return v0
.end method

.method public decodePdu()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodeTransport()V

    .line 568
    return-void
.end method

.method public errorClass()I
    .locals 1

    .prologue
    .line 2305
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_errorClass:B

    return v0
.end method

.method public getBearerData()[B
    .locals 5

    .prologue
    .line 2550
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->dataEnd_bearerData:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    sub-int v1, v2, v3

    .line 2551
    .local v1, length:I
    new-array v0, v1, [B

    .line 2552
    .local v0, data:[B
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->startIndex_bearerData:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2553
    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    .prologue
    .line 2531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestinationAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2438
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-object v0

    .line 2441
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    if-eqz v1, :cond_0

    .line 2444
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2445
    .local v0, address:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2446
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_destAddr:[B

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2465
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 2469
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isMessageDisplayModeSet()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageDisplayMode()B

    move-result v0

    if-nez v0, :cond_0

    .line 2471
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    .line 2473
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getNumberOfVoiceMail()I
    .locals 2

    .prologue
    .line 2367
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2368
    const/4 v0, -0x1

    .line 2370
    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_voiceMailsInServer:B

    goto :goto_0
.end method

.method public getNumberTypeValue(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)B
    .locals 5
    .parameter "numberType"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2411
    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaSmsIdValue$AddrNumberType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2432
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 2415
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 2417
    goto :goto_0

    .line 2419
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2421
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2423
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 2427
    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 2429
    goto :goto_0

    .line 2411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2390
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2406
    :cond_0
    :goto_0
    return-object v0

    .line 2393
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    if-eqz v1, :cond_0

    .line 2397
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2398
    .local v0, address:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 2399
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddr:[B

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 2401
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrDigitMode:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2402
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberMode:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 2403
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getNumberTypeValue(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;)B

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 2404
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrPlan:B

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 2405
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_fromAddrNumberOfDigits:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 2504
    const/4 v0, 0x0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2481
    const-string v0, ""

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2382
    const-string v0, ""

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2526
    const/4 v0, 0x0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 3

    .prologue
    .line 2489
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isMessageCenterTimeSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2490
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageCenterTimeInMilliSeconds()J

    move-result-wide v0

    .line 2497
    .local v0, scTimeMillis:J
    :goto_0
    return-wide v0

    .line 2491
    .end local v0           #scTimeMillis:J
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isAbsoluteValidatyPeriodSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2492
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->absoluteValidatyPeriodInMilliSeconds()J

    move-result-wide v0

    .restart local v0       #scTimeMillis:J
    goto :goto_0

    .line 2495
    .end local v0           #scTimeMillis:J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .restart local v0       #scTimeMillis:J
    goto :goto_0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    .prologue
    .line 2456
    const/4 v0, 0x0

    return v0
.end method

.method public getToaOfScAddress()I
    .locals 1

    .prologue
    .line 2452
    const/4 v0, 0x0

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->smsData:[B

    return-object v0
.end method

.method public isAbsoluteValidatyPeriodSet()Z
    .locals 2

    .prologue
    .line 2346
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isCallbackNumberSet()Z
    .locals 2

    .prologue
    .line 2363
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isMessageCenterTimeSet()Z
    .locals 2

    .prologue
    .line 2329
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isMessageDisplayModeSet()Z
    .locals 2

    .prologue
    .line 2321
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 2539
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isCallbackNumberSet()Z

    move-result v0

    return v0
.end method

.method public isUnsupportedMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2546
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public messageCenterTimeInMilliSeconds()J
    .locals 8

    .prologue
    .line 2333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2334
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2335
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v6, 0x4

    aget-short v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_messageCenterTimeStamp:[S

    const/4 v7, 0x5

    aget-short v6, v6, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2341
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public messageDisplayMode()B
    .locals 1

    .prologue
    .line 2325
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_displayMode:B

    return v0
.end method

.method public messageType()I
    .locals 1

    .prologue
    .line 2297
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportMsgType:B

    return v0
.end method

.method public replyOptionSeq()I
    .locals 1

    .prologue
    .line 2301
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_replySeqNumber:B

    return v0
.end method

.method public retrieveBody()[B
    .locals 2

    .prologue
    .line 2255
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2256
    const/4 v0, 0x0

    .line 2261
    :goto_0
    return-object v0

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    if-nez v0, :cond_1

    .line 2259
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    .line 2261
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    goto :goto_0
.end method

.method public retrieveBodyAsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2265
    const/4 v0, 0x0

    .line 2267
    .local v0, rtValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2282
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/String;

    .end local v0           #rtValue:Ljava/lang/String;
    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2285
    .restart local v0       #rtValue:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 2269
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    array-length v3, v3

    shr-int/lit8 v3, v3, 0x1

    new-array v2, v3, [C

    .line 2270
    .local v2, unicodeText:[C
    const/4 v1, 0x0

    .local v1, unicodeIndex:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2271
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    shl-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    shl-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 2270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2274
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0           #rtValue:Ljava/lang/String;
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 2275
    .restart local v0       #rtValue:Ljava/lang/String;
    goto :goto_0

    .line 2277
    .end local v1           #unicodeIndex:I
    .end local v2           #unicodeText:[C
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    .end local v0           #rtValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 2278
    .restart local v0       #rtValue:Ljava/lang/String;
    goto :goto_0

    .line 2267
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public retrieveBodyEncoding()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2228
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2251
    :cond_0
    :goto_0
    return v1

    .line 2231
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userData:[B

    if-eqz v2, :cond_0

    .line 2235
    const/4 v0, 0x0

    .line 2236
    .local v0, isUnicodeBytes:Z
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncoding:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2237
    const/4 v0, 0x1

    .line 2248
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 2249
    const/4 v1, 0x3

    goto :goto_0

    .line 2240
    :cond_3
    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    if-ltz v1, :cond_2

    .line 2241
    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v1, v1, 0xbc

    const/16 v2, 0x18

    if-eq v1, v2, :cond_4

    iget-short v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataEncodingExtended:S

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    .line 2243
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 2251
    :cond_5
    const/4 v1, 0x5

    goto :goto_0
.end method

.method public retrieveUserDataHeader()[B
    .locals 2

    .prologue
    .line 2289
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TELESERVICE:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2290
    const/4 v0, 0x0

    .line 2292
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    goto :goto_0
.end method

.method public teleserviceCategory()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2314
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;->TRANSPORT:Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->isFieldExistedInMessage(Lcom/android/internal/telephony/cdma/CdmaSmsDecoder$messageLayer;B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2317
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TransportParam_teleserviceCategory:I

    goto :goto_0
.end method
