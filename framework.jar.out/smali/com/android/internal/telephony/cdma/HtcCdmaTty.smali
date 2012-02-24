.class public Lcom/android/internal/telephony/cdma/HtcCdmaTty;
.super Landroid/os/Handler;
.source "HtcCdmaTty.java"


# static fields
.field private static final EVENT_BOOTUP_QUERY:I = 0x3

.field private static final EVENT_GET_FIRST_TTY:I = 0x2

.field private static final EVENT_RADIO_READY:I = 0x1

.field private static final FILENAME:Ljava/lang/String; = "/sys/class/htc_accessory/tty/flag"

.field private static final FULL_MODE:Ljava/lang/String; = "enable"

.field private static final HCO_MODE:Ljava/lang/String; = "hco_enable"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaTty"

.field private static final OFF_MODE:Ljava/lang/String; = "disable"

.field private static final VCO_MODE:Ljava/lang/String; = "vco_enable"

.field private static mFile:Ljava/io/File;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method private static checkAccessible()Z
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->isAccessible()Z

    move-result v0

    return v0
.end method

.method private static isAccessible()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    .local v5, mAccessible:Z
    sget-object v6, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    if-nez v6, :cond_0

    .line 129
    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/htc_accessory/tty/flag"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    .line 131
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    if-nez v6, :cond_2

    .line 132
    const-string v6, "HtcCdmaTty"

    const-string/jumbo v7, "isAccessble() { %s file not opened.}"

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "/sys/class/htc_accessory/tty/flag"

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    :goto_0
    return v5

    .line 135
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 137
    const-string v6, "HtcCdmaTty"

    const-string/jumbo v7, "isAccessble() { %s file not exist.}"

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_3
    const/4 v1, 0x0

    .line 142
    .local v1, fileReader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 145
    .local v3, fileWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    sget-object v6, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 146
    .end local v1           #fileReader:Ljava/io/FileReader;
    .local v2, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    sget-object v6, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 147
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .local v4, fileWriter:Ljava/io/FileWriter;
    const/4 v5, 0x1

    .line 158
    if-eqz v2, :cond_4

    .line 159
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 161
    :cond_4
    if-eqz v4, :cond_5

    .line 162
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_5
    :goto_1
    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    move-object v1, v2

    .line 167
    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v6, "HtcCdmaTty"

    const-string/jumbo v7, "isAccessible() { No access right to read : %s }"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    if-eqz v1, :cond_6

    .line 159
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 161
    :cond_6
    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    const-string v6, "HtcCdmaTty"

    const-string v7, " excpetion when close "

    :goto_3
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 155
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v6, "HtcCdmaTty"

    const-string/jumbo v7, "isAccessible() { No access right to write : %s }\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    if-eqz v1, :cond_7

    .line 159
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 161
    :cond_7
    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 164
    :catch_3
    move-exception v0

    .line 165
    const-string v6, "HtcCdmaTty"

    const-string v7, " excpetion when close "

    goto :goto_3

    .line 157
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 158
    :goto_5
    if-eqz v1, :cond_8

    .line 159
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 161
    :cond_8
    if-eqz v3, :cond_9

    .line 162
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 157
    :cond_9
    :goto_6
    throw v6

    .line 164
    :catch_4
    move-exception v0

    .line 165
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "HtcCdmaTty"

    const-string v8, " excpetion when close "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileReader:Ljava/io/FileReader;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    .line 165
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "HtcCdmaTty"

    const-string v7, " excpetion when close "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 153
    .end local v1           #fileReader:Ljava/io/FileReader;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_4

    .line 149
    .end local v1           #fileReader:Ljava/io/FileReader;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method public static toggle(I)V
    .locals 0
    .parameter "TTY_Mode"

    .prologue
    .line 222
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 63
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaTty finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 73
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "HtcCdmaTty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " HtcCdmaTty drop event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 81
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    const/4 v2, 0x2

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "HtcCdmaTty"

    const-string v3, "Exception TTY query:"

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 95
    .local v1, ttymode:I
    const-string v2, "HtcCdmaTty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstQueryTTYModeResponse:ttymode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->toggle(I)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
