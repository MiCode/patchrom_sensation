.class public Lcom/htc/music/widget/SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedAdapter.java"


# static fields
.field private static final AddFilePrefix:Ljava/lang/String; = "AddFile"

.field private static final GMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gm"

.field public static final SHARE_NORMAL_FILE:I = 0x0

.field public static final SHARE_SD_DRM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[ShareAdapter]"

.field private static mIsShowIcon:Z


# instance fields
.field private mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, actionlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    .line 59
    iput-object p3, p0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/widget/SharedAdapter;->sortList()V

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method private final bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .parameter "view"
    .parameter "info"

    .prologue
    const v5, 0x7f080043

    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v0, 0x0

    .line 167
    .local v0, icon:Lcom/htc/widget/HtcListItemImageButton;
    sget-boolean v4, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-nez v4, :cond_3

    .line 168
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 182
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    :goto_0
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 184
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 185
    .local v1, label:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 186
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 188
    :cond_0
    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_1
    sget-boolean v4, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_2
    return-void

    .line 174
    .end local v1           #label:Ljava/lang/CharSequence;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #text:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 176
    .restart local v3       #text:Lcom/htc/widget/HtcListItem2LineText;
    const v4, 0x7f080046

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Lcom/htc/widget/HtcListItemImageButton;
    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    .line 177
    .restart local v0       #icon:Lcom/htc/widget/HtcListItemImageButton;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0
.end method

.method public static getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;
    .locals 18
    .parameter "activity"
    .parameter "audioId"
    .parameter "audioPath"
    .parameter "type"

    .prologue
    .line 297
    if-gez p1, :cond_0

    .line 298
    const/4 v2, 0x0

    .line 371
    :goto_0
    return-object v2

    .line 300
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/htc/music/widget/SharedAdapter;->getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, mimeType:Ljava/lang/String;
    const/4 v4, 0x1

    .line 305
    .local v4, isMmsNeeded:Z
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v11, request:Landroid/content/Intent;
    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 310
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/high16 v15, 0x1

    invoke-virtual {v9, v11, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 311
    .local v13, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, actionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x1

    move/from16 v0, p3

    if-ne v0, v15, :cond_4

    .line 314
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v10, removedApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 318
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 319
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 320
    .local v12, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v16, "com.google.android.gm"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 321
    const-string v15, "[ShareAdapter]"

    const-string v16, "Add Gmail to removedApList..."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    .end local v12           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 327
    invoke-interface {v13, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 328
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 331
    :cond_3
    const/4 v4, 0x0

    .line 334
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #removedApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    .line 336
    .local v6, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_5

    .line 339
    const-string v15, "android.intent.action.SEND"

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 342
    :cond_5
    if-eqz v4, :cond_6

    .line 345
    const-string v15, "android.intent.action.SEND_MSG"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/high16 v15, 0x1

    invoke-virtual {v9, v11, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 349
    .local v14, shareApList_MMS:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    .line 350
    .local v7, length_MMS:I
    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 352
    const/4 v14, 0x0

    .line 355
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_6

    .line 358
    const-string v15, "android.intent.action.SEND_MSG"

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 362
    .end local v7           #length_MMS:I
    .end local v14           #shareApList_MMS:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    .line 364
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_7

    .line 366
    const-string v16, "[ShareAdapter]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "shareApList.get("

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ").activityInfo.packageName = "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v16, "[ShareAdapter]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "actionList.get("

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ") = "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 370
    :cond_7
    new-instance v2, Lcom/htc/music/widget/SharedAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13, v1}, Lcom/htc/music/widget/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 371
    .local v2, adapter:Lcom/htc/music/widget/SharedAdapter;
    goto/16 :goto_0
.end method

.method public static getShareDialogAdapter(Landroid/app/Activity;Ljava/lang/String;)Lcom/htc/music/widget/SharedAdapter;
    .locals 10
    .parameter "activity"
    .parameter "text"

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 292
    :goto_0
    return-object v1

    .line 271
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v7, "text/plain"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 277
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v7, 0x1

    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 278
    .local v6, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, actionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 282
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 284
    const-string v7, "android.intent.action.SEND"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v8, "[ShareAdapter]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shareApList.get("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ").activityInfo.packageName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v8, "[ShareAdapter]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actionList.get("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ") = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    :cond_1
    new-instance v1, Lcom/htc/music/widget/SharedAdapter;

    invoke-direct {v1, p0, v6, v0}, Lcom/htc/music/widget/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 292
    .local v1, adapter:Lcom/htc/music/widget/SharedAdapter;
    goto/16 :goto_0
.end method

.method public static getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 7
    .parameter "activity"
    .parameter "audioId"
    .parameter "audioPath"
    .parameter "type"
    .parameter "adapter"
    .parameter "dialog"

    .prologue
    .line 408
    invoke-static {p0, p1}, Lcom/htc/music/widget/SharedAdapter;->getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, mimeType:Ljava/lang/String;
    move-object v2, p2

    .line 411
    .local v2, innerAudioPath:Ljava/lang/String;
    move-object v3, v6

    .line 412
    .local v3, innerMimeType:Ljava/lang/String;
    move-object v4, p0

    .line 414
    .local v4, innerActivity:Landroid/app/Activity;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$2;

    move-object v1, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter$2;-><init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 477
    .local v0, choose_listener:Landroid/widget/AdapterView$OnItemClickListener;
    return-object v0
.end method

.method public static getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 3
    .parameter "activity"
    .parameter "text"
    .parameter "adapter"
    .parameter "dialog"

    .prologue
    .line 377
    move-object v1, p0

    .line 378
    .local v1, innerActivity:Landroid/app/Activity;
    move-object v2, p1

    .line 380
    .local v2, innerText:Ljava/lang/String;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$1;

    invoke-direct {v0, p2, v2, v1, p3}, Lcom/htc/music/widget/SharedAdapter$1;-><init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 403
    .local v0, choose_listener:Landroid/widget/AdapterView$OnItemClickListener;
    return-object v0
.end method

.method private static getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 245
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    .line 249
    .local v2, cols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 251
    .local v7, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 253
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 260
    :cond_0
    if-eqz v6, :cond_1

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_1
    const/4 v6, 0x0

    .line 264
    return-object v7

    .line 260
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_2
    const/4 v6, 0x0

    .line 260
    throw v0
.end method

.method public static shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;
    .locals 24
    .parameter "activity"
    .parameter "audioId"
    .parameter "audioPath"
    .parameter "type"

    .prologue
    .line 521
    if-gez p1, :cond_0

    .line 522
    const/4 v5, 0x0

    .line 634
    :goto_0
    return-object v5

    .line 527
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/htc/music/widget/SharedAdapter;->getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    .line 531
    .local v14, mimeType:Ljava/lang/String;
    const/4 v10, 0x1

    .line 532
    .local v10, isMmsNeeded:Z
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 533
    .local v17, request:Landroid/content/Intent;
    const-string v21, "android.intent.action.SEND"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 537
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/high16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 538
    .local v19, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v2, actionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x1

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 541
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v16, removedApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 545
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 546
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 547
    .local v18, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.google.android.gm"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 548
    const-string v21, "[ShareAdapter]"

    const-string v22, "Add Gmail to removedApList..."

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 553
    .end local v18           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_3

    .line 554
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 555
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 558
    :cond_3
    const/4 v10, 0x0

    .line 561
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #removedApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v12

    .line 563
    .local v12, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v12, :cond_5

    .line 566
    const-string v21, "android.intent.action.SEND"

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 569
    :cond_5
    if-eqz v10, :cond_6

    .line 572
    const-string v21, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const/high16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 576
    .local v20, shareApList_MMS:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v13

    .line 577
    .local v13, length_MMS:I
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 578
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 579
    const/16 v20, 0x0

    .line 582
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_6

    .line 585
    const-string v21, "android.intent.action.SEND_MSG"

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 589
    .end local v13           #length_MMS:I
    .end local v20           #shareApList_MMS:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v12

    .line 591
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_7

    .line 593
    const-string v22, "[ShareAdapter]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "shareApList.get("

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ").activityInfo.packageName = "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v22, "[ShareAdapter]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "actionList.get("

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ") = "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 597
    :cond_7
    new-instance v3, Lcom/htc/music/widget/SharedAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1, v2}, Lcom/htc/music/widget/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 599
    .local v3, adapter:Lcom/htc/music/widget/SharedAdapter;
    const/4 v5, 0x0

    .line 601
    .local v5, dialog:Landroid/app/Dialog;
    move-object/from16 v8, p2

    .line 602
    .local v8, innerAudioPath:Ljava/lang/String;
    move-object v9, v14

    .line 603
    .local v9, innerMimeType:Ljava/lang/String;
    move-object/from16 v7, p0

    .line 605
    .local v7, innerActivity:Landroid/app/Activity;
    new-instance v4, Lcom/htc/music/widget/SharedAdapter$4;

    invoke-direct {v4, v3, v8, v9, v7}, Lcom/htc/music/widget/SharedAdapter$4;-><init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 630
    .local v4, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v22, 0x20c00a2

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 634
    goto/16 :goto_0
.end method

.method public static shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 12
    .parameter "activity"
    .parameter "text"

    .prologue
    .line 481
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v8, request:Landroid/content/Intent;
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v10, "text/plain"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v8, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 487
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/high16 v10, 0x1

    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 488
    .local v9, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, actionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 491
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 493
    const-string v10, "android.intent.action.SEND"

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 496
    :cond_0
    new-instance v1, Lcom/htc/music/widget/SharedAdapter;

    invoke-direct {v1, p0, v9, v0}, Lcom/htc/music/widget/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 497
    .local v1, adapter:Lcom/htc/music/widget/SharedAdapter;
    move-object v5, p0

    .line 499
    .local v5, innerActivity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/music/widget/SharedAdapter$3;

    invoke-direct {v2, v1, v5}, Lcom/htc/music/widget/SharedAdapter$3;-><init>(Lcom/htc/music/widget/SharedAdapter;Landroid/app/Activity;)V

    .line 511
    .local v2, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f07010d

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 515
    .local v3, dialog:Landroid/app/Dialog;
    return-object v3
.end method

.method private sortList()V
    .locals 21

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 71
    .local v18, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 73
    .local v17, orange_photo_exist:Z
    const/4 v15, 0x0

    .local v15, k:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 75
    .local v8, ap_current:Landroid/content/pm/ResolveInfo;
    const-string v19, "com.newbay.pixota.Pixota"

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 77
    const/16 v17, 0x1

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, actionA:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, actionB:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 81
    .local v6, apA:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 83
    .local v7, apB:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v2           #actionA:Ljava/lang/String;
    .end local v3           #actionB:Ljava/lang/String;
    .end local v6           #apA:Landroid/content/pm/ResolveInfo;
    .end local v7           #apB:Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 90
    .end local v8           #ap_current:Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v11

    .local v11, i:I
    :goto_1
    if-eqz v17, :cond_5

    const/16 v19, 0x2

    :goto_2
    move/from16 v0, v19

    if-le v11, v0, :cond_8

    .line 91
    if-eqz v17, :cond_6

    const/4 v14, 0x1

    .local v14, j:I
    :goto_3
    add-int/lit8 v19, v11, -0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_7

    .line 92
    move v12, v14

    .line 93
    .local v12, id_current:I
    add-int/lit8 v13, v14, 0x1

    .line 95
    .local v13, id_next:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    .local v4, action_current:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 97
    .local v5, action_next:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 98
    .restart local v8       #ap_current:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v9, ap_next:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, current_name:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 102
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 104
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 105
    .local v16, next_name:Ljava/lang/String;
    if-nez v16, :cond_3

    .line 106
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 108
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-lez v19, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 90
    .end local v4           #action_current:Ljava/lang/String;
    .end local v5           #action_next:Ljava/lang/String;
    .end local v8           #ap_current:Landroid/content/pm/ResolveInfo;
    .end local v9           #ap_next:Landroid/content/pm/ResolveInfo;
    .end local v10           #current_name:Ljava/lang/String;
    .end local v12           #id_current:I
    .end local v13           #id_next:I
    .end local v14           #j:I
    .end local v16           #next_name:Ljava/lang/String;
    :cond_5
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 91
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 90
    .restart local v14       #j:I
    :cond_7
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_1

    .line 116
    .end local v14           #j:I
    :cond_8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    .line 131
    iget-object v2, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 132
    .local v1, rf:Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 133
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 138
    if-nez p2, :cond_1

    .line 142
    sget-boolean v1, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030013

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, view:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/htc/music/widget/SharedAdapter;->bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V

    .line 157
    return-object v0

    .line 147
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030011

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0

    .line 153
    .end local v0           #view:Landroid/view/View;
    :cond_1
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 9
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    if-nez v6, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-object v3

    .line 204
    :cond_1
    if-ltz p1, :cond_0

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, p1, :cond_0

    .line 207
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 209
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x700

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 223
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mActionList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mApList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 230
    .local v5, rf:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 231
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, apName:Ljava/lang/String;
    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 233
    :cond_2
    const-string v6, "[ShareAdapter]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package ap name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v6, "gmail"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    const-string v6, "AddFile"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
