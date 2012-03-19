.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;
    }
.end annotation


# static fields
.field public static final ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "android.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HAS_BYTE_ARRAY:I = 0x8

.field public static final IS_EMPTY:I = 0x1

.field public static final IS_GZIPPED:I = 0x4

.field public static final IS_TEXT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/IDropBoxManagerService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 7
    .parameter "tag"
    .parameter "data"
    .parameter "flags"

    .prologue
    .line 287
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-interface {v6, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;[BIJ)V
    .locals 7
    .parameter "tag"
    .parameter "data"
    .parameter "flags"
    .parameter "time"

    .prologue
    .line 368
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-interface {v6, v0, p4, p5}, Lcom/android/internal/os/IDropBoxManagerService;->addWithTime(Landroid/os/DropBoxManager$Entry;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .locals 6
    .parameter "tag"
    .parameter "file"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 306
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "file == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_1
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    .line 309
    .local v0, entry:Landroid/os/DropBoxManager$Entry;
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    throw v1

    .line 310
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;IJ)V
    .locals 6
    .parameter "tag"
    .parameter "file"
    .parameter "flags"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 381
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "file == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_1
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    .line 384
    .local v0, entry:Landroid/os/DropBoxManager$Entry;
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, v0, p4, p5}, Lcom/android/internal/os/IDropBoxManagerService;->addWithTime(Landroid/os/DropBoxManager$Entry;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_1
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    throw v1

    .line 385
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 273
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v1, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "tag"
    .parameter "data"
    .parameter "time"

    .prologue
    .line 358
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    new-instance v1, Landroid/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1, p3, p4}, Lcom/android/internal/os/IDropBoxManagerService;->addWithTime(Landroid/os/DropBoxManager$Entry;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 3
    .parameter "tag"
    .parameter "msec"

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v2, :cond_0

    .line 345
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    if-nez v2, :cond_0

    .line 329
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v2, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method
