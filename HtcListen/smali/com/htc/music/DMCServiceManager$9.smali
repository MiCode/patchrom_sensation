.class Lcom/htc/music/DMCServiceManager$9;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2687
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$9;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$9;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v1, -0x2

    const/4 v2, 0x0

    #calls: Lcom/htc/music/DMCServiceManager;->TuneVolume(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/DMCServiceManager;->access$3700(Lcom/htc/music/DMCServiceManager;II)V

    .line 2690
    return-void
.end method
