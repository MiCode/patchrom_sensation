.class Lcom/htc/music/HtcMusic$2;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/music/HtcMusic$2;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/music/HtcMusic$2;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mIsDialogActive:Z
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$002(Lcom/htc/music/HtcMusic;Z)Z

    .line 346
    iget-object v0, p0, Lcom/htc/music/HtcMusic$2;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->m_iUserLastClickEffectIdx:I
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$102(Lcom/htc/music/HtcMusic;I)I

    .line 347
    return-void
.end method
