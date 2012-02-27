.class public Lcom/htc/launcher/UpdateShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateShortcutReceiver.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UpdateShortcutReceiver"

.field private static final localLOGD:Z

.field private static observer:Landroid/widget/BaseAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/launcher/UpdateShortcutReceiver;->localLOGD:Z

    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/launcher/UpdateShortcutReceiver;->observer:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/UpdateShortcutReceiver;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/htc/launcher/UpdateShortcutReceiver;->keepIcon4AllApps(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/launcher/UpdateShortcutReceiver;Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/htc/launcher/UpdateShortcutReceiver;->updateShortcut(Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/launcher/UpdateShortcutReceiver;Landroid/content/Context;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/launcher/UpdateShortcutReceiver;->showAppTip(Landroid/content/Context;JI)V

    return-void
.end method

.method static synthetic access$300()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/launcher/UpdateShortcutReceiver;->observer:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 9
    .parameter "inBitmap"

    .prologue
    const/4 v5, 0x0

    .line 179
    if-eqz p0, :cond_1

    .line 181
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v3, v6, 0x4

    .line 186
    .local v3, size:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 188
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 189
    .local v4, success:Z
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 190
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 192
    if-eqz v4, :cond_2

    .line 193
    sget-boolean v6, Lcom/htc/launcher/UpdateShortcutReceiver;->localLOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "UpdateShortcutReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bitmap compressed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 203
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    .end local v4           #success:Z
    :cond_1
    :goto_0
    return-object v5

    .line 196
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #size:I
    .restart local v4       #success:Z
    :cond_2
    sget-boolean v6, Lcom/htc/launcher/UpdateShortcutReceiver;->localLOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "UpdateShortcutReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bitmap doesn\'t compressed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v4           #success:Z
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/io/IOException;
    const-string v6, "UpdateShortcutReceiver"

    const-string v7, "Could not write icon"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private keepIcon4AllApps(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "pkgName"
    .parameter "icon"
    .parameter "title"
    .parameter "select"
    .parameter "selectArgs"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/LauncherModel;->getApplications()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v0

    .line 219
    .local v0, appList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalSize()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 220
    invoke-virtual {v0, v2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalGet(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 221
    .local v3, info:Lcom/htc/launcher/ApplicationInfo;
    iget-object v6, v3, Lcom/htc/launcher/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    if-eqz p5, :cond_3

    const/4 v6, 0x1

    array-length v7, p5

    if-gt v6, v7, :cond_3

    const/4 v6, 0x0

    aget-object v6, p5, v6

    if-eqz v6, :cond_3

    .line 224
    const/4 v6, 0x0

    aget-object v6, p5, v6

    invoke-direct {p0, v3, v6}, Lcom/htc/launcher/UpdateShortcutReceiver;->matchComponentName(Lcom/htc/launcher/ApplicationInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 219
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    :cond_3
    const-string v6, "UpdateShortcutReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keepIcon4AllApps: update icon="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v6, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/Launcher;

    .line 241
    .local v4, launcher:Lcom/htc/launcher/Launcher;
    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 243
    .local v5, res:Landroid/content/res/Resources;
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    if-eqz p2, :cond_4

    .line 245
    :try_start_1
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, v3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 247
    :cond_4
    if-eqz p3, :cond_5

    .line 248
    iput-object p3, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 250
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :try_start_2
    sget-object v6, Lcom/htc/launcher/UpdateShortcutReceiver;->observer:Landroid/widget/BaseAdapter;

    if-eqz v6, :cond_0

    .line 253
    new-instance v6, Lcom/htc/launcher/UpdateShortcutReceiver$2;

    invoke-direct {v6, p0}, Lcom/htc/launcher/UpdateShortcutReceiver$2;-><init>(Lcom/htc/launcher/UpdateShortcutReceiver;)V

    invoke-virtual {v4, v6}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 271
    .end local v0           #appList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    .end local v2           #i:I
    .end local v3           #info:Lcom/htc/launcher/ApplicationInfo;
    .end local v4           #launcher:Lcom/htc/launcher/Launcher;
    .end local v5           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "UpdateShortcutReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keepIcon4AllApps: e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 250
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #appList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    .restart local v2       #i:I
    .restart local v3       #info:Lcom/htc/launcher/ApplicationInfo;
    .restart local v4       #launcher:Lcom/htc/launcher/Launcher;
    .restart local v5       #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private matchComponentName(Lcom/htc/launcher/ApplicationInfo;Ljava/lang/String;)Z
    .locals 4
    .parameter "info"
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, start:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 281
    .local v0, end:I
    const-string v3, "%"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 284
    :cond_0
    const-string v3, "%"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    add-int/lit8 v0, v0, -0x1

    .line 287
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-gtz v0, :cond_3

    .line 309
    :cond_2
    :goto_0
    return v2

    .line 290
    :cond_3
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 305
    :try_start_0
    iget-object v3, p1, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 306
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static registerObserver(Landroid/widget/BaseAdapter;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 313
    sput-object p0, Lcom/htc/launcher/UpdateShortcutReceiver;->observer:Landroid/widget/BaseAdapter;

    .line 314
    sget-boolean v0, Lcom/htc/launcher/UpdateShortcutReceiver;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "UpdateShortcutReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerObserver: observer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    return-void
.end method

.method private showAppTip(Landroid/content/Context;JI)V
    .locals 8
    .parameter "context"
    .parameter "id"
    .parameter "priority"

    .prologue
    const/4 v7, 0x0

    .line 83
    const-string v3, "UpdateShortcutReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showAppTip: itemId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v3, Lcom/htc/launcher/Launcher;->shortcutTipPriority:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/htc/launcher/Launcher;->shortcutTipPriority:Ljava/util/ArrayList;

    .line 88
    :cond_0
    new-instance v1, Lcom/htc/launcher/Launcher$ShortcutTip;

    invoke-direct {v1, p2, p3, p4}, Lcom/htc/launcher/Launcher$ShortcutTip;-><init>(JI)V

    .line 89
    .local v1, newTip:Lcom/htc/launcher/Launcher$ShortcutTip;
    sget-object v3, Lcom/htc/launcher/Launcher;->shortcutTipPriority:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v3, "UpdateShortcutReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "added tip in shortcutTipPriority: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher$ShortcutTip;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p2, p3, p4}, Lcom/htc/launcher/Launcher;->showAppTip(JI)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "displayMode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const/4 v3, 0x0

    invoke-static {p2, p3, v3}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public static unregisterObserver()V
    .locals 2

    .prologue
    .line 318
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/launcher/UpdateShortcutReceiver;->observer:Landroid/widget/BaseAdapter;

    .line 319
    sget-boolean v0, Lcom/htc/launcher/UpdateShortcutReceiver;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "UpdateShortcutReceiver"

    const-string v1, "unregisterObserver: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    return-void
.end method

.method private updateShortcut(Landroid/content/Context;JLandroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;)V
    .locals 20
    .parameter "context"
    .parameter "itemId"
    .parameter "icon"
    .parameter "parceIntent"
    .parameter "title"

    .prologue
    .line 105
    const-string v4, "UpdateShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE - UpdateShortcutReceiver.updateShortcut("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") itemId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 107
    .local v3, contentResolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 111
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 112
    const-string v4, "itemType"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 113
    .local v14, itemTypeIndex:I
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 114
    .local v13, itemType:I
    if-eqz v13, :cond_0

    const/4 v4, 0x1

    if-ne v13, v4, :cond_b

    .line 118
    :cond_0
    const/4 v9, 0x0

    .line 119
    .local v9, bmp:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 120
    .local v11, compressedBitmap:[B
    const/4 v12, 0x0

    .line 121
    .local v12, intent:Landroid/content/Intent;
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    move-object/from16 v9, p4

    .line 122
    check-cast v9, Landroid/graphics/Bitmap;

    .line 123
    invoke-static {v9}, Lcom/htc/launcher/UpdateShortcutReceiver;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    .line 127
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    instance-of v4, v0, Landroid/content/Intent;

    if-eqz v4, :cond_2

    move-object/from16 v12, p5

    .line 129
    check-cast v12, Landroid/content/Intent;

    .line 132
    :cond_2
    if-nez v11, :cond_3

    if-nez v12, :cond_3

    if-eqz p6, :cond_a

    .line 134
    :cond_3
    const-string v4, "UpdateShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE - UpdateShortcutReceiver.updateShortcut("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") itemId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v17, values:Landroid/content/ContentValues;
    if-eqz v11, :cond_9

    .line 137
    const-string v4, "iconType"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v4, "icon"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 142
    :goto_0
    if-eqz v12, :cond_4

    .line 143
    const-string v4, "intent"

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_4
    if-eqz p6, :cond_5

    .line 145
    const-string v4, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_5
    sget-object v4, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    const-string v4, "container"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 152
    .local v16, nContainerIndex:I
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 153
    .local v15, nContainer:I
    const/16 v4, -0x65

    if-ne v15, v4, :cond_6

    .line 154
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/LauncherModel;->broadcastLauncherBarChanged(Landroid/content/Context;)V

    .line 157
    :cond_6
    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v0, v1, v9, v12, v2}, Lcom/htc/launcher/Launcher;->updateItem(JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;)V

    .line 173
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #compressedBitmap:[B
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #itemType:I
    .end local v14           #itemTypeIndex:I
    .end local v15           #nContainer:I
    .end local v16           #nContainerIndex:I
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_7
    :goto_1
    if-eqz v10, :cond_8

    .line 174
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_8
    return-void

    .line 140
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    .restart local v11       #compressedBitmap:[B
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v13       #itemType:I
    .restart local v14       #itemTypeIndex:I
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_9
    const-class v4, Lcom/htc/launcher/UpdateShortcutReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateShortcut(), The compressedBitmap is null, icon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_a
    const-string v4, "UpdateShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to compress icon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #compressedBitmap:[B
    .end local v12           #intent:Landroid/content/Intent;
    :cond_b
    sget-boolean v4, Lcom/htc/launcher/UpdateShortcutReceiver;->localLOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "UpdateShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect item type, ignore : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 170
    .end local v13           #itemType:I
    .end local v14           #itemTypeIndex:I
    :cond_c
    sget-boolean v4, Lcom/htc/launcher/UpdateShortcutReceiver;->localLOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "UpdateShortcutReceiver"

    const-string v5, "Not be processed ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    .line 37
    if-nez p2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v1, "UpdateShortcutReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE - UpdateShortcutReceiver.onReceive("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/htc/launcher/UpdateShortcutReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/launcher/UpdateShortcutReceiver$1;-><init>(Lcom/htc/launcher/UpdateShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 79
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
