.class final Lcom/htc/music/widget/SharedAdapter$2;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/htc/music/widget/SharedAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$innerActivity:Landroid/app/Activity;

.field final synthetic val$innerAudioPath:Ljava/lang/String;

.field final synthetic val$innerMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerActivity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 417
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v4, p3}, Lcom/htc/music/widget/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    .line 419
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 425
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SEND_MSG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 426
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 427
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v6, :cond_3

    .line 428
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 465
    const-string v4, "[ShareAdapter]"

    const-string v5, "choose_listener..onClick()..Package is null... "

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 471
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$dialog:Landroid/app/Dialog;

    if-eqz v4, :cond_2

    .line 472
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 474
    :cond_2
    return-void

    .line 430
    :cond_3
    const-string v4, "AddFile"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 431
    .local v0, addFile:Z
    if-eqz v0, :cond_4

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, audioPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 435
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 437
    .end local v1           #audioPath:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 441
    .end local v0           #addFile:Z
    :cond_5
    const-string v4, "[ShareAdapter]"

    const-string v5, "innerAudioPath is null!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_6
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 446
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v6, :cond_7

    .line 447
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 449
    :cond_7
    const-string v4, "AddFile"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 450
    .restart local v0       #addFile:Z
    if-eqz v0, :cond_8

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    .restart local v1       #audioPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 453
    .restart local v3       #uri:Landroid/net/Uri;
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 455
    .end local v1           #audioPath:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_8
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 459
    .end local v0           #addFile:Z
    :cond_9
    const-string v4, "[ShareAdapter]"

    const-string v5, "innerMimeType is null!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
