.class public Lcom/htc/music/util/CustomizeSetting;
.super Ljava/lang/Object;
.source "CustomizeSetting.java"


# static fields
.field private static final DEVICE_ACE:S = 0x0s

.field private static final DEVICE_ACE_LTE:S = 0x2s

.field private static final DEVICE_BLISS:S = 0xes

.field private static final DEVICE_BLISSC:S = 0xfs

.field private static final DEVICE_HOLIDAY:S = 0x3es

.field private static final DEVICE_MARVEL:S = 0x62s

.field private static final DEVICE_MECHA:S = 0x61s

.field private static final DEVICE_PYRAMID:S = 0x7bs

.field private static final DEVICE_SAGA:S = 0x94s

.field private static final DEVICE_VIGOR:S = 0xads

.field private static final DEVICE_VISION:S = 0xa8s

.field private static final DEVICE_VIVO:S = 0xa9s

.field private static final DEVICE_VIVOW:S = 0xaas

.field private static final PROJECT_TELSTRA:S = 0x9fs

.field private static final TAG:Ljava/lang/String; = "[CustomizeSetting]"

.field private static mSupportAmazon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/CustomizeSetting;->mSupportAmazon:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceReloadAmazonSetting()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/CustomizeSetting;->mSupportAmazon:I

    .line 159
    return-void
.end method

.method public static getGlanceMusicStoreImageResId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const v0, 0x208097e

    .line 101
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f02003c

    goto :goto_0
.end method

.method public static getGlanceMusicStoreStringResId(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0701ab

    .line 96
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0700f5

    goto :goto_0
.end method

.method public static isAmazonStoreCase(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method private static isAmazonStoreExist(Landroid/content/Context;)Z
    .locals 4
    .parameter "cxt"

    .prologue
    .line 226
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v0

    .line 228
    .local v0, launchAmazonIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 229
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 231
    .local v2, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 232
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDolbyEnabled()Z
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, isDolbyEnabled:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x1

    .line 255
    :cond_1
    return v0
.end method

.method public static isFullModeOneSHot()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGlideMode()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    .line 290
    .local v0, isGlideMode:Z
    return v0
.end method

.method public static isHdmiSupported()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public static isMusicStoreEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isAmazonStoreCase(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrangeStoreCase()Z
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, isMusicStoreEnabled:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x71

    if-ne v2, v3, :cond_2

    .line 118
    const-string v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, phoneCID:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 120
    const-string v2, "ORANG202"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ORANGB10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :cond_1
    const/4 v0, 0x1

    .line 129
    .end local v1           #phoneCID:Ljava/lang/String;
    :cond_2
    return v0
.end method

.method public static isSoundEnhancerEnabled()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    .line 245
    .local v0, isSoundEnhancerEnabled:Z
    return v0
.end method

.method public static isStoreCaseOnly(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 272
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "cxt"
    .parameter "launchStoreIntent"

    .prologue
    const/4 v2, 0x0

    .line 212
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 215
    .local v0, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSupportListenStore()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportMMC()Z
    .locals 5

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, phoneCID:Ljava/lang/String;
    const/4 v0, 0x0

    .line 55
    .local v0, isSupportMMC:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x58

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_2

    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_2

    .line 62
    const-string v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "[CustomizeSetting]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ro.cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz v1, :cond_2

    .line 65
    const-string v2, "VODAP102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VODAP006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VODAPE17"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VODAPD18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VODAP304"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VODAP001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    :cond_1
    const/4 v0, 0x1

    .line 78
    :cond_2
    return v0
.end method

.method public static isSupportVmmStore(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 319
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static isTelstraStoreCase()Z
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, isMusicStoreEnabled:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9f

    if-ne v1, v2, :cond_1

    .line 137
    const/4 v0, 0x1

    .line 139
    :cond_1
    return v0
.end method

.method public static isVerizonStoreCase(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 143
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v1, v2, :cond_1

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_1

    .line 148
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVerizonMODIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, launchIntent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const/4 v1, 0x1

    .line 154
    .end local v0           #launchIntent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWhatHotBgEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 262
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhatHotEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method
