.class Lcom/htc/album/helper/ThreeDFlattenManager$2;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ThreeDFlattenManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ThreeDFlattenManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$2;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$2;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$000(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$2;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->cancelFlattenMedias()V

    .line 169
    return-void
.end method
