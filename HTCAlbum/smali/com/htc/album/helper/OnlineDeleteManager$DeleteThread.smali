.class Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;
.super Ljava/lang/Thread;
.source "OnlineDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/OnlineDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteThread"
.end annotation


# instance fields
.field private c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

.field private cancelDelete:Z

.field private isDeleteAll:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

.field private mPickerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/helper/OnlineDeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;Landroid/app/Activity;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter "adapter"
    .parameter "callback"
    .parameter
    .parameter "deleteAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/htc/album/SocialNetwork/LivePhotoAdapter;",
            "Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 215
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 206
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 207
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    .line 208
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 209
    iput-boolean v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    .line 210
    iput-boolean v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isDeleteAll:Z

    .line 211
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mPickerList:Ljava/util/List;

    .line 216
    iput-object p3, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 217
    iput-object p2, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    .line 218
    iput-object p4, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 219
    iput-object p5, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mPickerList:Ljava/util/List;

    .line 220
    iput-boolean p6, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isDeleteAll:Z

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->setPriority(I)V

    .line 223
    const-string v0, "OnlineDeleter"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->setName(Ljava/lang/String;)V

    .line 224
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/htc/album/helper/OnlineDeleteManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DeleteThread] Cancel delete now..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->setPriority(I)V

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isDeleteAll:Z

    .line 288
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    invoke-interface {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 289
    :cond_0
    return-void
.end method

.method public finished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/htc/album/helper/OnlineDeleteManager;->access$000(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 296
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    .line 300
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$2;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$2;-><init>(Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    iput-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    .line 307
    iput-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 309
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    iget-boolean v2, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isDeleteAll:Z

    invoke-interface {v1, v2}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;->onDeleteEnd(Z)V

    .line 311
    :cond_1
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 231
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    if-nez v8, :cond_1

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->finished()V

    .line 278
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    .line 236
    .local v0, activity:Landroid/app/Activity;
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mActivity:Landroid/app/Activity;

    new-instance v9, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$1;

    invoke-direct {v9, p0, v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$1;-><init>(Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;Landroid/app/Activity;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->decoderStop()V

    .line 245
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mPickerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v3, v8, [Lcom/htc/opensense/social/data/Medium;

    .line 246
    .local v3, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v2, 0x0

    .line 247
    .local v2, index:I
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mPickerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 248
    .local v6, pickedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-boolean v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    if-eqz v8, :cond_5

    .line 257
    .end local v6           #pickedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_2
    iget-boolean v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    if-nez v8, :cond_4

    .line 259
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->c:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    invoke-interface {v8}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;->onDeleteStart()V

    .line 261
    :cond_3
    invoke-static {}, Lcom/htc/album/helper/OnlineDeleteManager;->access$600()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[DeleteThread] Start deleting now..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v8, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getMediumOpList([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v5

    .line 264
    .local v5, mediumOpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    .line 265
    .local v4, mediumOp:Lcom/htc/opensense/social/MediumOp;
    iget-boolean v8, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancelDelete:Z

    if-eqz v8, :cond_7

    .line 277
    .end local v4           #mediumOp:Lcom/htc/opensense/social/MediumOp;
    .end local v5           #mediumOpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->finished()V

    goto :goto_0

    .line 250
    .restart local v6       #pickedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_5
    if-nez v6, :cond_6

    .line 251
    invoke-static {}, Lcom/htc/album/helper/OnlineDeleteManager;->access$600()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DeleteThread run: aPhoto is null"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_6
    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v8

    aput-object v8, v3, v2

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 270
    .end local v6           #pickedPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .restart local v4       #mediumOp:Lcom/htc/opensense/social/MediumOp;
    .restart local v5       #mediumOpList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_7
    :try_start_0
    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->delete()V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 271
    :catch_0
    move-exception v7

    .line 272
    .local v7, snException:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-static {}, Lcom/htc/album/helper/OnlineDeleteManager;->access$600()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onDelete: medium delete error"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
