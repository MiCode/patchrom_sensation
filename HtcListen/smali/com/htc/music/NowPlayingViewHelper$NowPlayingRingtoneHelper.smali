.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
.super Lcom/htc/music/util/RingtoneHelper;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NowPlayingRingtoneHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    .line 1622
    invoke-direct {p0, p2}, Lcom/htc/music/util/RingtoneHelper;-><init>(Landroid/content/Context;)V

    .line 1623
    return-void
.end method


# virtual methods
.method public showNoNotificationRingtoneDialog()V
    .locals 2

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1632
    return-void
.end method

.method public showRingtoneDialog()V
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1628
    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "contactResultCode"

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    .line 1636
    return-void
.end method
