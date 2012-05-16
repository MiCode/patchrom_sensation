.class Lcom/htc/music/widget/SourceSwitcherAdapter$1;
.super Landroid/os/Handler;
.source "SourceSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/SourceSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SourceSwitcherAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;->this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;->this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    if-eqz v2, :cond_0

    .line 190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 192
    .local v0, item:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;->this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 193
    .local v1, newSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;->this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v2, v2, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;->this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v3, v3, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 195
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;->this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iput-object v1, v2, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 197
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;->this$0:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
