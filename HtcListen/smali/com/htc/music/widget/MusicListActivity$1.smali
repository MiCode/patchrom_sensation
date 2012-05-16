.class Lcom/htc/music/widget/MusicListActivity$1;
.super Landroid/os/Handler;
.source "MusicListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity$1;->this$0:Lcom/htc/music/widget/MusicListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 290
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity$1;->this$0:Lcom/htc/music/widget/MusicListActivity;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/htc/music/widget/MusicListActivity;->access$100(Lcom/htc/music/widget/MusicListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity$1;->this$0:Lcom/htc/music/widget/MusicListActivity;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/htc/music/widget/MusicListActivity;->access$100(Lcom/htc/music/widget/MusicListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 295
    :cond_0
    const-string v1, "[MusicListActivity]"

    const-string v2, "mbufferdialog dismiss"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, message:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity$1;->this$0:Lcom/htc/music/widget/MusicListActivity;

    invoke-virtual {v1}, Lcom/htc/music/widget/MusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity$1;->this$0:Lcom/htc/music/widget/MusicListActivity;

    invoke-virtual {v1}, Lcom/htc/music/widget/MusicListActivity;->onDeletionCompleted()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
