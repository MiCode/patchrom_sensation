.class public Lcom/htc/launcher/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    }
.end annotation


# static fields
.field public static final ALL_PROGRAM_LIST_DEFAULT_PRIORITY:I = 0xc8

.field public static final ALL_PROGRAM_LIST_HIGHEST_PRIORITY:I = -0x80000000

.field public static final LIST_TYPE_APPLICATION:I = 0x1

.field public static final LIST_TYPE_APP_WIDGET:I = 0x2

.field public static final LIST_TYPE_HTC_FXWIDGET:I = 0x5

.field public static final LIST_TYPE_HTC_WIDGET:I = 0x4

.field public static final LIST_TYPE_SHORTCUT:I = 0x3

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field private static initialized:Z = false

.field private static final localLOGV:Z = true

.field private static sInstance:Lcom/htc/launcher/ApplicationManager;


# instance fields
.field hasDefault:Z

.field private mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

.field private mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/ApplicationManager;->initialized:Z

    .line 12
    new-instance v0, Lcom/htc/launcher/ApplicationManager;

    invoke-direct {v0}, Lcom/htc/launcher/ApplicationManager;-><init>()V

    sput-object v0, Lcom/htc/launcher/ApplicationManager;->sInstance:Lcom/htc/launcher/ApplicationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 26
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 27
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 28
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 29
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 30
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 31
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 32
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 33
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 34
    new-array v0, v1, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    iput-object v0, p0, Lcom/htc/launcher/ApplicationManager;->mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 175
    iput-boolean v1, p0, Lcom/htc/launcher/ApplicationManager;->hasDefault:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    invoke-static {p1}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, moduleBundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/launcher/ApplicationManager;->initShowHideCustomizationList(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method private initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    .locals 9
    .parameter "inputBundle"

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 291
    const-string v6, "ApplicationManager"

    const-string v7, "empty"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v6, 0x0

    new-array v5, v6, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 313
    :cond_0
    return-object v5

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    .line 296
    .local v4, size:I
    new-array v5, v4, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 297
    .local v5, tempShowList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v6, "ApplicationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "show/hide bundle size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plenty_set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, key:Ljava/lang/String;
    const-string v6, "ApplicationManager"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 302
    .local v0, childBundle:Landroid/os/Bundle;
    new-instance v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    invoke-direct {v6}, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;-><init>()V

    aput-object v6, v5, v1

    .line 303
    aget-object v6, v5, v1

    add-int/lit8 v7, v1, 0x1

    iput v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    .line 304
    aget-object v6, v5, v1

    const-string v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    .line 305
    aget-object v6, v5, v1

    const-string v7, "class"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    .line 306
    aget-object v6, v5, v1

    const-string v7, "widget_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    .line 307
    const-string v6, "priority"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, priority:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 309
    aget-object v6, v5, v1

    const/16 v7, 0xc8

    iput v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 298
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_2
    aget-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    goto :goto_1
.end method

.method private initShowHideCustomizationList(Landroid/os/Bundle;)V
    .locals 18
    .parameter "moduleBundle"

    .prologue
    .line 179
    const-string v15, "applications_show"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 180
    .local v14, showBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input show app bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v15, v15

    if-eqz v15, :cond_0

    .line 183
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/launcher/ApplicationManager;->hasDefault:Z

    .line 186
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .local v3, arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v11, v3

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v10, v3, v9

    .line 187
    .local v10, info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Order >"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_AP_order:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_pkg > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_AP_order:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_class > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 193
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_1
    const-string v15, "applications_hide"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 194
    .local v4, hideBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input hide app bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_2

    aget-object v10, v3, v9

    .line 198
    .restart local v10       #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Order"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_Rosie : applications_hide_pkg > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_Rosie : applications_hide_class > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 205
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_2
    const-string v15, "app_widgets_show"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 206
    .local v2, appWidgetshowBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input show appWidget bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_3

    aget-object v10, v3, v9

    .line 210
    .restart local v10       #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_AndroidWidget_Order:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_pkg > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_AndroidWidget_Order:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_class > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_AndroidWidget_Order: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_priority > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 216
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_3
    const-string v15, "app_widgets_hide"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 217
    .local v1, appWidgetHideBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input hide appWidget bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_4

    aget-object v10, v3, v9

    .line 221
    .restart local v10       #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_Rosie : app_widgets_hide_pkg > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_Rosie : app_widgets_hide_class > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 227
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_4
    const-string v15, "htc_widgets_show"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 228
    .local v8, htcWidgetshowBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input show htcWidget bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v11, :cond_5

    aget-object v10, v3, v9

    .line 232
    .restart local v10       #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HTCWidget_Order"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_pkg > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HTCWidget_Order"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_class > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HTCWidget_Order"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_Priority > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 240
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_5
    const-string v15, "htc_fusion_widgets_show"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 241
    .local v6, htcFusionWidgetshowBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input show htcFsuionWidget bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 245
    const-string v15, "htc_widgets_hide"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 246
    .local v7, htcWidgetHideBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input hide htcWidget bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v11, :cond_6

    aget-object v10, v3, v9

    .line 250
    .restart local v10       #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HideHTCwidget:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_pkg > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HideHTCwidget:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_widget >"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 256
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_6
    const-string v15, "htc_fusion_widgets_hide"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 257
    .local v5, htcFusionWidgetHideBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input hide htcFusionWidget bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v11, :cond_7

    aget-object v10, v3, v9

    .line 261
    .restart local v10       #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HideHTC3Dwidget:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_pkg >"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HideHTC3Dwidget:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_class > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 266
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_7
    const-string v15, "shortcut_hide"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 267
    .local v12, shortCutHideBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input hide shortcut bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v11, :cond_8

    aget-object v10, v3, v9

    .line 271
    .restart local v10       #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HideShortcut:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_pkg > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_HideShortcut:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_class > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 277
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_8
    const-string v15, "shortcut_show"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 278
    .local v13, shortcutShowBundle:Landroid/os/Bundle;
    const-string v15, "ApplicationManager"

    const-string v16, "input hide shortcut bundle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/launcher/ApplicationManager;->initList(Landroid/os/Bundle;)[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/ApplicationManager;->mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/ApplicationManager;->mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v11, :cond_9

    aget-object v10, v3, v9

    .line 282
    .restart local v10       #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_Shortcut_Order:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_pkg : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_Shortcut_Order:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_class : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v15, "ApplicationManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cust_Shortcut_Order:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->order:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_priority : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    .line 287
    .end local v10           #info:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_9
    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-class v1, Lcom/htc/launcher/ApplicationManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/launcher/ApplicationManager;->initialized:Z

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/htc/launcher/ApplicationManager;->sInstance:Lcom/htc/launcher/ApplicationManager;

    invoke-direct {v0, p0}, Lcom/htc/launcher/ApplicationManager;->init(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/ApplicationManager;->initialized:Z

    .line 49
    :cond_0
    sget-object v0, Lcom/htc/launcher/ApplicationManager;->sInstance:Lcom/htc/launcher/ApplicationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .parameter "packageName"
    .parameter "className"
    .parameter "listType"

    .prologue
    .line 123
    const-string v5, "null"

    .line 124
    .local v5, type:Ljava/lang/String;
    const/4 v6, 0x0

    new-array v2, v6, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 125
    .local v2, customizeList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    packed-switch p3, :pswitch_data_0

    .line 145
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 157
    move-object v1, v2

    .local v1, arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 158
    .local v0, appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    :cond_0
    const-string v6, "ApplicationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "show match("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    .line 167
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :goto_2
    return v6

    .line 127
    .end local v1           #arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 128
    const-string v5, "Application"

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 132
    const-string v5, "App widget"

    .line 133
    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 136
    const-string v5, "Shortcut"

    .line 137
    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 140
    const-string v5, "Htc widget"

    .line 142
    :pswitch_4
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mShowHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 143
    const-string v5, "Htc widget FUSION"

    goto :goto_0

    .line 147
    :pswitch_5
    move-object v1, v2

    .restart local v1       #arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 148
    .restart local v0       #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 151
    :cond_1
    const-string v6, "ApplicationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "show match("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v6, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->priority:I

    goto :goto_2

    .line 147
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 157
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 167
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_4
    const/16 v6, 0xc8

    goto :goto_2

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method

.method public inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .parameter "packageName"
    .parameter "classNameOrWidgetName"
    .parameter "listType"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 63
    const-string v5, "null"

    .line 64
    .local v5, type:Ljava/lang/String;
    new-array v2, v7, [Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 65
    .local v2, customizeList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    packed-switch p3, :pswitch_data_0

    .line 87
    :goto_0
    packed-switch p3, :pswitch_data_1

    .line 99
    move-object v1, v2

    .local v1, arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 100
    .local v0, appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 103
    :cond_0
    const-string v7, "ApplicationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hide match ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :goto_2
    return v6

    .line 67
    .end local v1           #arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideApplicationList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 68
    const-string v5, "Application"

    .line 69
    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideAppWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 72
    const-string v5, "App widget"

    .line 73
    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideShortCutList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 76
    const-string v5, "Shortcut"

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 80
    const-string v5, "Htc widget"

    .line 81
    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v2, p0, Lcom/htc/launcher/ApplicationManager;->mHideHtcFusionWidgetList:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;

    .line 84
    const-string v5, "Htc widget FUSION"

    goto :goto_0

    .line 89
    :pswitch_5
    move-object v1, v2

    .restart local v1       #arr$:[Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 90
    .restart local v0       #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v0, Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 93
    :cond_1
    const-string v7, "ApplicationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hide match ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 89
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 99
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
    :cond_4
    move v6, v7

    .line 109
    goto :goto_2

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 87
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
