.class Lcom/htc/album/SocialNetwork/ActivityMainFriends$3;
.super Ljava/lang/Object;
.source "ActivityMainFriends.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ActivityMainFriends;->showDialogNoConnection()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriends;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainFriends;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends$3;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends$3;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriends;

    #calls: Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onLaunchSettings_Wireless()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->access$000(Lcom/htc/album/SocialNetwork/ActivityMainFriends;)V

    .line 482
    return-void
.end method
