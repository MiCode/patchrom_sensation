.class abstract Lcom/android/server/MountService$ObbAction;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field mObbState:Lcom/android/server/MountService$ObbState;

.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter
    .parameter "obbState"

    .prologue
    .line 2967
    iput-object p1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2968
    iput-object p2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    .line 2969
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/MountService$ObbActionHandler;)V
    .locals 5
    .parameter "handler"

    .prologue
    const/4 v4, 0x3

    .line 2974
    :try_start_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting to execute action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    iget v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    .line 2976
    iget v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    if-le v1, v4, :cond_0

    .line 2977
    const-string v1, "MountService"

    const-string v2, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    .line 2997
    :goto_0
    return-void

    .line 2982
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleExecute()V

    .line 2984
    const-string v1, "MountService"

    const-string v2, "Posting install MCS_UNBIND"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2987
    :catch_0
    move-exception v0

    .line 2989
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MountService"

    const-string v2, "Posting install MCS_RECONNECT"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2991
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2993
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "Error handling OBB action"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2994
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    .line 2995
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected getObbInfo()Landroid/content/res/ObbInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3005
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v3, v3, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3011
    .local v1, obbInfo:Landroid/content/res/ObbInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 3012
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read OBB file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3006
    .end local v1           #obbInfo:Landroid/content/res/ObbInfo;
    :catch_0
    move-exception v0

    .line 3007
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t call DefaultContainerService to fetch OBB info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    const/4 v1, 0x0

    .restart local v1       #obbInfo:Landroid/content/res/ObbInfo;
    goto :goto_0

    .line 3014
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-object v1
.end method

.method abstract handleError()V
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendNewStatusOrIgnore(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 3018
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v1, :cond_1

    .line 3027
    :cond_0
    :goto_0
    return-void

    .line 3023
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v2, v2, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v3, v3, Lcom/android/server/MountService$ObbState;->nonce:I

    invoke-interface {v1, v2, v3, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3024
    :catch_0
    move-exception v0

    .line 3025
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MountService"

    const-string v2, "MountServiceListener went away while calling onObbStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
