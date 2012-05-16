.class public Lcom/htc/music/util/HtcCustomizedDeviceName;
.super Ljava/lang/Object;
.source "HtcCustomizedDeviceName.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field private static final DEVICE_NAME:Ljava/lang/String; = "deviceData"

.field private static final FUNCTION_ENTRIES:Ljava/lang/String; = "device_name"

.field private static final MARKET_NAME_ENTRIES:Ljava/lang/String; = "market_name"

.field private static final MODULE_NAME:Ljava/lang/String; = "properties"

.field private static final SYSTEM_NAME:Ljava/lang/String; = "system"

.field private static mDeviceName:Ljava/lang/String;

.field private static mHasCustomizedData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    sget-boolean v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/htc/music/util/HtcCustomizedDeviceName;->readCustomizedData(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    .line 73
    sget-boolean v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/htc/music/util/HtcCustomizedDeviceName;->readDefaultData(Landroid/content/Context;)Ljava/lang/String;

    .line 83
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    return-object v0

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HtcCustomizedDeviceName;->readDefaultData(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected static parseDeviceName()V
    .locals 6

    .prologue
    .line 149
    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 174
    .local v1, deviceName:Ljava/lang/String;
    .local v2, hasDeviceId:Z
    .local v3, splitAt:I
    :goto_0
    return-void

    .line 150
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v2           #hasDeviceId:Z
    .end local v3           #splitAt:I
    :cond_0
    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1       #deviceName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .restart local v2       #hasDeviceId:Z
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 156
    .restart local v3       #splitAt:I
    :goto_1
    if-ltz v3, :cond_2

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 158
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    const/4 v2, 0x1

    .line 160
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 168
    .end local v0           #ch:C
    :cond_2
    if-eqz v2, :cond_3

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 169
    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_3
    sput-object v1, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static readCustomizedData(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    const-string v4, "Settings"

    const-string v5, "properties"

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/util/HtcCustomizedData;

    move-result-object v0

    .line 95
    .local v0, customizedData:Lcom/htc/music/util/HtcCustomizedData;
    invoke-virtual {v0}, Lcom/htc/music/util/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v1

    .line 98
    .local v1, deviceName:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 100
    const-string v4, "market_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 101
    const-string v4, "MASD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Listen:market_name > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    const-string v5, "NA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    :cond_0
    const-string v4, "system"

    const-string v5, "deviceData"

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/util/HtcCustomizedData;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/htc/music/util/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v1

    .line 115
    if-nez v1, :cond_2

    move v2, v3

    .line 125
    :cond_1
    :goto_0
    return v2

    .line 117
    :cond_2
    const-string v4, "device_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 118
    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    const-string v5, "NA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    move v2, v3

    .line 120
    goto :goto_0
.end method

.method public static readDefaultData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    const-string v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 138
    const-string v0, ""

    sget-object v1, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mHasCustomizedData:Z

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    .line 145
    :cond_0
    sget-object v0, Lcom/htc/music/util/HtcCustomizedDeviceName;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method
