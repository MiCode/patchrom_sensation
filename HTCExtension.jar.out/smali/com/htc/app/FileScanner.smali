.class public Lcom/htc/app/FileScanner;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FileScanner$UpdateUiRunnable;,
        Lcom/htc/app/FileScanner$ItemInfoSorter;
    }
.end annotation


# static fields
.field private static final MESSAGE_UPDATE_LIST_ITEM:I = 0xa5

.field private static final REFRESH_LIST_ITEM_DURATION:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "FileScanner"

.field private static final localLOGV:Z


# instance fields
.field private duration:J

.field private isRecursive:Z

.field private isScanStop:Z

.field private isStop:Z

.field private mAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDirs:[Ljava/lang/String;

.field private mFileCount:I

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:[Ljava/lang/String;

.field private mFolderSorter:Lcom/htc/app/FileSorter;

.field private mGcPerCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstToAdd:Z

.field private final mScanToken:Ljava/lang/Object;

.field private mSearchFileCount:I

.field private final mSortToken:Ljava/lang/Object;

.field private sortThread:Ljava/lang/Thread;

.field private updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "filter"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mDirs:[Ljava/lang/String;

    .line 66
    iput v1, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 68
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isRecursive:Z

    .line 72
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 98
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FileScanner;->mGcPerCount:I

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mSortToken:Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mScanToken:Ljava/lang/Object;

    .line 404
    new-instance v0, Lcom/htc/app/FileScanner$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FileScanner$1;-><init>(Lcom/htc/app/FileScanner;)V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    .line 91
    iput-object p2, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 92
    iput-object p3, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/htc/app/FileSorter;

    invoke-direct {v0}, Lcom/htc/app/FileSorter;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    .line 95
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 96
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/FileScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/app/FileScanner;->isStop:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/app/FileScanner;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FileScanner;)Lcom/htc/app/FileSorter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFileSorter:Lcom/htc/app/FileSorter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/app/FileScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/app/FileScanner;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/app/FileScanner;)Lcom/htc/app/FileScanner$UpdateUiRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$UpdateUiRunnable;)Lcom/htc/app/FileScanner$UpdateUiRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    return-object p1
.end method

.method private doSleep(J)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 134
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v1, "FileScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 333
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 334
    invoke-virtual {p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 335
    iput v2, p0, Lcom/htc/app/FileScanner;->mFileCount:I

    .line 336
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 337
    iput v2, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 338
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 340
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FileScanner;->mGcPerCount:I

    .line 341
    new-instance v0, Lcom/htc/app/FileScanner$UpdateUiRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FileScanner$UpdateUiRunnable;-><init>(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$1;)V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    .line 342
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    :cond_1
    return-void
.end method

.method private scanFolder(Ljava/io/File;)V
    .locals 23
    .parameter "directory"

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/app/FilePickerUtil;->isAllowForder(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 207
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 213
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .line 215
    .local v17, subList:[Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 225
    :cond_3
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 226
    .local v16, subFolderList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 228
    .local v15, subFileItemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    const/4 v6, 0x0

    .line 229
    .local v6, isAddedFolder:Z
    const/16 v19, 0x0

    .line 230
    .local v19, thisFolderIndex:I
    move-object/from16 v2, v17

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v9, :cond_f

    aget-object v18, v2, v5

    .line 231
    .local v18, subStrFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 232
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 230
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 233
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->isContainDM(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 234
    :cond_6
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    .local v14, subFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 236
    new-instance v20, Lcom/htc/app/ItemInfo;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v14, v1}, Lcom/htc/app/ItemInfo;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mGcPerCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mGcPerCount:I

    .line 241
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 243
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/app/FileScanner;->containExtension(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 245
    new-instance v7, Lcom/htc/app/ItemInfo;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v7, v14, v0}, Lcom/htc/app/ItemInfo;-><init>(Ljava/io/File;Z)V

    .line 246
    .local v7, itemInfo:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 248
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->IsEnabledGroupByPath()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 250
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, folderPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/app/FilePickerListAdapter;->setHeaderViewText(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 254
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 255
    const/16 v19, 0x0

    .line 256
    const/4 v6, 0x1

    .line 270
    :cond_a
    :goto_3
    invoke-virtual {v15, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v4           #folderPath:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v20, v0

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/app/FilePickerListAdapter;->addItem(Lcom/htc/app/ItemInfo;)V

    .line 277
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mFileCount:I

    goto/16 :goto_2

    .line 259
    .restart local v4       #folderPath:Ljava/lang/String;
    :cond_c
    if-nez v6, :cond_a

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v20, v0

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/app/ItemInfo;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/htc/app/ItemInfo;-><init>(ZLjava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/htc/app/FilePickerListAdapter;->addItem(Lcom/htc/app/ItemInfo;)V

    .line 265
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->getOriginalCount()I

    move-result v19

    .line 266
    const/4 v6, 0x1

    goto :goto_3

    .line 263
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/app/ItemInfo;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/htc/app/ItemInfo;-><init>(ZLjava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/htc/app/FilePickerListAdapter;->add(Lcom/htc/app/ItemInfo;)V

    goto :goto_5

    .line 275
    .end local v4           #folderPath:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/app/FilePickerListAdapter;->add(Lcom/htc/app/ItemInfo;)V

    goto :goto_4

    .line 281
    .end local v7           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v14           #subFile:Ljava/io/File;
    .end local v18           #subStrFile:Ljava/lang/String;
    :cond_f
    const/16 v17, 0x0

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->IsEnabledGroupByPath()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 285
    if-eqz v15, :cond_11

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_11

    .line 288
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v10

    .line 289
    .local v10, length:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v10, v0, :cond_11

    .line 290
    new-instance v8, Lcom/htc/app/FileScanner$ItemInfoSorter;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Lcom/htc/app/FileScanner$ItemInfoSorter;-><init>(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$1;)V

    .line 291
    .local v8, itemInfoSorter:Lcom/htc/app/FileScanner$ItemInfoSorter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->getOriginalCount()I

    move-result v20

    sub-int v13, v20, v10

    .line 293
    .local v13, startIndex:I
    #calls: Lcom/htc/app/FileScanner$ItemInfoSorter;->setItemInfoList(Ljava/util/LinkedList;I)V
    invoke-static {v8, v15, v13}, Lcom/htc/app/FileScanner$ItemInfoSorter;->access$400(Lcom/htc/app/FileScanner$ItemInfoSorter;Ljava/util/LinkedList;I)V

    .line 295
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->sortThread:Ljava/lang/Thread;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->sortThread:Ljava/lang/Thread;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_10
    :goto_6
    new-instance v20, Ljava/lang/Thread;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/FileScanner;->sortThread:Ljava/lang/Thread;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->sortThread:Ljava/lang/Thread;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->sortThread:Ljava/lang/Thread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    .line 305
    .end local v8           #itemInfoSorter:Lcom/htc/app/FileScanner$ItemInfoSorter;
    .end local v10           #length:I
    .end local v13           #startIndex:I
    :cond_11
    const/4 v15, 0x0

    .line 308
    :cond_12
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    .line 316
    .local v11, scanEnd:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isRecursive:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 317
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/app/ItemInfo;

    .line 320
    .restart local v7       #itemInfo:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 321
    invoke-virtual {v7}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/app/FileScanner;->scanFolder(Ljava/io/File;)V

    goto :goto_7

    .line 296
    .end local v7           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v11           #scanEnd:J
    .local v5, i$:I
    .restart local v8       #itemInfoSorter:Lcom/htc/app/FileScanner$ItemInfoSorter;
    .restart local v10       #length:I
    .restart local v13       #startIndex:I
    :catch_0
    move-exception v3

    .line 297
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    const-string v20, "FileScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Stop Thread Error:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 323
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #itemInfoSorter:Lcom/htc/app/FileScanner$ItemInfoSorter;
    .end local v10           #length:I
    .end local v13           #startIndex:I
    .local v5, i$:Ljava/util/Iterator;
    .restart local v11       #scanEnd:J
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 380
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 381
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    .line 382
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 383
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mContext:Landroid/content/Context;

    .line 384
    return-void
.end method

.method containExtension(Ljava/lang/String;)Z
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 352
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v4

    .line 353
    :cond_1
    if-nez p1, :cond_2

    move v4, v5

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 355
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 356
    .local v1, extension:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #extension:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 360
    goto :goto_0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/htc/app/FileScanner;->mFileCount:I

    return v0
.end method

.method public getSerachFileCount()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 142
    iget-object v7, p0, Lcom/htc/app/FileScanner;->mScanToken:Ljava/lang/Object;

    monitor-enter v7

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/htc/app/FileScanner;->init()V

    .line 144
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/app/FileScanner;->duration:J

    .line 145
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Lcom/htc/app/FileScanner;->doSleep(J)V

    .line 146
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mDirs:[Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 147
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mDirs:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 148
    new-instance v2, Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/htc/app/FileScanner;->mDirs:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 150
    iget-boolean v6, p0, Lcom/htc/app/FileScanner;->isStop:Z

    if-eqz v6, :cond_1

    monitor-exit v7

    .line 187
    .end local v2           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 151
    .restart local v2       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    .local v5, tmpDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    :try_start_1
    invoke-direct {p0, v1}, Lcom/htc/app/FileScanner;->scanFolder(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 158
    const-string v6, "FileScanner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 160
    monitor-exit v7

    goto :goto_1

    .line 185
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #folder:Ljava/io/File;
    .end local v2           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v5           #tmpDir:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 165
    .restart local v2       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 168
    .end local v2           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 169
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 178
    .local v3, scanEnd:J
    iget-boolean v6, p0, Lcom/htc/app/FileScanner;->isStop:Z

    if-nez v6, :cond_4

    .line 179
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v6, :cond_4

    .line 180
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 181
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 182
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerListAdapter;->IsEnabledGroupByPath()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 185
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setDirs([Ljava/lang/String;)V
    .locals 0
    .parameter "dirs"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mDirs:[Ljava/lang/String;

    .line 131
    return-void
.end method

.method setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V
    .locals 0
    .parameter "filePickerUtil"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 45
    return-void
.end method

.method setFileSorter(Lcom/htc/app/FileSorter;)V
    .locals 0
    .parameter "fileSorter"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 52
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 373
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    :cond_0
    return-void
.end method
