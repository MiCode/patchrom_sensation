.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$3;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$3;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$3;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setResult(I)V

    .line 405
    return-void
.end method
