.class Lcom/htc/music/DMCServiceManager$7;
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
    .line 2373
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$7;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$7;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCServiceManager;->DMRPowerOff(I)V

    .line 2378
    return-void
.end method
