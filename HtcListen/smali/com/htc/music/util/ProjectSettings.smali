.class public Lcom/htc/music/util/ProjectSettings;
.super Ljava/lang/Object;
.source "ProjectSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[ProjectSettings]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableDLNA(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 98
    const v1, 0x7f0701bb

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 100
    .local v0, enableDLNA:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 101
    const/16 v1, 0x62

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x42

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x5b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v2, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 110
    :cond_1
    return v0

    .line 98
    .end local v0           #enableDLNA:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableDrmWarning(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const v0, 0x7f0701b9

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getEnableEnhancer(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 114
    const v2, 0x7f0701bc

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    .line 115
    .local v0, enableEnhancer:I
    if-ne v0, v1, :cond_0

    .line 118
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnableExpList(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    const v1, 0x7f0701b7

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 53
    .local v0, enableExp:Z
    :goto_0
    if-nez v0, :cond_1

    .line 54
    const/4 v1, 0x2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x9b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x94

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v2, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 62
    :cond_1
    return v0

    .line 49
    .end local v0           #enableExp:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableFfRw(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const v0, 0x7f0701b8

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableLandscapeHorizontalSDError(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 137
    const v2, 0x7f0701bd

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    .line 138
    .local v0, enablelandscapeHorizontalSDError:I
    if-ne v0, v1, :cond_0

    .line 141
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnablePlugin(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableUseAsNotificationRingtone(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const v0, 0x7f0701b6

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnalbeShow3PratyTabsInFirst(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const v0, 0x7f0701ba

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntValue(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMaxRingtoneSize(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const v0, 0x7f0701b5

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getProjectName(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const v0, 0x7f0701b4

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static isSrsAsDefaultSoundEffect()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
