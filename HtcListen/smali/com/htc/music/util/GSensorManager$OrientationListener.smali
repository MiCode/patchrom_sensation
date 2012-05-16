.class Lcom/htc/music/util/GSensorManager$OrientationListener;
.super Landroid/view/WindowOrientationListener;
.source "GSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/GSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/GSensorManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/util/GSensorManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    .line 143
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 8
    .parameter "rotation"

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$300(Lcom/htc/music/util/GSensorManager;)[I

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$000(Lcom/htc/music/util/GSensorManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$100(Lcom/htc/music/util/GSensorManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$400(Lcom/htc/music/util/GSensorManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, nRes:I
    if-nez v0, :cond_2

    .line 157
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$300(Lcom/htc/music/util/GSensorManager;)[I

    move-result-object v1

    aget p1, v1, v3

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$300(Lcom/htc/music/util/GSensorManager;)[I

    move-result-object v1

    aget v1, v1, v3

    if-ne v1, p1, :cond_5

    .line 161
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #setter for: Lcom/htc/music/util/GSensorManager;->mTempOrientation:I
    invoke-static {v1, v3}, Lcom/htc/music/util/GSensorManager;->access$502(Lcom/htc/music/util/GSensorManager;I)I

    .line 171
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mTempOrientation:I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$500(Lcom/htc/music/util/GSensorManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mOrientationMode:I
    invoke-static {v2}, Lcom/htc/music/util/GSensorManager;->access$600(Lcom/htc/music/util/GSensorManager;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 175
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mTempOrientation:I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$500(Lcom/htc/music/util/GSensorManager;)I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 176
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$700(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #setter for: Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z
    invoke-static {v1, v4}, Lcom/htc/music/util/GSensorManager;->access$002(Lcom/htc/music/util/GSensorManager;Z)Z

    .line 178
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$200(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OrientationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/GSensorManager$OrientationListener;->disable()V

    .line 179
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$700(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onToLandscape()V

    .line 180
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    :cond_4
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 162
    :cond_5
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$300(Lcom/htc/music/util/GSensorManager;)[I

    move-result-object v1

    aget v1, v1, v4

    if-ne v1, p1, :cond_6

    .line 163
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #setter for: Lcom/htc/music/util/GSensorManager;->mTempOrientation:I
    invoke-static {v1, v4}, Lcom/htc/music/util/GSensorManager;->access$502(Lcom/htc/music/util/GSensorManager;I)I

    goto :goto_1

    .line 164
    :cond_6
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$300(Lcom/htc/music/util/GSensorManager;)[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    if-eq v1, p1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$300(Lcom/htc/music/util/GSensorManager;)[I

    move-result-object v1

    aget v1, v1, v5

    if-ne v1, p1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #setter for: Lcom/htc/music/util/GSensorManager;->mTempOrientation:I
    invoke-static {v1, v5}, Lcom/htc/music/util/GSensorManager;->access$502(Lcom/htc/music/util/GSensorManager;I)I

    goto/16 :goto_1

    .line 187
    :cond_7
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mTempOrientation:I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$500(Lcom/htc/music/util/GSensorManager;)I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 188
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$700(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #setter for: Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z
    invoke-static {v1, v4}, Lcom/htc/music/util/GSensorManager;->access$002(Lcom/htc/music/util/GSensorManager;Z)Z

    .line 190
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$200(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OrientationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/GSensorManager$OrientationListener;->disable()V

    .line 191
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$700(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onToILandscape()V

    .line 192
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 194
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    :cond_8
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 199
    :cond_9
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mTempOrientation:I
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$500(Lcom/htc/music/util/GSensorManager;)I

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$700(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #setter for: Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z
    invoke-static {v1, v4}, Lcom/htc/music/util/GSensorManager;->access$002(Lcom/htc/music/util/GSensorManager;Z)Z

    .line 202
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$200(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OrientationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/GSensorManager$OrientationListener;->disable()V

    .line 203
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$700(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onToPortrait()V

    .line 204
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 206
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    :cond_a
    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$OrientationListener;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
