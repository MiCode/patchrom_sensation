.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$7;
.super Ljava/lang/Object;
.source "DlnaBrowserActivityExp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    .line 271
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->collapseAll()V

    .line 273
    return-void
.end method
