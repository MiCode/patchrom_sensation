.class Lcom/android/camera/component/RecordingTimerUI$2;
.super Ljava/lang/Object;
.source "RecordingTimerUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingTimerUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RecordingTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingTimerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, -0x1

    .line 76
    check-cast p1, Lcom/android/camera/OneValueEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 77
    .local v3, totalSeconds:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 79
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #calls: Lcom/android/camera/component/RecordingTimerUI;->initializeUI()V
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$100(Lcom/android/camera/component/RecordingTimerUI;)V

    .line 80
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$200(Lcom/android/camera/component/RecordingTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 81
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    iget-object v6, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v6}, Lcom/android/camera/component/RecordingTimerUI;->access$000(Lcom/android/camera/component/RecordingTimerUI;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/component/RecordingTimerUI;->showUI(Landroid/view/View;ZZ)V

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-virtual {v5}, Lcom/android/camera/component/RecordingTimerUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v0

    .line 88
    .local v0, limitCheck:Lcom/android/camera/RecordLimitCheck;
    if-eqz v0, :cond_2

    .line 89
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-virtual {v5}, Lcom/android/camera/component/RecordingTimerUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecordingTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v1

    .line 94
    .local v1, remainingTime:J
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/RecordLimitCheck;->getMaxSeconds()I

    move-result v5

    if-eq v5, v9, :cond_1

    const-wide/16 v5, 0xa

    cmp-long v5, v1, v5

    if-gtz v5, :cond_1

    .line 95
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_1
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/component/RecordingTimerUI$2;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #calls: Lcom/android/camera/component/RecordingTimerUI;->getTimeString(J)Ljava/lang/String;
    invoke-static {v6, v1, v2}, Lcom/android/camera/component/RecordingTimerUI;->access$400(Lcom/android/camera/component/RecordingTimerUI;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void

    .line 91
    .end local v1           #remainingTime:J
    :cond_2
    move-wide v1, v3

    .restart local v1       #remainingTime:J
    goto :goto_0
.end method
