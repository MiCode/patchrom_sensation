.class Lcom/htc/music/HtcMusic$33;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onSelectionChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;

.field final synthetic val$nPosition:I


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5446
    iput-object p1, p0, Lcom/htc/music/HtcMusic$33;->this$0:Lcom/htc/music/HtcMusic;

    iput p2, p0, Lcom/htc/music/HtcMusic$33;->val$nPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5448
    iget-object v0, p0, Lcom/htc/music/HtcMusic$33;->this$0:Lcom/htc/music/HtcMusic;

    iget v1, p0, Lcom/htc/music/HtcMusic$33;->val$nPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->onSelectionChangeUI(I)V

    .line 5449
    return-void
.end method
