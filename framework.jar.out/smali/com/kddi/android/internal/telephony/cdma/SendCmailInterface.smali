.class public Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;
.super Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;
.source "SendCmailInterface.java"


# static fields
.field private static OUTPUT_VERBOSE_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SendCmailInterface"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const/4 v1, 0x1

    sput-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    .line 30
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 31
    .local v0, type:Ljava/lang/String;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const/4 v1, 0x0

    sput-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    .line 34
    :cond_0
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_1

    .line 35
    const-string v1, "SendCmailInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;-><init>()V

    .line 41
    sput-object p1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->mContext:Landroid/content/Context;

    .line 42
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "SendCmailInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constractor context["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    const-string/jumbo v0, "iSendCmail"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    const-string/jumbo v0, "iSendCmail"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "SendCmailInterface"

    const-string v1, "addService[iSendCmail]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiGetInstance()Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    move-result-object v0

    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->setISmsInterface(Lcom/android/internal/telephony/ISms;)V

    .line 56
    return-void
.end method

.method private static callingWithMmsAppSignature(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 158
    .local v0, mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->getMmsAppSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->checkCallingSignature(Landroid/content/pm/PackageManager;ILandroid/content/pm/Signature;Z)Z

    move-result v1

    return v1
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;ILandroid/content/pm/Signature;Z)Z
    .locals 9
    .parameter "mPm"
    .parameter "callingUid"
    .parameter "matching"
    .parameter "delayWhenNotMatch"

    .prologue
    const/4 v5, 0x1

    .line 164
    if-nez p2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v5

    .line 167
    :cond_1
    invoke-static {p0, p1}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 168
    .local v1, callingSignatures:[Landroid/content/pm/Signature;
    if-eqz v1, :cond_3

    .line 169
    move-object v0, v1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 170
    .local v4, sig:Landroid/content/pm/Signature;
    invoke-virtual {v4, p2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    sget-boolean v6, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v6, :cond_0

    .line 172
    const-string v6, "SendCmailInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signatures match for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sig:Landroid/content/pm/Signature;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getMmsAppSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 6
    .parameter "mPm"

    .prologue
    const/4 v2, 0x0

    .line 134
    :try_start_0
    const-string v3, "com.android.mms"

    const/16 v4, 0x40

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 136
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    .line 137
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_0

    .line 138
    const-string v3, "SendCmailInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg signatures length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 144
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 152
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v2

    .line 138
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v2, :cond_2

    .line 149
    const-string v2, "SendCmailInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get pkg info fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getUidSignatures(Landroid/content/pm/PackageManager;I)[Landroid/content/pm/Signature;
    .locals 11
    .parameter "mPm"
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    .line 190
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, packages:[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v8, v4

    if-lez v8, :cond_4

    .line 192
    sget-boolean v8, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v8, :cond_0

    .line 193
    const-string v8, "SendCmailInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Packages with UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 195
    .local v5, pkg:Ljava/lang/String;
    const-string v8, "SendCmailInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkg:Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/16 v9, 0x40

    invoke-virtual {p0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 203
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_3

    .line 204
    sget-boolean v8, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v8, :cond_1

    .line 205
    const-string v8, "SendCmailInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signatures for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v10, :cond_2

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 217
    .end local v4           #packages:[Ljava/lang/String;
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_2
    return-object v7

    .line 205
    .restart local v4       #packages:[Ljava/lang/String;
    .restart local v6       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    goto :goto_1

    .line 210
    :cond_3
    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v7, :cond_4

    .line 211
    const-string v7, "SendCmailInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No packageInfo found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v4           #packages:[Ljava/lang/String;
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_3
    const/4 v7, 0x0

    goto :goto_2

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public cancelCmail(Landroid/app/PendingIntent;)Z
    .locals 3
    .parameter "cancelIntent"

    .prologue
    .line 120
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "SendCmailInterface"

    const-string v2, "cancelCmail Called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiGetInstance()Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    move-result-object v0

    .line 127
    .local v0, packetSMSManager:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
    invoke-virtual {v0, p1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSendCancel(Landroid/app/PendingIntent;)Z

    move-result v1

    return v1
.end method

.method public sendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "sendingMode"

    .prologue
    .line 69
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "SendCmailInterface"

    const-string/jumbo v2, "snedCmail Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "SendCmailInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "snedCmail by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiGetInstance()Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    move-result-object v0

    .line 101
    .local v0, packetSMSManager:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSendSmsMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 102
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/SendCmailInterface;->OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_2

    .line 103
    const-string v1, "SendCmailInterface"

    const-string/jumbo v2, "snedCmai End"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    return-void
.end method
