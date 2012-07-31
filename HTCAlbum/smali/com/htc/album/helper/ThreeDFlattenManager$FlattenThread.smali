.class Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;
.super Ljava/lang/Thread;
.source "ThreeDFlattenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ThreeDFlattenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlattenThread"
.end annotation


# instance fields
.field private cancelFlatten:Z

.field private currentFlattendBMP:Landroid/graphics/Bitmap;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mIsSDCardFull:Z

.field final synthetic this$0:Lcom/htc/album/helper/ThreeDFlattenManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 776
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 758
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 759
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    .line 760
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 761
    iput-boolean v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->cancelFlatten:Z

    .line 762
    iput-boolean v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    .line 763
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    .line 777
    iput-object p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    .line 779
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->setPriority(I)V

    .line 780
    const-string v0, "3DImageFlattener"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->setName(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 766
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 758
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 759
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    .line 760
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 761
    iput-boolean v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->cancelFlatten:Z

    .line 762
    iput-boolean v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    .line 763
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    .line 767
    iput-object p3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 768
    iput-object p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    .line 769
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 771
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->setPriority(I)V

    .line 772
    const-string v0, "3DImageFlattener"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->setName(Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method private DoRun(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 21
    .parameter "dataPath"
    .parameter "mimeType"
    .parameter "lDataSize"
    .parameter "lModifyTime"

    .prologue
    .line 1187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->isSingle:Z
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1300(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1193
    const/4 v11, 0x0

    .line 1195
    .local v11, fos:Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 1196
    .local v16, root:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1900(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v2, 0x0

    const-string v3, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1002(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1200
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v16           #root:Ljava/io/File;
    .local v17, root:Ljava/io/File;
    move-object/from16 v16, v17

    .line 1208
    .end local v17           #root:Ljava/io/File;
    .restart local v16       #root:Ljava/io/File;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1210
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 1213
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 1216
    move-object/from16 v10, p1

    .line 1217
    .local v10, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1219
    .local v9, fileName:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 1220
    .local v14, lastIndexOfSlash:I
    const-string v1, "."

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 1221
    .local v13, lastIndexOfDot:I
    if-ltz v14, :cond_6

    .line 1223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$602(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1231
    :goto_1
    add-int/lit8 v15, v14, 0x1

    .line 1232
    .local v15, nextCharIndexOfLastSlash:I
    if-lt v13, v15, :cond_1

    .line 1235
    invoke-virtual {v10, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1236
    .local v20, tempFileName:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1238
    move-object/from16 v9, v20

    .line 1251
    .end local v20           #tempFileName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1252
    .local v18, strFilenameAtTheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$600(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1202(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 1259
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1102(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1269
    :goto_2
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1270
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1272
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1274
    :cond_3
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1275
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .local v12, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v1, v2, v3, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1276
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 1277
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 1279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1280
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v11, v12

    .line 1292
    .end local v8           #file:Ljava/io/File;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v13           #lastIndexOfDot:I
    .end local v14           #lastIndexOfSlash:I
    .end local v15           #nextCharIndexOfLastSlash:I
    .end local v16           #root:Ljava/io/File;
    .end local v18           #strFilenameAtTheSameFolder:Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 1204
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #root:Ljava/io/File;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    const-string v2, "/mnt/sdcard/.3DFlatten"

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1002(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1205
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v16           #root:Ljava/io/File;
    .restart local v17       #root:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #root:Ljava/io/File;
    .restart local v16       #root:Ljava/io/File;
    goto/16 :goto_0

    .line 1227
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v13       #lastIndexOfDot:I
    .restart local v14       #lastIndexOfSlash:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$602(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1283
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v13           #lastIndexOfDot:I
    .end local v14           #lastIndexOfSlash:I
    :catch_0
    move-exception v7

    .line 1285
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_4
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .end local v7           #e:Ljava/io/FileNotFoundException;
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v13       #lastIndexOfDot:I
    .restart local v14       #lastIndexOfSlash:I
    .restart local v15       #nextCharIndexOfLastSlash:I
    .restart local v18       #strFilenameAtTheSameFolder:Ljava/lang/String;
    :cond_7
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p5

    move-wide/from16 v5, p3

    .line 1263
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v19

    .line 1264
    .local v19, strHashFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1102(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1287
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v13           #lastIndexOfDot:I
    .end local v14           #lastIndexOfSlash:I
    .end local v15           #nextCharIndexOfLastSlash:I
    .end local v18           #strFilenameAtTheSameFolder:Ljava/lang/String;
    .end local v19           #strHashFileName:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1289
    .local v7, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1287
    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #file:Ljava/io/File;
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #lastIndexOfDot:I
    .restart local v14       #lastIndexOfSlash:I
    .restart local v15       #nextCharIndexOfLastSlash:I
    .restart local v18       #strFilenameAtTheSameFolder:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1283
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method static synthetic access$2000(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->setPriority(I)V

    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->cancelFlatten:Z

    .line 1299
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$700(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$700(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;->onFlattenCancel()V

    .line 1303
    :cond_0
    return-void
.end method

.method public checkFileExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "strPath"

    .prologue
    .line 848
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 849
    :cond_0
    const/4 v1, 0x0

    .line 856
    :goto_0
    return v1

    .line 851
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ThreeDFlattenManager][checkFileExist]: fileCheck.exists()+"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 853
    .local v0, fileCheck:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 854
    .local v1, isExist:Z
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ThreeDFlattenManager][checkFileExist]: fileCheck.exists()-"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkSDCardFull()Z
    .locals 2

    .prologue
    .line 907
    const-wide/32 v0, 0x500000

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    .line 908
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    if-eqz v0, :cond_0

    .line 910
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ThreeDFlattenManager][checkSDCardFull]: Storage Size small than 5242880 byte, skip save to 2D."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    return v0
.end method

.method public clearCache(Ljava/lang/String;JJ)Z
    .locals 24
    .parameter "strTargetPath"
    .parameter "lKeepTime"
    .parameter "lExcuteDuration"

    .prologue
    .line 785
    const-wide/16 p2, 0x0

    .line 787
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 789
    :cond_0
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ThreeDFlattenManager][clearCache]: clearcache parameter NG !"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/4 v6, 0x0

    .line 836
    :goto_0
    return v6

    .line 794
    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ThreeDFlattenManager][clearCache]: Start, CurTime: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 797
    .local v14, lTimeStart:J
    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    sub-long v10, v6, p2

    .line 798
    .local v10, lCurTime:J
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v3

    .line 799
    .local v3, uriBase:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 800
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 803
    .local v16, nCount:I
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "date_modified"

    aput-object v7, v4, v6

    .line 804
    .local v4, columns:[Ljava/lang/String;
    const-string v5, ""

    .line 805
    .local v5, szWhere:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data like \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "date_modified"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 809
    const/4 v8, 0x0

    .line 811
    .local v8, cur:Landroid/database/Cursor;
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "date_modified"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 812
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->cancelFlatten:Z

    if-nez v6, :cond_3

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 814
    const-string v6, "_data"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 815
    .local v17, strData:Ljava/lang/String;
    const-string v6, "_id"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 816
    .local v18, strId:Ljava/lang/String;
    const-string v6, "date_modified"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 817
    .local v12, lModiftTime:J
    new-instance v6, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 818
    .local v19, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ThreeDFlattenManager][clearCache]: Delete - ID: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Data: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", URI: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", ModifyTime: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 823
    add-int/lit8 v16, v16, 0x1

    .line 826
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v6, v14

    cmp-long v6, v6, p4

    if-ltz v6, :cond_2

    .line 831
    .end local v12           #lModiftTime:J
    .end local v17           #strData:Ljava/lang/String;
    .end local v18           #strId:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_4
    :goto_1
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ThreeDFlattenManager][clearCache]: End, Delete "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " temp files, Use Time: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 828
    :catch_0
    move-exception v9

    .line 829
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ThreeDFlattenManager][clearCache]: delete cache NG !"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
.end method

.method public finished()V
    .locals 13

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1307
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1800(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1311
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$2;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$2;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1335
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->isSingle:Z
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1300(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1338
    new-instance v9, Landroid/media/MediaScanner;

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 1339
    .local v9, MS:Landroid/media/MediaScanner;
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "external"

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2102(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1340
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 1342
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1343
    .local v10, cv:Landroid/content/ContentValues;
    const-string v0, "orientation"

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1344
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$200(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2100(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1355
    .end local v10           #cv:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1357
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$200(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$3;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1405
    :cond_3
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->cancelFlatten:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_4

    .line 1407
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 1409
    :cond_4
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$200(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2100(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1431
    :goto_2
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->release()V

    .line 1433
    return-void

    .line 1324
    .end local v9           #MS:Landroid/media/MediaScanner;
    :cond_5
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$000(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1326
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$000(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1328
    :cond_6
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto/16 :goto_0

    .line 1347
    .restart local v9       #MS:Landroid/media/MediaScanner;
    :cond_7
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 1349
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1350
    .restart local v10       #cv:Landroid/content/ContentValues;
    const-string v0, "orientation"

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1351
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$200(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2100(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1415
    .end local v9           #MS:Landroid/media/MediaScanner;
    .end local v10           #cv:Landroid/content/ContentValues;
    :cond_8
    new-instance v9, Landroid/media/MediaScanner;

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 1417
    .restart local v9       #MS:Landroid/media/MediaScanner;
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1700(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1419
    .local v11, i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v0, v11, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;

    if-eqz v0, :cond_9

    move-object v0, v11

    .line 1421
    check-cast v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_9

    move-object v0, v11

    .line 1423
    check-cast v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;

    check-cast v11, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;

    .end local v11           #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v1, v11, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    const-string v2, "external"

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    goto :goto_3

    .line 1428
    :cond_a
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #calls: Lcom/htc/album/helper/ThreeDFlattenManager;->shareMultiFlattenedMedia()V
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2500(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    goto/16 :goto_2
.end method

.method public generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 886
    const/4 v3, 0x0

    .line 889
    .local v3, x2:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$600(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, candidate:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 893
    .local v1, exists:Z
    if-nez v1, :cond_0

    .line 899
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 900
    .local v2, strNewFilename:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 902
    return-object v2
.end method

.method public makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 5
    .parameter "strFilePath"
    .parameter "strModifyTime"
    .parameter "lFileSize"

    .prologue
    .line 841
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 842
    .local v0, hash:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    const-string v1, "%08X-%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1437
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$4;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$4;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    #calls: Lcom/htc/album/helper/ThreeDFlattenManager;->setKeepScreenOn(Landroid/app/Activity;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$2600(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/app/Activity;Z)V

    .line 1451
    iput-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    .line 1452
    iput-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1453
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1456
    iput-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    .line 1458
    :cond_1
    return-void
.end method

.method public run()V
    .locals 35

    .prologue
    .line 917
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$700(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$700(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;->onFlattenStart()V

    .line 925
    :cond_0
    const-string v3, "/mnt/sdcard/.3DFlatten"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x5dc

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->checkSDCardFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    const-string v3, "/mnt/sdcard/.3DFlatten"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->clearCache(Ljava/lang/String;JJ)Z

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->checkSDCardFull()Z

    .line 933
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mNoAdapter:Z
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$800(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 935
    const/4 v3, 0x0

    .line 936
    .local v3, mDataPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v8, "datapath"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v8, "datapath"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 945
    :goto_0
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1183
    .end local v3           #mDataPath:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 942
    .restart local v3       #mDataPath:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 951
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v8, "datasize"

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 952
    .local v6, lDataSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v8, "modifytime"

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 954
    .local v4, lModifyTime:J
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-gtz v2, :cond_6

    .line 956
    :cond_5
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v8, "[HTCAlbum][ThreeDFlattenManager][FlattenThread]: lDataSize or lModifyTime NG !"

    invoke-static {v2, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 v2, p0

    .line 960
    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v29

    .line 961
    .local v29, strFilename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ".jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 962
    .local v32, strFullPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v25

    .line 964
    .local v25, isFileExist:Z
    if-eqz v25, :cond_8

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, v32

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1102(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 975
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 976
    .local v17, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v8, "."

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v8, 0x0

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$602(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 978
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 979
    .local v30, strFilenameAttheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$600(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1202(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1159
    .end local v3           #mDataPath:Ljava/lang/String;
    .end local v4           #lModifyTime:J
    .end local v6           #lDataSize:J
    .end local v17           #fileName:Ljava/lang/String;
    .end local v25           #isFileExist:Z
    .end local v29           #strFilename:Ljava/lang/String;
    .end local v30           #strFilenameAttheSameFolder:Ljava/lang/String;
    .end local v32           #strFullPath:Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->isShareCancel:Z
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$100(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    if-nez v2, :cond_17

    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->finished()V

    goto/16 :goto_1

    .line 985
    .restart local v3       #mDataPath:Ljava/lang/String;
    .restart local v4       #lModifyTime:J
    .restart local v6       #lDataSize:J
    .restart local v25       #isFileExist:Z
    .restart local v29       #strFilename:Ljava/lang/String;
    .restart local v32       #strFullPath:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v8, p0

    move-object v9, v3

    move-wide v11, v6

    move-wide v13, v4

    invoke-direct/range {v8 .. v14}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->DoRun(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_2

    .line 989
    .end local v3           #mDataPath:Ljava/lang/String;
    .end local v4           #lModifyTime:J
    .end local v6           #lDataSize:J
    .end local v25           #isFileExist:Z
    .end local v29           #strFilename:Ljava/lang/String;
    .end local v32           #strFullPath:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    if-nez v2, :cond_7

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v24, v0

    .line 993
    .local v24, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->isSingle:Z
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1300(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->position:I
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1400(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v23

    .line 997
    .local v23, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v23, :cond_2

    .line 1004
    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v10

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v12

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v29

    .line 1005
    .restart local v29       #strFilename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ".jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1006
    .restart local v32       #strFullPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v25

    .line 1008
    .restart local v25       #isFileExist:Z
    if-eqz v25, :cond_c

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1016
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1017
    .restart local v17       #fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v8, "."

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$602(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1019
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1020
    .restart local v30       #strFilenameAttheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$600(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1202(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v2

    const/4 v8, 0x6

    if-eq v2, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v2

    const/4 v8, 0x7

    if-eq v2, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v2

    const/16 v8, 0x8

    if-ne v2, v8, :cond_b

    .line 1027
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1102(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 1030
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, v32

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1102(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 1037
    .end local v17           #fileName:Ljava/lang/String;
    .end local v30           #strFilenameAttheSameFolder:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    .line 1038
    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v11

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v13

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->DoRun(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_2

    .line 1044
    .end local v23           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v25           #isFileExist:Z
    .end local v29           #strFilename:Ljava/lang/String;
    .end local v32           #strFullPath:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->pickerResult:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1600(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v8, "picker_index_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 1045
    .local v26, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1702(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1046
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_e
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 1049
    .local v27, pos:Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->checkSDCardFull()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->cancelFlatten:Z

    if-nez v2, :cond_7

    .line 1055
    :cond_f
    new-instance v19, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    .line 1056
    .local v19, flattendIImage:Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v23

    .line 1057
    .restart local v23       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v23, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mNoAdapter:Z
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$800(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1062
    :cond_10
    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1066
    :cond_11
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1067
    .local v18, filename:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v8, "."

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1068
    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1069
    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 1070
    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1700(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1078
    .end local v18           #filename:Ljava/lang/String;
    :cond_12
    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v10

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v12

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v31

    .line 1079
    .local v31, strFilenameHashed:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ".jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1080
    .local v33, strFullPathHashed:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v25

    .line 1082
    .restart local v25       #isFileExist:Z
    if-eqz v25, :cond_14

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1090
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1093
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1094
    .restart local v17       #fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v8, "."

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$602(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1096
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1097
    .restart local v30       #strFilenameAttheSameFolder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$600(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1202(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1099
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1153
    .end local v17           #fileName:Ljava/lang/String;
    .end local v30           #strFilenameAttheSameFolder:Ljava/lang/String;
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1700(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1106
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    .line 1111
    const/16 v20, 0x0

    .line 1113
    .local v20, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v28, root:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1116
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdir()Z

    .line 1118
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_13

    .line 1122
    const/16 v34, 0x0

    .line 1123
    .local v34, x:I
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1124
    .restart local v17       #fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v8, "."

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1125
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 1126
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 1129
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v16, file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1132
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 1134
    :cond_16
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1135
    .end local v20           #fos:Ljava/io/FileOutputStream;
    .local v21, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x55

    move-object/from16 v0, v21

    invoke-virtual {v2, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1136
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V

    .line 1137
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->currentFlattendBMP:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v20, v21

    .end local v21           #fos:Ljava/io/FileOutputStream;
    .restart local v20       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 1143
    .end local v16           #file:Ljava/io/File;
    .end local v17           #fileName:Ljava/lang/String;
    .end local v28           #root:Ljava/io/File;
    .end local v34           #x:I
    :catch_0
    move-exception v15

    .line 1145
    .local v15, e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 1147
    .end local v15           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v15

    .line 1149
    .local v15, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1163
    .end local v15           #e:Ljava/io/IOException;
    .end local v19           #flattendIImage:Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;
    .end local v20           #fos:Ljava/io/FileOutputStream;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v24           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v25           #isFileExist:Z
    .end local v26           #pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27           #pos:Ljava/lang/Integer;
    .end local v31           #strFilenameHashed:Ljava/lang/String;
    .end local v33           #strFullPathHashed:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mIsSDCardFull:Z

    if-eqz v2, :cond_2

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1800(Lcom/htc/album/helper/ThreeDFlattenManager;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$000(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    const/high16 v8, 0x33

    invoke-virtual {v2, v8}, Landroid/app/Activity;->removeDialog(I)V

    .line 1171
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    new-instance v8, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$1;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)V

    invoke-virtual {v2, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->release()V

    goto/16 :goto_1

    .line 1147
    .restart local v16       #file:Ljava/io/File;
    .restart local v17       #fileName:Ljava/lang/String;
    .restart local v19       #flattendIImage:Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;
    .restart local v21       #fos:Ljava/io/FileOutputStream;
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v23       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v24       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v25       #isFileExist:Z
    .restart local v26       #pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27       #pos:Ljava/lang/Integer;
    .restart local v28       #root:Ljava/io/File;
    .restart local v31       #strFilenameHashed:Ljava/lang/String;
    .restart local v33       #strFullPathHashed:Ljava/lang/String;
    .restart local v34       #x:I
    :catch_2
    move-exception v15

    move-object/from16 v20, v21

    .end local v21           #fos:Ljava/io/FileOutputStream;
    .restart local v20       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1143
    .end local v20           #fos:Ljava/io/FileOutputStream;
    .restart local v21       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v15

    move-object/from16 v20, v21

    .end local v21           #fos:Ljava/io/FileOutputStream;
    .restart local v20       #fos:Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method public updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "strPath"
    .parameter "strMimeType"

    .prologue
    .line 862
    :try_start_0
    new-instance v0, Landroid/media/MediaScanner;

    iget-object v8, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v8}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 863
    .local v0, MS:Landroid/media/MediaScanner;
    const-string v8, "external"

    invoke-virtual {v0, p1, v8, p2}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 864
    .local v6, uriImage:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 865
    .local v7, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 867
    .local v2, lCurTime:J
    const-string v8, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 869
    iget-object v8, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 870
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 875
    .local v4, nResult:I
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][ThreeDFlattenManager][updateModifyTime]: UpdateTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    const/4 v8, 0x1

    .end local v0           #MS:Landroid/media/MediaScanner;
    .end local v2           #lCurTime:J
    .end local v4           #nResult:I
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #uriImage:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :goto_0
    return v8

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][ThreeDFlattenManager][updateModifyTime]: updateModifyTime NG !"

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const/4 v8, 0x0

    goto :goto_0
.end method
