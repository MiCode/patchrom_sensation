.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$7;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 450
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, intent_tmp:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 454
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivity(Landroid/content/Intent;)V

    .line 457
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$7;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setResult(I)V

    .line 460
    return-void
.end method
