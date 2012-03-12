.class public Lcom/android/camera/share/MediaShareListAdapter;
.super Lcom/android/camera/share/MediaShareListAdapterBase;
.source "MediaShareListAdapter.java"


# static fields
.field public static final ACTION_USC_ONLINE_ALBUM:Ljava/lang/String; = "android.intent.action.USCSEND"

.field public static final APP_HTC_MESSAGE:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field public static final APP_ORANGE_PHOTO:Ljava/lang/String; = "com.newbay.pixota.Pixota"

.field public static final APP_TMOBILE_PHONE:Ljava/lang/String; = "com.htc.tmo.mediauploader.ui.TmoMediaUploadDialogActivity"

.field public static final APP_USC_ONLINE_ALBUM:Ljava/lang/String; = "com.htc.mmsmediaproxy.MMSMediaProxy"

.field public static final APP_VODAFONE:Ljava/lang/String; = "com.vodafone.people.engine.contents.photoshare.PhotoShareActivity"

.field public static final CID_ORANGE_ES:Ljava/lang/String; = "ORANG309"

.field public static final CID_ORANGE_PL:Ljava/lang/String; = "ORANGB10"

.field public static final EXPANDABLE_LIST_SIZE:I = 0x5

.field public static final PKG_NAME_HTC_RENREN:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final PKG_NAME_HTC_SINA:Ljava/lang/String; = "com.htc.socialnetwork.chinasns"

.field public static final PKG_NAME_HTC_SINAWEIBO:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field private static final TAG:Ljava/lang/String; = "MediaShareListAdapter"


# instance fields
.field private m_IsExpandable:Z

.field private m_IsExpanded:Z

.field private final m_LastShareAppName:Ljava/lang/String;

.field private final m_MediaInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "lastShareAppName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, mediaInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/share/MediaShareListAdapterBase;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    .line 67
    if-eqz p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    :cond_0
    iput-object p3, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_LastShareAppName:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/android/camera/share/MediaShareListAdapter;->initializeAppInfos()V

    .line 73
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/android/camera/share/MediaShareListAdapter;->sortAppInfos()V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/share/MediaShareListAdapter;->sortAppInfosForDoubleShot()V

    goto :goto_0
.end method

.method private getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "packageManager"
    .parameter "appInfo"

    .prologue
    .line 299
    iget-boolean v1, p2, Lcom/android/camera/share/ExternalAppInfo;->isFake:Z

    if-nez v1, :cond_1

    .line 301
    iget-object v1, p2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 302
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 306
    .end local v0           #label:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 304
    .restart local v0       #label:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 306
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAppInfoListSortKeys()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 357
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms.ui.ComposeMessageActivity"

    aput-object v1, v0, v2

    const-string v1, "com.htc.tmo.mediauploader.ui.TmoMediaUploadDialogActivity"

    aput-object v1, v0, v3

    .line 368
    :goto_0
    return-object v0

    .line 362
    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVF360Flag:Z

    if-eqz v0, :cond_1

    .line 364
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.vodafone.people.engine.contents.photoshare.PhotoShareActivity"

    aput-object v1, v0, v2

    goto :goto_0

    .line 368
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeAppInfos()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x1

    const/4 v11, 0x1

    .line 396
    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v2

    .line 401
    .local v2, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/share/ExternalAppInfo;>;"
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 402
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/MediaInfo;

    iget-object v6, v9, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 405
    .local v6, mimeType:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v11, :cond_7

    const-string v9, "android.intent.action.SEND"

    :goto_1
    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v11, :cond_8

    const-string v9, "android.intent.action.SEND"

    :goto_2
    invoke-static {v10, v9}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 412
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x96

    if-ne v9, v10, :cond_3

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xd9

    if-eq v9, v10, :cond_2

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x13

    if-ne v9, v10, :cond_3

    .line 415
    :cond_2
    const-string v9, "android.intent.action.USCSEND"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    const-string v10, "android.intent.action.USCSEND"

    invoke-static {v9, v10}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 420
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->removeMMS()Z

    move-result v9

    if-nez v9, :cond_4

    .line 422
    const-string v9, "android.intent.action.SEND_MSG"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    const-string v10, "android.intent.action.SEND_MSG"

    invoke-static {v9, v10}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 424
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/share/ExternalAppInfo;>;"
    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v11, :cond_9

    .line 425
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/share/ExternalAppInfo;>;"
    :cond_4
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xa

    if-ne v9, v10, :cond_6

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xa1

    if-ne v9, v10, :cond_6

    .line 440
    const-string v9, "image/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 442
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/share/ExternalAppInfo;

    .line 444
    .local v1, appInfo:Lcom/android/camera/share/ExternalAppInfo;
    iget-object v8, v1, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 445
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 446
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 448
    new-instance v8, Landroid/content/pm/ResolveInfo;

    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-direct {v8}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 449
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/pm/ActivityInfo;

    invoke-direct {v9, v0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 450
    const v9, 0x7f0200ef

    iput v9, v8, Landroid/content/pm/ResolveInfo;->icon:I

    .line 451
    const v9, 0x7f0a0154

    iput v9, v8, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 452
    new-instance v9, Lcom/android/camera/share/ExternalAppInfo;

    const-string v10, "android.intent.action.SEND_MSG"

    invoke-direct {v9, v8, v10, v11}, Lcom/android/camera/share/ExternalAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 462
    iput-boolean v11, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    .line 463
    iput-boolean v13, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    goto/16 :goto_0

    .line 405
    .end local v4           #intent:Landroid/content/Intent;
    :cond_7
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    goto/16 :goto_1

    .line 407
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_8
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    goto/16 :goto_2

    .line 427
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/share/ExternalAppInfo;>;"
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/share/ExternalAppInfo;

    .line 429
    .restart local v1       #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    iget-object v9, v1, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 431
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private sortAppInfos()V
    .locals 15

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v1

    .line 490
    .local v1, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/share/ExternalAppInfo;>;"
    invoke-direct {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoListSortKeys()[Ljava/lang/String;

    move-result-object v12

    .line 491
    .local v12, sortKeys:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 492
    .local v5, fixedItemCount:I
    array-length v13, v12

    if-lez v13, :cond_0

    iget-object v13, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_LastShareAppName:Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 494
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_0

    .line 496
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    .line 497
    .local v0, appInfo:Lcom/android/camera/share/ExternalAppInfo;
    iget-object v13, v0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_LastShareAppName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 499
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 500
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 501
    add-int/lit8 v5, v5, 0x1

    .line 508
    .end local v0           #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    .end local v6           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 509
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    array-length v13, v12

    if-nez v13, :cond_9

    .line 512
    const/4 v3, 0x0

    .line 513
    .local v3, firstAppLabel:Ljava/lang/String;
    const/4 v4, 0x0

    .line 514
    .local v4, firstAppName:Ljava/lang/String;
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x71

    if-ne v13, v14, :cond_6

    .line 515
    const-string v4, "com.newbay.pixota.Pixota"

    .line 532
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 534
    const-string v13, "ro.cid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, cid:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .restart local v6       #i:I
    :goto_2
    if-ltz v6, :cond_3

    .line 537
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    .line 538
    .restart local v0       #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    iget-object v13, v0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "ORANG309"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "ORANGB10"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    if-eqz v3, :cond_2

    invoke-direct {p0, v11, v0}, Lcom/android/camera/share/MediaShareListAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 543
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 545
    add-int/lit8 v5, v5, 0x1

    .line 571
    .end local v0           #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    .end local v2           #cid:Ljava/lang/String;
    .end local v3           #firstAppLabel:Ljava/lang/String;
    .end local v4           #firstAppName:Ljava/lang/String;
    .end local v6           #i:I
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .restart local v6       #i:I
    :goto_3
    if-le v6, v5, :cond_d

    .line 573
    add-int/lit8 v7, v6, -0x1

    .local v7, j:I
    :goto_4
    if-lt v7, v5, :cond_c

    .line 575
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/share/ExternalAppInfo;

    invoke-direct {p0, v11, v13}, Lcom/android/camera/share/MediaShareListAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 576
    .local v8, labelI:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/share/ExternalAppInfo;

    invoke-direct {p0, v11, v13}, Lcom/android/camera/share/MediaShareListAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 577
    .local v9, labelJ:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_4

    .line 578
    invoke-static {v1, v6, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 573
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 494
    .end local v7           #j:I
    .end local v8           #labelI:Ljava/lang/String;
    .end local v9           #labelJ:Ljava/lang/String;
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .restart local v0       #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 518
    .end local v0           #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    .end local v6           #i:I
    .restart local v3       #firstAppLabel:Ljava/lang/String;
    .restart local v4       #firstAppName:Ljava/lang/String;
    .restart local v11       #packageManager:Landroid/content/pm/PackageManager;
    :cond_6
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v14, 0xa

    if-ne v13, v14, :cond_7

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xa1

    if-ne v13, v14, :cond_7

    .line 521
    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    .line 522
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0a0154

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 524
    :cond_7
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_1

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xa1

    if-ne v13, v14, :cond_1

    .line 527
    const-string v4, "com.htc.mmsmediaproxy.MMSMediaProxy"

    goto/16 :goto_1

    .line 535
    .restart local v0       #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    .restart local v2       #cid:Ljava/lang/String;
    .restart local v6       #i:I
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 553
    .end local v0           #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    .end local v2           #cid:Ljava/lang/String;
    .end local v3           #firstAppLabel:Ljava/lang/String;
    .end local v4           #firstAppName:Ljava/lang/String;
    .end local v6           #i:I
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_5
    array-length v13, v12

    if-ge v6, v13, :cond_3

    .line 555
    aget-object v10, v12, v6

    .line 556
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    .restart local v7       #j:I
    :goto_6
    if-lt v7, v5, :cond_a

    .line 558
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    .line 559
    .restart local v0       #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    iget-object v13, v0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 561
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 562
    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 563
    add-int/lit8 v5, v5, 0x1

    .line 553
    .end local v0           #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 556
    .restart local v0       #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 571
    .end local v0           #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    .end local v10           #name:Ljava/lang/String;
    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_3

    .line 581
    .end local v7           #j:I
    :cond_d
    return-void
.end method

.method private sortAppInfosForDoubleShot()V
    .locals 8

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2070011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 586
    .local v5, sortKeys:[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_1

    .line 605
    :cond_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v1

    .line 591
    .local v1, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/share/ExternalAppInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 593
    aget-object v4, v5, v2

    .line 594
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, j:I
    :goto_1
    if-le v3, v2, :cond_2

    .line 596
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    .line 597
    .local v0, appInfo:Lcom/android/camera/share/ExternalAppInfo;
    iget-object v6, v0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 599
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 600
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 591
    .end local v0           #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    .restart local v0       #appInfo:Lcom/android/camera/share/ExternalAppInfo;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final createIntent(I)Landroid/content/Intent;
    .locals 22
    .parameter "position"

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 86
    const/4 v8, 0x0

    .line 279
    :cond_0
    :goto_0
    return-object v8

    .line 89
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_2

    .line 90
    const/4 v8, 0x0

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/share/ExternalAppInfo;

    .line 94
    .local v3, appInfo:Lcom/android/camera/share/ExternalAppInfo;
    iget-object v0, v3, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 97
    .local v2, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v8, intent:Landroid/content/Intent;
    const/high16 v17, 0x300

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/MediaInfo;

    .line 102
    .local v6, firstMediaInfo:Lcom/android/camera/MediaInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 103
    .local v11, mediaCount:I
    iget-object v0, v3, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 104
    .local v10, isHtcMediaUploader:Z
    const/4 v14, 0x0

    .line 105
    .local v14, needUploadList:Z
    sget-boolean v17, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-eqz v17, :cond_5

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.socialnetwork.facebook"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 107
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v17, "Launch_Service"

    const-string v18, "Facebook"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const/4 v14, 0x1

    .line 111
    const-string v17, "MediaShareListAdapter"

    const-string v18, "Share - action name: htc.intent.action.SEND_MULTIPLE"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 157
    .local v15, packageManager:Landroid/content/pm/PackageManager;
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xa1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 160
    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "image/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/android/camera/share/MediaShareListAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0a0154

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 163
    const-string v17, "address"

    const-string v18, "4444"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_a

    if-nez v10, :cond_a

    .line 170
    const-string v17, "android.intent.extra.STREAM"

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :goto_2
    if-eqz v14, :cond_d

    .line 190
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v16, uploadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v11, :cond_c

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/MediaInfo;

    .line 194
    .local v12, mediaInfo:Lcom/android/camera/MediaInfo;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v4, bundle:Landroid/os/Bundle;
    const-string v17, "com.htc.opensense.upload.URI"

    iget-object v0, v12, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v17, "com.htc.opensense.upload.MIMETYPE"

    iget-object v0, v12, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v17, "com.htc.opensense.upload.TITLE"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v17, "com.htc.opensense.upload.DESCRIPTION"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 113
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v7           #i:I
    .end local v12           #mediaInfo:Lcom/android/camera/MediaInfo;
    .end local v15           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #uploadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_5
    sget-boolean v17, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-eqz v17, :cond_6

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.socialnetwork.flickr"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 115
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v17, "Launch_Service"

    const-string v18, "Flickr"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/4 v14, 0x1

    .line 119
    const-string v17, "MediaShareListAdapter"

    const-string v18, "Share - action name: htc.intent.action.SEND_MULTIPLE"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    :cond_6
    if-eqz v10, :cond_7

    .line 123
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    iget-object v0, v3, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHTCMediaUploader()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 127
    const/4 v14, 0x1

    .line 128
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v17, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 133
    :cond_7
    sget-boolean v17, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-eqz v17, :cond_9

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.socialnetwork.chinasns"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 140
    :cond_8
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 141
    const/4 v14, 0x1

    .line 142
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v17, "MediaShareListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Share - isCHSCustomerUploadPkgName package name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    :cond_9
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    iget-object v0, v3, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v17, "MediaShareListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Share - action name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v17, "MediaShareListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Share - package name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v17, "MediaShareListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Share - class name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    .restart local v15       #packageManager:Landroid/content/pm/PackageManager;
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v5, contentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v11, :cond_b

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/MediaInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 180
    :cond_b
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 183
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x2f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 184
    .local v13, mimeType:Ljava/lang/String;
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 201
    .end local v5           #contentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v13           #mimeType:Ljava/lang/String;
    .restart local v16       #uploadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_c
    const-string v17, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 205
    .end local v7           #i:I
    .end local v16           #uploadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_f

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "image/jps"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "image/mpo"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_e
    const/4 v9, 0x1

    .line 206
    .local v9, is3DPhoto:Z
    :goto_5
    if-eqz v9, :cond_0

    .line 208
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 209
    const-string v17, "com.htc.album.actions.threedconvert"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v0, v6, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v17, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v17, "SharedAdapter.KEY_CLASS_NAME"

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 205
    .end local v9           #is3DPhoto:Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public final expand()V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    .line 290
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->notifyDataSetChanged()V

    .line 292
    :cond_0
    return-void
.end method

.method public final getAppInfo(I)Lcom/android/camera/share/ExternalAppInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 315
    iget-boolean v1, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/share/MediaShareListAdapterBase;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/share/MediaShareListAdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 338
    const-wide/16 v0, -0x1

    .line 339
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/share/MediaShareListAdapterBase;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x2090071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 381
    const v0, 0x202001a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x2080345

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    const v0, 0x2020010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1040371

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p2

    .line 387
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/share/MediaShareListAdapterBase;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final isExpandable()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    return v0
.end method

.method public final isExpanded()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    return v0
.end method
