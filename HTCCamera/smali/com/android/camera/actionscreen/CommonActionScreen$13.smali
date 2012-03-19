.class Lcom/android/camera/actionscreen/CommonActionScreen$13;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

.field final synthetic val$adapter:Lcom/android/camera/share/MediaSetAsListAdapter;

.field final synthetic val$bubble:Lcom/android/camera/widget/PopupBubble;

.field final synthetic val$cameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/widget/PopupBubble;Lcom/android/camera/HTCCamera;Lcom/android/camera/share/MediaSetAsListAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$13;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    iput-object p2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$13;->val$bubble:Lcom/android/camera/widget/PopupBubble;

    iput-object p3, p0, Lcom/android/camera/actionscreen/CommonActionScreen$13;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p4, p0, Lcom/android/camera/actionscreen/CommonActionScreen$13;->val$adapter:Lcom/android/camera/share/MediaSetAsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "itemView"
    .parameter "position"
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$13;->val$bubble:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->close()V

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$13;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$13;->val$adapter:Lcom/android/camera/share/MediaSetAsListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/share/MediaSetAsListAdapter;->createIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 612
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$13;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$800(Lcom/android/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot start activity"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
