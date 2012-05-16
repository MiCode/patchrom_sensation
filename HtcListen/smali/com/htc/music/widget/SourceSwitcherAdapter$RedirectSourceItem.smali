.class Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
.super Lcom/htc/music/util/SourceItem;
.source "SourceSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/SourceSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedirectSourceItem"
.end annotation


# instance fields
.field mRedirect:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 1
    .parameter "tag"
    .parameter "launchIntent"
    .parameter "redirect"

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;->mRedirect:Z

    .line 329
    iput-boolean p3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;->mRedirect:Z

    .line 330
    return-void
.end method
