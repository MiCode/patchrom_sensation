.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Lcom/htc/widget/HtcListItemTileImage;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field play_indicator:Lcom/htc/widget/HtcListItemImageButton;

.field final synthetic this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

.field track_option:Lcom/htc/widget/HtcListItemImageButton;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 3218
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->this$1:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
