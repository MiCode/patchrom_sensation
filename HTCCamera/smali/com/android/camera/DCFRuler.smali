.class public Lcom/android/camera/DCFRuler;
.super Ljava/lang/Object;
.source "DCFRuler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DCFRuler$StorageCardControl;,
        Lcom/android/camera/DCFRuler$InvalidDCFFormatException;,
        Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;,
        Lcom/android/camera/DCFRuler$PathPackage;,
        Lcom/android/camera/DCFRuler$fileFormat;
    }
.end annotation


# static fields
.field public static final DCFRootDirectory:Ljava/lang/String; = "DCIM"

.field static final DCF_DIRECTORY_MAX_NUMBER:I = 0x3e7

.field static final DCF_DIRECTORY_START_NUMBER:I = 0x64

.field static final DCF_FILENAME_LENGTH:I = 0x8

.field static final DCF_FILE_MAX_NUMBER:I = 0x270f

.field static final DCF_FILE_START_NUMBER:I = 0x1

.field public static final DefaultDCFInfo:Lcom/android/camera/DCFInfo; = null

.field public static final DefaultDirectoryName:Ljava/lang/String; = "100MEDIA"

.field static final TAG:Ljava/lang/String; = "DCFRuler"

.field static final VIDEO_DIRECTORY_NAME:Ljava/lang/String; = "VIDEO"

.field static final VIDEO_FILE_TAG:Ljava/lang/String; = "VIDEO"

.field private static final mDCFInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/DCFInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/android/camera/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "IMAG"

    const-string v3, "counter_image"

    const-string v4, "counter_imagefolder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    .line 67
    sget-object v0, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    return-void
.end method

.method public static backToCounterForImage(Landroid/app/Activity;Lcom/android/camera/DCFInfo;)V
    .locals 7
    .parameter "c"
    .parameter "dcfInfo"

    .prologue
    const/16 v6, 0x64

    .line 851
    invoke-virtual {p1}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 852
    .local v3, value1:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 853
    .local v4, value2:Ljava/lang/String;
    const/4 v1, 0x1

    .line 854
    .local v1, file_counter:I
    const/16 v2, 0x64

    .line 857
    .local v2, folder_counter:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 858
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 864
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 865
    if-gtz v1, :cond_0

    .line 866
    if-gt v2, v6, :cond_1

    .line 867
    const/4 v1, 0x0

    .line 868
    const/16 v2, 0x64

    .line 881
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 882
    invoke-virtual {p1}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 883
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    .line 861
    const/16 v2, 0x64

    goto :goto_0

    .line 870
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    if-le v2, v6, :cond_0

    .line 871
    const/16 v1, 0x270f

    .line 872
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static backToCounterForVideo(Landroid/app/Activity;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 886
    const-string v3, "counter_video"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 888
    .local v2, value1:Ljava/lang/String;
    const/4 v1, 0x0

    .line 893
    .local v1, file_counter:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 900
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 901
    if-gtz v1, :cond_0

    .line 902
    const/4 v1, 0x0

    .line 905
    :cond_0
    const-string v3, "counter_video"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 907
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static backupDcimDirectory(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6
    .parameter "activity"
    .parameter "rootDirectory"

    .prologue
    const/4 v3, 0x0

    .line 378
    const-string v4, "DCIM"

    invoke-static {p1, v4}, Lcom/android/camera/FileUtility;->backupDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 380
    const-string v4, "DCFRuler"

    const-string v5, "Cannot backup \'DCIM\' directory."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    return v3

    .line 385
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, dcimDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    .line 388
    const-string v4, "DCFRuler"

    const-string v5, "Cannot create new \'DCIM\' directory."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_1
    sget-object v4, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    monitor-enter v4

    .line 395
    :try_start_0
    sget-object v3, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DCFInfo;

    .line 397
    .local v0, dcfInfo:Lcom/android/camera/DCFInfo;
    invoke-virtual {v0}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null"

    invoke-static {p0, v3, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v0}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null"

    invoke-static {p0, v3, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 400
    .end local v0           #dcfInfo:Lcom/android/camera/DCFInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static checkDCFFormat(Ljava/io/File;)Z
    .locals 8
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 943
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, filename:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 951
    .local v4, tarm:I
    const/4 v6, -0x1

    if-ne v6, v4, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v5

    .line 955
    :cond_1
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, mainName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 964
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 970
    .local v3, number:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    const/4 v5, 0x1

    goto :goto_0

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static complementToFourCharacters(I)Ljava/lang/String;
    .locals 4
    .parameter "num"

    .prologue
    .line 585
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .line 587
    .local v0, result:Ljava/lang/String;
    div-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_1

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    :cond_0
    :goto_0
    return-object v0

    .line 591
    :cond_1
    div-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_2

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 595
    :cond_2
    div-int/lit16 v2, p0, 0x3e8

    if-nez v2, :cond_3

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_3
    div-int/lit16 v2, p0, 0x2710

    if-nez v2, :cond_0

    .line 601
    move-object v0, v1

    goto :goto_0
.end method

.method public static ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "activity"
    .parameter "rootDirectory"
    .parameter "outerDirName"
    .parameter "directoryNumber"
    .parameter "dirSuffix"

    .prologue
    const/4 v2, -0x1

    .line 331
    const/16 v3, 0x3e7

    if-le p3, v3, :cond_1

    .line 334
    invoke-static {p0, p1}, Lcom/android/camera/DCFRuler;->backupDcimDirectory(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    const-string v3, "DCFRuler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot backup \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_0
    return v2

    .line 341
    :cond_0
    const/16 p3, 0x64

    .line 345
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_2

    .line 348
    const-string v3, "DCFRuler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    .end local v0           #dir:Ljava/io/File;
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 358
    const-string v2, "DCFRuler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a directory. Creating new directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p1, p2, v2, p4}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p3

    :cond_3
    move v2, p3

    .line 369
    goto/16 :goto_0

    .line 362
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_3

    .line 364
    const-string v3, "DCFRuler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;
    .locals 4
    .parameter "dcfInfo"
    .parameter "number"

    .prologue
    .line 155
    add-int/lit16 v1, p1, 0x2710

    .line 156
    .local v1, temp:I
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, name:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/DCFInfo;->getFileTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method public static fillImageFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/DCFInfo;II)Ljava/lang/String;
    .locals 2
    .parameter "rootDirectory"
    .parameter "outerDirName"
    .parameter "dcfInfo"
    .parameter "directoryNumber"
    .parameter "fileNumber"

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fillImageFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/DCFInfo;IILcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;
    .locals 2
    .parameter "rootDirectory"
    .parameter "outerDirName"
    .parameter "dcfInfo"
    .parameter "directoryNumber"
    .parameter "fileNumber"
    .parameter "mode"

    .prologue
    .line 311
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateFileName(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3
    .parameter "extention"
    .parameter "number"
    .parameter "isVideo"

    .prologue
    .line 641
    invoke-static {p2}, Lcom/android/camera/DCFRuler;->getFreeFileCharacters(Z)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, freeName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/DCFRuler;->complementToFourCharacters(I)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, numberstring:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static generateIMAGEFullFileName(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "directoryCounter"
    .parameter "imageCounter"
    .parameter "extension"

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/camera/DCFRuler;->generateFileName(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized generateObjectsMap(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 11
    .parameter "f"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 911
    const-class v10, Lcom/android/camera/DCFRuler;

    monitor-enter v10

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 912
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 913
    .local v2, fileArray:[Ljava/io/File;
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    .local v6, mTreeMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/io/File;>;>;"
    if-nez v2, :cond_1

    .line 937
    :cond_0
    monitor-exit v10

    return-object v6

    .line 916
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_1
    array-length v9, v2

    if-ge v3, v9, :cond_0

    .line 918
    aget-object v9, v2, v3

    invoke-static {v9}, Lcom/android/camera/DCFRuler;->checkDCFFormat(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 916
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 920
    :cond_2
    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 921
    .local v7, s:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/camera/DCFRuler;->parseDCFFileNumber(Ljava/lang/String;)I

    move-result v0

    .line 922
    .local v0, _filenumber:I
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 923
    .local v5, key:Ljava/lang/Integer;
    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 924
    .local v4, isContainKey:Z
    const/4 v8, 0x0

    .line 925
    .local v8, set:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    if-nez v4, :cond_3

    .line 927
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #set:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .restart local v8       #set:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    invoke-virtual {v6, v5, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 911
    .end local v0           #_filenumber:I
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileArray:[Ljava/io/File;
    .end local v3           #i:I
    .end local v4           #isContainKey:Z
    .end local v5           #key:Ljava/lang/Integer;
    .end local v6           #mTreeMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/io/File;>;>;"
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #set:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 933
    .restart local v0       #_filenumber:I
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #fileArray:[Ljava/io/File;
    .restart local v3       #i:I
    .restart local v4       #isContainKey:Z
    .restart local v5       #key:Ljava/lang/Integer;
    .restart local v6       #mTreeMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/io/File;>;>;"
    .restart local v7       #s:Ljava/lang/String;
    .restart local v8       #set:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #set:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 934
    .restart local v8       #set:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getDCFRootDirectoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "DCIM"

    return-object v0
.end method

.method public static getDefaultDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "DCIM/100MEDIA"

    return-object v0
.end method

.method public static getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 994
    const-string v0, ".jpg"

    return-object v0
.end method

.method public static getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 1000
    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    if-ne p0, v0, :cond_0

    .line 1001
    const-string v0, ".jpg"

    .line 1005
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    if-ne p0, v0, :cond_1

    .line 1003
    const-string v0, ".jps"

    goto :goto_0

    .line 1005
    :cond_1
    const-string v0, ".mpo"

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 665
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 666
    .local v0, index:I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, result:Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 668
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 670
    :cond_0
    return-object v1
.end method

.method public static getFreeFileCharacters(Z)Ljava/lang/String;
    .locals 1
    .parameter "isVideo"

    .prologue
    .line 981
    if-nez p0, :cond_0

    .line 982
    const-string v0, "IMAG"

    .line 984
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "VIDEO"

    goto :goto_0
.end method

.method public static getImageDirectoryName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .parameter "c"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static getImageDirectoryName(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 1
    .parameter "c"
    .parameter "number"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static getImageDirectoryNumber(Landroid/app/Activity;)I
    .locals 1
    .parameter "c"

    .prologue
    .line 140
    const/16 v0, 0x64

    .line 142
    .local v0, result:I
    return v0
.end method

.method public static getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "rootDirectory"
    .parameter "dirSuffix"

    .prologue
    .line 418
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 419
    .local v1, dirNameSuffixLength:I
    add-int/lit8 v0, v1, 0x3

    .line 420
    .local v0, dirNameLength:I
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 421
    .local v3, params:[Ljava/lang/Object;
    new-instance v4, Lcom/android/camera/DCFRuler$1;

    invoke-direct {v4, v0, v1, p1}, Lcom/android/camera/DCFRuler$1;-><init>(IILjava/lang/String;)V

    invoke-static {p0, v4, v3}, Lcom/android/camera/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    .line 467
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 472
    .end local v0           #dirNameLength:I
    .end local v1           #dirNameSuffixLength:I
    .end local v3           #params:[Ljava/lang/Object;
    :goto_0
    return v4

    .line 469
    :catch_0
    move-exception v2

    .line 471
    .local v2, ex:Ljava/io/IOException;
    const-string v4, "DCFRuler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get last directory number in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' directory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getLastImageFileNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "directory"
    .parameter "fileTag"

    .prologue
    .line 488
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 489
    .local v2, imageFileTagLength:I
    add-int/lit8 v1, v2, 0x8

    .line 490
    .local v1, imageFileNameLength:I
    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, fileExtension:Ljava/lang/String;
    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, jpsExtension:Ljava/lang/String;
    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, mpoExtension:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v0

    .line 495
    .local v8, params:[Ljava/lang/Object;
    new-instance v0, Lcom/android/camera/DCFRuler$2;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/DCFRuler$2;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, v8}, Lcom/android/camera/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    .line 560
    const/4 v0, 0x0

    aget-object v0, v8, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 565
    .end local v1           #imageFileNameLength:I
    .end local v2           #imageFileTagLength:I
    .end local v4           #fileExtension:Ljava/lang/String;
    .end local v5           #jpsExtension:Ljava/lang/String;
    .end local v6           #mpoExtension:Ljava/lang/String;
    .end local v8           #params:[Ljava/lang/Object;
    :goto_0
    return v0

    .line 562
    :catch_0
    move-exception v7

    .line 564
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "DCFRuler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot get last file number in \'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\' directory."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;
    .locals 12
    .parameter "c"
    .parameter "root"
    .parameter "mode"
    .parameter "dcfInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const-string p1, "/sdcard"

    .line 177
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, result:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v0, "null"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    :cond_1
    const/4 v4, 0x0

    .line 196
    .local v4, fileNumber:I
    :goto_0
    invoke-virtual {p3}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 198
    if-eqz v10, :cond_2

    const-string v0, "null"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    :cond_2
    const/16 v3, 0x64

    .line 201
    .local v3, directoryNumber:I
    const/4 v4, 0x0

    .line 215
    :goto_1
    invoke-virtual {p3}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, dirFreeChar:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 222
    const/16 v0, 0x270f

    if-le v4, v0, :cond_5

    .line 225
    const/4 v4, 0x1

    .line 228
    const-string v0, "DCIM"

    add-int/lit8 v1, v3, 0x1

    invoke-static {p0, p1, v0, v1, v6}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 229
    if-gez v3, :cond_5

    .line 230
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 187
    .end local v3           #directoryNumber:I
    .end local v4           #fileNumber:I
    .end local v6           #dirFreeChar:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .restart local v4       #fileNumber:I
    goto :goto_0

    .line 189
    .end local v4           #fileNumber:I
    :catch_0
    move-exception v8

    .line 191
    .local v8, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .restart local v4       #fileNumber:I
    goto :goto_0

    .line 207
    .end local v8           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const/16 v0, 0x64

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .restart local v3       #directoryNumber:I
    goto :goto_1

    .line 209
    .end local v3           #directoryNumber:I
    :catch_1
    move-exception v8

    .line 211
    .restart local v8       #e:Ljava/lang/NumberFormatException;
    const/16 v3, 0x64

    .line 212
    .restart local v3       #directoryNumber:I
    const/4 v4, 0x0

    goto :goto_1

    .line 234
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #dirFreeChar:Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DCIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, dirPrefix:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    const-string v1, "DCIM"

    move-object v0, p1

    move-object v2, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/DCFRuler;->fillImageFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/DCFInfo;IILcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    invoke-static {v7, v6}, Lcom/android/camera/DCFRuler;->getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 243
    if-gez v3, :cond_6

    .line 244
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 245
    :cond_6
    const/16 v0, 0x64

    if-ge v3, v0, :cond_7

    .line 246
    const-string v0, "DCIM"

    const/16 v1, 0x64

    invoke-static {p0, p1, v0, v1, v6}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 249
    :goto_2
    if-gez v3, :cond_8

    .line 250
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 248
    :cond_7
    const-string v0, "DCIM"

    invoke-static {p0, p1, v0, v3, v6}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 253
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/camera/DCFInfo;->getFileTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/DCFRuler;->getLastImageFileNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 256
    if-gez v4, :cond_9

    .line 257
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 258
    :cond_9
    const/16 v0, 0x270f

    if-ne v4, v0, :cond_a

    .line 261
    const/4 v4, 0x1

    .line 264
    const-string v0, "DCIM"

    add-int/lit8 v1, v3, 0x1

    invoke-static {p0, p1, v0, v1, v6}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 265
    if-gez v3, :cond_b

    .line 266
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 269
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 283
    :cond_b
    new-instance v9, Lcom/android/camera/DCFRuler$PathPackage;

    invoke-direct {v9}, Lcom/android/camera/DCFRuler$PathPackage;-><init>()V

    .line 284
    .local v9, pathPack:Lcom/android/camera/DCFRuler$PathPackage;
    iput v4, v9, Lcom/android/camera/DCFRuler$PathPackage;->mImageCounter:I

    .line 285
    iput v3, v9, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryCounter:I

    .line 287
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_c

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, v4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    .line 293
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    .line 294
    return-object v9

    .line 291
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, v4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getReleativeVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    const-string v0, "DCIM/100MEDIA"

    return-object v0
.end method

.method public static getThumbExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    const-string v0, ".thm"

    return-object v0
.end method

.method public static getVideoNameAndNumber(Landroid/app/Activity;Ljava/lang/StringBuffer;)I
    .locals 12
    .parameter "activity"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    const-string v8, "counter_video"

    invoke-static {p0, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 687
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_2

    const/4 v8, 0x1

    move v9, v8

    :goto_0
    :try_start_0
    const-string v8, "null"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 689
    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 702
    .local v1, fileNumber:I
    :goto_2
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, rootSirectory:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 704
    const-string v4, "/sdcard"

    .line 707
    :cond_0
    const v8, 0x7fffffff

    if-ne v1, v8, :cond_1

    .line 709
    const-string v8, "DCIM"

    const/16 v9, 0x3e8

    sget-object v10, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v10}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v4, v8, v9, v10}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    if-gez v8, :cond_5

    .line 711
    const/4 v1, 0x0

    .line 718
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 719
    const-string v8, "VIDEO"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    const-string v8, "%04d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 721
    invoke-static {}, Lcom/android/camera/DCFRuler;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    .line 722
    .local v6, videoDirectory:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(\\..*)?$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/FileUtility;->isFileExistent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v1

    .line 794
    .end local v1           #fileNumber:I
    .local v2, fileNumber:I
    :goto_3
    return v2

    .line 687
    .end local v2           #fileNumber:I
    .end local v4           #rootSirectory:Ljava/lang/String;
    .end local v6           #videoDirectory:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    move v9, v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 693
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #fileNumber:I
    goto :goto_2

    .line 696
    .end local v1           #fileNumber:I
    :catch_0
    move-exception v0

    .line 698
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1       #fileNumber:I
    goto :goto_2

    .line 714
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local v4       #rootSirectory:Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 732
    .restart local v6       #videoDirectory:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 733
    const-string v8, "VIDEO"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 734
    .local v7, videoPrefixLength:I
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    .line 735
    .local v3, params:[Ljava/lang/Object;
    new-instance v8, Lcom/android/camera/DCFRuler$3;

    invoke-direct {v8, v7}, Lcom/android/camera/DCFRuler$3;-><init>(I)V

    invoke-static {v6, v8, v3}, Lcom/android/camera/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    .line 777
    const/4 v8, 0x0

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 780
    const v8, 0x7fffffff

    if-ne v1, v8, :cond_7

    .line 782
    const-string v8, "DCIM"

    const/16 v9, 0x3e8

    sget-object v10, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v10}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v4, v8, v9, v10}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    if-gez v8, :cond_8

    .line 784
    const/4 v1, 0x0

    .line 791
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 792
    const-string v8, "VIDEO"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    const-string v8, "%04d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    .line 794
    .end local v1           #fileNumber:I
    .restart local v2       #fileNumber:I
    goto :goto_3

    .line 787
    .end local v2           #fileNumber:I
    .restart local v1       #fileNumber:I
    :cond_8
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
.end method

.method public static getVideoNameAndNumber_old(Landroid/app/Activity;Ljava/lang/StringBuffer;)I
    .locals 11
    .parameter "c"
    .parameter "buf"

    .prologue
    .line 799
    invoke-static {}, Lcom/android/camera/DCFRuler;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    .line 801
    .local v5, path:Ljava/lang/String;
    const/4 v4, 0x1

    .line 803
    .local v4, number:I
    const-string v7, "counter_video"

    invoke-static {p0, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, value:Ljava/lang/String;
    const-string v3, "0001"

    .line 810
    .local v3, numString:Ljava/lang/String;
    if-eqz v6, :cond_1

    :try_start_0
    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 811
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 818
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 823
    const-string v7, "%04d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 825
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    .line 842
    .end local v1           #f1:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    return v4

    .line 814
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "0001"

    .line 839
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static getVideoPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 655
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, root:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 658
    const-string v0, "/sdcard"

    .line 661
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "100MEDIA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isSaveToNextFolder(I)Z
    .locals 1
    .parameter "counter"

    .prologue
    .line 627
    const/16 v0, 0x270f

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openDCFRootDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "parantPath"

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, mFile:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #mFile:Ljava/io/File;
    .local v2, mFile:Ljava/io/File;
    move-object v1, v2

    .line 121
    .end local v2           #mFile:Ljava/io/File;
    .restart local v1       #mFile:Ljava/io/File;
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "DCFRuler"

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseDCFFileNumber(Ljava/io/File;)I
    .locals 1
    .parameter "file"

    .prologue
    .line 608
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->parseDCFFileNumber(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static parseDCFFileNumber(Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"

    .prologue
    .line 614
    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, number:Ljava/lang/String;
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 617
    .local v1, value:I
    return v1
.end method

.method public static registerDCFInfo(Lcom/android/camera/DCFInfo;)V
    .locals 2
    .parameter "dcfInfo"

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 77
    const-string v0, "dcfInfo"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v1, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterDCFInfo(Lcom/android/camera/DCFInfo;)Z
    .locals 2
    .parameter "dcfInfo"

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 93
    const-string v0, "dcfInfo"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 96
    :cond_0
    sget-object v1, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
