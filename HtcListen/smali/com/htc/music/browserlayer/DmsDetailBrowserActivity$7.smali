.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$7;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, intent_tmp:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 457
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->onBackPressed()V

    .line 458
    return-void
.end method
