.class public Lcom/android/phone/HtcAdvancedSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;,
        Lcom/android/phone/HtcAdvancedSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_ID_PWD_SETTINGS:I = 0x1

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENT_GET_ACTIVE_NAI_INDEX:I = 0x3e9

.field private static final EVENT_GET_SPC_CODE:I = 0x3ed

.field private static final EVENT_SET_ACTIVE_NAI_INDEX:I = 0x3ea

.field private static final EVENT_SET_MANUAL_NAI_ID:I = 0x3eb

.field private static final EVENT_SET_MANUAL_NAI_PWD:I = 0x3ec

.field private static final EVENT_UPDATE_ENABLE_BUTTON:I = 0x3ee

.field private static final LOG_TAG:Ljava/lang/String; = "HtcAdvancedSettings"

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I


# instance fields
.field private final BUTTON_ENABLE_SETTING_KEY:Ljava/lang/String;

.field private final BUTTON_SETUP_NAI_KEY:Ljava/lang/String;

.field private final CMD_GET_SPC_CODE:Ljava/lang/String;

.field private final CMD_READ_ACTIVE_NAI_INDEX_CODE:Ljava/lang/String;

.field private final CMD_WRITE_ACTIVE_NAI_INDEX_CODE:Ljava/lang/String;

.field private final CMD_WRITE_MANUAL_NAI_ID:Ljava/lang/String;

.field private final CMD_WRITE_MANUAL_NAI_PWD:Ljava/lang/String;

.field private final TYPE_SETUP_ID:I

.field private final TYPE_SETUP_PWD:I

.field key:Ljava/lang/String;

.field private mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;

.field private mHandler:Landroid/os/Handler;

.field private mPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mUserName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "C8267C1F00"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_READ_ACTIVE_NAI_INDEX_CODE:Ljava/lang/String;

    .line 62
    const-string v0, "C8277C1F"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_WRITE_ACTIVE_NAI_INDEX_CODE:Ljava/lang/String;

    .line 63
    const-string v0, "C8277D1F"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_WRITE_MANUAL_NAI_ID:Ljava/lang/String;

    .line 65
    const-string v0, "C8277E1F"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_WRITE_MANUAL_NAI_PWD:Ljava/lang/String;

    .line 68
    const-string v0, "AT+HTC_RMSL=0"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->CMD_GET_SPC_CODE:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings;->TYPE_SETUP_ID:I

    .line 430
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings;->TYPE_SETUP_PWD:I

    .line 470
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 471
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 472
    iput-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    .line 474
    const-string v0, "button_enable_settings_key"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->BUTTON_ENABLE_SETTING_KEY:Ljava/lang/String;

    .line 475
    const-string v0, "manual_nai_setup_key"

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->BUTTON_SETUP_NAI_KEY:Ljava/lang/String;

    .line 615
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/HtcAdvancedSettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/HtcAdvancedSettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    return-object p1
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 322
    .local v2, len:I
    const-string v3, ""

    .line 323
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 324
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 329
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v0           #c:I
    .end local v4           #tmp:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 345
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 346
    .local v2, j:I
    const-string v4, ""

    .line 348
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 349
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, tmp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 351
    move v1, v2

    .line 352
    add-int/lit8 v2, v2, 0x2

    .line 353
    goto :goto_0

    .line 354
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 355
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private getSpcCode()V
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 413
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "AT+HTC_RMSL=0"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 415
    return-void
.end method

.method private getWhichNaiInUse()V
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 405
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "C8267C1F00"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 407
    return-void
.end method

.method private setManualIdPwd(Ljava/lang/String;I)V
    .locals 9
    .parameter "value"
    .parameter "type"

    .prologue
    const/16 v8, 0x10

    .line 434
    const-string v5, "HtcAdvancedSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OoO ready to Save UserName & Pwd ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, msg:Landroid/os/Message;
    const/4 v2, 0x0

    .line 439
    .local v2, length:I
    const-string v0, ""

    .line 440
    .local v0, actionCmd:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 441
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 445
    const-string v0, "C8277D1F"

    .line 454
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    const-string v4, "00"

    .line 456
    .local v4, stringLength:Ljava/lang/String;
    if-ge v2, v8, :cond_2

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/phone/HtcAdvancedSettings;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, cmd:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v3}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 467
    return-void

    .line 447
    .end local v1           #cmd:Ljava/lang/String;
    .end local v4           #stringLength:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 448
    iget-object v5, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ec

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 451
    const-string v0, "C8277E1F"

    goto :goto_0

    .line 459
    .restart local v4       #stringLength:Ljava/lang/String;
    :cond_2
    invoke-static {v2, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private setWhichNaiInUse(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 418
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 419
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->key:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C8277C1F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v2, "01"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 426
    return-void

    .line 420
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    const-string v2, "00"

    goto :goto_0
.end method

.method private static validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 365
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 366
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    const/4 v2, 0x0

    .line 368
    const-string v0, ""

    .line 394
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command state is error, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    return v2

    .line 369
    :cond_1
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    const/4 v2, 0x1

    .line 371
    const-string v0, "internal dmss used"

    goto :goto_0

    .line 372
    :cond_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    const/4 v2, 0x1

    .line 374
    const-string v0, "can\'t recognize command"

    goto :goto_0

    .line 375
    :cond_3
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 376
    const/4 v2, 0x1

    .line 377
    const-string v0, "memory is full"

    goto :goto_0

    .line 378
    :cond_4
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 379
    const/4 v2, 0x1

    .line 380
    const-string v0, "command is fail"

    goto :goto_0

    .line 381
    :cond_5
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 382
    const/4 v2, 0x2

    .line 383
    const-string v0, "not support this command"

    goto :goto_0

    .line 384
    :cond_6
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 385
    const/4 v2, 0x2

    .line 386
    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    .line 387
    :cond_7
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 388
    const/4 v2, 0x1

    .line 389
    const-string v0, "memeory is read only"

    goto :goto_0

    .line 391
    :cond_8
    const/4 v2, 0x1

    .line 392
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 579
    packed-switch p2, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 582
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 584
    :cond_0
    const-string v1, "HtcAdvancedSettings"

    const-string v2, "OoO Cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/HtcAdvancedSettings;->setManualIdPwd(Ljava/lang/String;I)V

    .line 589
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/phone/HtcAdvancedSettings;->setManualIdPwd(Ljava/lang/String;I)V

    .line 591
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 592
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ee

    iput v1, v0, Landroid/os/Message;->what:I

    .line 593
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 594
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 597
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 602
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_1
    const-string v1, "HtcAdvancedSettings"

    const-string v2, "OoO Cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 481
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 483
    iput-object p0, p0, Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;

    .line 484
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings;->addPreferencesFromResource(I)V

    .line 486
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 487
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 490
    :cond_0
    new-instance v1, Lcom/android/phone/HtcAdvancedSettings$MyHandler;

    invoke-direct {v1, p0}, Lcom/android/phone/HtcAdvancedSettings$MyHandler;-><init>(Lcom/android/phone/HtcAdvancedSettings;)V

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mHandler:Landroid/os/Handler;

    .line 493
    invoke-virtual {p0}, Lcom/android/phone/HtcAdvancedSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 495
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v1, "button_enable_settings_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 496
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 497
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 499
    const-string v1, "manual_nai_setup_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    .line 500
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 502
    invoke-direct {p0}, Lcom/android/phone/HtcAdvancedSettings;->getWhichNaiInUse()V

    .line 505
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 509
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 510
    new-instance v0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;-><init>(Lcom/android/phone/HtcAdvancedSettings;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mDialog:Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;

    .line 514
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mDialog:Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;

    .line 516
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 568
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 569
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 526
    const/4 v0, 0x1

    .line 528
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 534
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 535
    const-string v3, "HtcAdvancedSettings"

    const-string v4, "OoO mButtonEnableSetting"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 538
    .local v0, enabled:Z
    invoke-direct {p0, v0}, Lcom/android/phone/HtcAdvancedSettings;->setWhichNaiInUse(Z)V

    .line 540
    if-nez v0, :cond_0

    .line 541
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 554
    .end local v0           #enabled:Z
    :cond_0
    :goto_0
    return v1

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings;->mButtonSetupNai:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p1, v3, :cond_2

    .line 547
    const-string v2, "HtcAdvancedSettings"

    const-string v3, "OoO mButtonSetupNai"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 554
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 564
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 573
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 574
    return-void
.end method
