.class Lcom/android/camera/component/ThumbnailUI$7;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$7;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$7;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->createThumbnailImage()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$7;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->applySkin()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1100(Lcom/android/camera/component/ThumbnailUI;)V

    .line 163
    return-void
.end method
