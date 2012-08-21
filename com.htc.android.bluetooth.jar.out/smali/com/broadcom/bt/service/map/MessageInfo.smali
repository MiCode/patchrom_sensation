.class public Lcom/broadcom/bt/service/map/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SUBJECT_LENGTH_ALLOWED:I = 0xff

.field public static final MSG_RECEPTION_STATUS_COMPLETE:B = 0x0t

.field public static final MSG_RECEPTION_STATUS_FRACTION:B = 0x1t

.field public static final MSG_RECEPTION_STATUS_NOTIFICATION:B = 0x2t

.field public static final MSG_TYPE_EMAIL:B = 0x1t

.field public static final MSG_TYPE_MMS:B = 0x8t

.field public static final MSG_TYPE_SMS_CDMA:B = 0x4t

.field public static final MSG_TYPE_SMS_GSM:B = 0x2t

.field private static final UTF8_DATA_FIRST_2_BYTES_MASK:B = -0x40t

.field private static final UTF8_DATA_FIRST_2_BYTES_VALUE:B = -0x80t


# instance fields
.field public mAttachmentSize:I

.field public mDateTime:Ljava/lang/String;

.field public mIsHighPriority:Z

.field public mIsOutbound:Z

.field public mIsProtected:Z

.field public mIsRead:Z

.field public mIsSent:Z

.field public mMsgHandle:Ljava/lang/String;

.field public mMsgSize:I

.field public mMsgType:B

.field public mParameterMask:I

.field public mReceptionStatus:B

.field public mRecipientName:Ljava/lang/String;

.field public mRecipientRddressing:Ljava/lang/String;

.field public mReplyToAddressing:Ljava/lang/String;

.field public mSenderAddressing:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSubject:Ljava/lang/String;

.field public mText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/broadcom/bt/service/map/MessageInfo$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/MessageInfo$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/map/MessageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 39
    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 40
    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 41
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 42
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 43
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 44
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 45
    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public constructor <init>(IIIZZZZZLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "parameter_mask"
    .parameter "msg_size"
    .parameter "attachment_size"
    .parameter "text"
    .parameter "highpriority"
    .parameter "read"
    .parameter "sent"
    .parameter "is_protected"
    .parameter "msg_handle"
    .parameter "msg_type"
    .parameter "reception_status"
    .parameter "subject"
    .parameter "date_time"
    .parameter "sender_name"
    .parameter "sender_addressing"
    .parameter "recipient_name"
    .parameter "recipient_addressing"
    .parameter "replyto_addressing"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 49
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 132
    iput p1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 133
    iput p2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 134
    iput p3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 135
    iput-boolean p4, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 136
    iput-boolean p5, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 137
    iput-boolean p6, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 138
    iput-boolean p7, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 139
    iput-boolean p8, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 140
    iput-object p9, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 141
    iput-byte p10, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 142
    iput-byte p11, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 143
    iput-object p12, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 144
    iput-object p13, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 39
    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 40
    iput v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 41
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 42
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 43
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 44
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 45
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 98
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 103
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 108
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iput-boolean v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 114
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 124
    return-void

    .line 91
    :cond_0
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    goto :goto_0

    .line 96
    :cond_1
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    goto :goto_1

    .line 101
    :cond_2
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    goto :goto_2

    .line 106
    :cond_3
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    goto :goto_3

    .line 111
    :cond_4
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    goto :goto_4
.end method

.method private getMaxLengthOfCompletedSubject([BI)I
    .locals 4
    .parameter "data"
    .parameter "maxSubjectLength"

    .prologue
    const/4 v1, 0x0

    .line 253
    move v0, p2

    .line 255
    .local v0, nIdx:I
    array-length v2, p1

    if-gt v2, p2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    :goto_1
    if-lez v0, :cond_0

    .line 261
    const/16 v2, -0x80

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, -0x40

    if-ne v2, v3, :cond_2

    .line 262
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 265
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public setSubject(Ljava/lang/String;I)V
    .locals 6
    .parameter "subject"
    .parameter "maxSubjectLength"

    .prologue
    const/4 v5, 0x0

    .line 159
    const/16 v3, 0xff

    if-ge v3, p2, :cond_0

    .line 160
    const/16 p2, 0xff

    .line 163
    :cond_0
    if-nez p1, :cond_1

    .line 164
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 189
    :goto_0
    return-void

    .line 165
    :cond_1
    if-gtz p2, :cond_2

    .line 167
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 170
    .local v1, subjectByteArray:[B
    array-length v2, v1

    .line 172
    .local v2, subjectRealLength:I
    if-le v2, p2, :cond_4

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, properSubjectLength:I
    const/4 v3, 0x4

    if-ge v3, p2, :cond_3

    .line 177
    add-int/lit8 v3, p2, -0x4

    invoke-direct {p0, v1, v3}, Lcom/broadcom/bt/service/map/MessageInfo;->getMaxLengthOfCompletedSubject([BI)I

    move-result v0

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v5, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/broadcom/bt/service/map/MessageInfo;->getMaxLengthOfCompletedSubject([BI)I

    move-result v0

    .line 181
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v5, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 186
    .end local v0           #properSubjectLength:I
    :cond_4
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "parameter_mask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " msg_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " attachment_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, " highpriority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, " read = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " sent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, " is_protected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " msg_handle  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, " msg_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, " reception_status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " subject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " date_time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " sender_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, " sender_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " recepient_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, " recipient_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, " replyto_addressing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    goto :goto_2

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    goto :goto_3

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    goto :goto_4

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    if-ne v0, v2, :cond_0

    .line 201
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 205
    :goto_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    if-ne v0, v2, :cond_1

    .line 206
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 210
    :goto_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    if-ne v0, v2, :cond_2

    .line 211
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 215
    :goto_2
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    if-ne v0, v2, :cond_3

    .line 216
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 220
    :goto_3
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    if-ne v0, v2, :cond_4

    .line 221
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    :goto_4
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 228
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 218
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    .line 223
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4
.end method
