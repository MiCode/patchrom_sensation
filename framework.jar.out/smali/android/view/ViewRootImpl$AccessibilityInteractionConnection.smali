.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final mRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .parameter "viewAncestor"

    .prologue
    .line 4702
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 4703
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    .line 4704
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 8
    .parameter "accessibilityId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4709
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    .line 4710
    .local v7, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v7, :cond_0

    .line 4711
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 4715
    :cond_0
    return-void
.end method

.method public findAccessibilityNodeInfoByViewId(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 8
    .parameter "viewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4731
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    .line 4732
    .local v7, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v7, :cond_0

    .line 4733
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByViewIdClientThread(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 4737
    :cond_0
    return-void
.end method

.method public findAccessibilityNodeInfosByViewText(Ljava/lang/String;IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 9
    .parameter "text"
    .parameter "accessibilityId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4742
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewRootImpl;

    .line 4743
    .local v8, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_0

    .line 4744
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfosByViewTextClientThread(Ljava/lang/String;IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 4748
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 9
    .parameter "accessibilityId"
    .parameter "action"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 4720
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewRootImpl;

    .line 4721
    .local v8, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_0

    .line 4722
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->performAccessibilityActionClientThread(IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V

    .line 4726
    :cond_0
    return-void
.end method
