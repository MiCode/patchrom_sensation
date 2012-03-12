.class public Lcom/android/camera/widget/SlidingPanel;
.super Landroid/widget/RelativeLayout;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;,
        Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;,
        Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_INTERVAL:I = 0x14

.field public static final DEFAULT_ANIMATION_SPEED:D = 0.5

.field public static final DOCK_BOTTOM:I = 0x3

.field public static final DOCK_LEFT:I = 0x0

.field public static final DOCK_RIGHT:I = 0x2

.field public static final DOCK_TOP:I = 0x1

.field private static final MIN_ANIMATION_LENGTH:I = 0x2

.field private static final MSG_ANIMATE:I = 0x1

.field private static final MSG_NOTIFY_PANEL_CLOSED:I = 0x2

.field private static final MSG_NOTIFY_PANEL_OPEN:I = 0x3

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_CLOSING:I = 0x1

.field public static final STATE_OPEN:I = 0x3

.field public static final STATE_OPENING:I = 0x2


# instance fields
.field private m_AnimationSpeed:D

.field private m_CurrentPosition:I

.field private m_Dock:I

.field private final m_Handler:Landroid/os/Handler;

.field private m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

.field private m_OnPanelMovingListener:Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;

.field private m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

.field private m_State:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    .line 69
    new-instance v0, Lcom/android/camera/widget/SlidingPanel$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/SlidingPanel$1;-><init>(Lcom/android/camera/widget/SlidingPanel;)V

    iput-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SlidingPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingPanel;->doAnimate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SlidingPanel;)Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SlidingPanel;)Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

    return-object v0
.end method

.method private closeInternal(Z)V
    .locals 3
    .parameter "notifyListener"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, finalPosition:I
    iget v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    packed-switch v1, :pswitch_data_0

    .line 236
    :goto_0
    iput v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    .line 237
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    .line 238
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->setVisibility(I)V

    .line 239
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingPanel;->invalidateParent()V

    .line 242
    if-eqz p1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    :cond_0
    return-void

    .line 220
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getWidth()I

    move-result v1

    neg-int v0, v1

    .line 221
    iget v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getHeight()I

    move-result v1

    neg-int v0, v1

    .line 225
    iget v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getWidth()I

    move-result v0

    .line 229
    iget v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 232
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getHeight()I

    move-result v0

    .line 233
    iget v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doAnimate()V
    .locals 9

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x2

    const/4 v8, 0x1

    .line 100
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-ne v2, v3, :cond_6

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, newPosition:I
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    packed-switch v2, :pswitch_data_0

    .line 135
    :goto_0
    iput v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    .line 138
    iget-object v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelMovingListener:Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelMovingListener:Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;

    invoke-interface {v2, p0, v1}, Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;->onMoving(Lcom/android/camera/widget/SlidingPanel;I)V

    .line 142
    :cond_0
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    if-nez v2, :cond_c

    .line 144
    invoke-direct {p0, v8}, Lcom/android/camera/widget/SlidingPanel;->openInternal(Z)V

    .line 208
    .end local v1           #newPosition:I
    :cond_1
    :goto_1
    return-void

    .line 107
    .restart local v1       #newPosition:I
    :pswitch_0
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    if-ge v2, v4, :cond_2

    .line 108
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 111
    :goto_2
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 110
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 114
    :pswitch_1
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    if-ge v2, v4, :cond_3

    .line 115
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 118
    :goto_3
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 117
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 121
    :pswitch_2
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    if-le v2, v3, :cond_4

    .line 122
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 125
    :goto_4
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 124
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 128
    :pswitch_3
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    if-le v2, v3, :cond_5

    .line 129
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 132
    :goto_5
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 131
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 148
    .end local v1           #newPosition:I
    :cond_6
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-ne v2, v8, :cond_1

    .line 151
    const/4 v0, 0x0

    .local v0, finalPosition:I
    const/4 v1, 0x0

    .line 152
    .restart local v1       #newPosition:I
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    packed-switch v2, :pswitch_data_1

    .line 187
    :goto_6
    iput v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    .line 190
    iget-object v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelMovingListener:Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;

    if-eqz v2, :cond_7

    .line 191
    iget-object v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelMovingListener:Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;

    invoke-interface {v2, p0, v1}, Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;->onMoving(Lcom/android/camera/widget/SlidingPanel;I)V

    .line 194
    :cond_7
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    if-ne v2, v0, :cond_c

    .line 196
    invoke-direct {p0, v8}, Lcom/android/camera/widget/SlidingPanel;->closeInternal(Z)V

    goto :goto_1

    .line 155
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getWidth()I

    move-result v2

    neg-int v0, v2

    .line 156
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    add-int/lit8 v3, v0, 0x2

    if-le v2, v3, :cond_8

    .line 157
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v4, v0, v4

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 160
    :goto_7
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->offsetLeftAndRight(I)V

    goto :goto_6

    .line 159
    :cond_8
    move v1, v0

    goto :goto_7

    .line 163
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getHeight()I

    move-result v2

    neg-int v0, v2

    .line 164
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    add-int/lit8 v3, v0, 0x2

    if-le v2, v3, :cond_9

    .line 165
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v4, v0, v4

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 168
    :goto_8
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->offsetTopAndBottom(I)V

    goto :goto_6

    .line 167
    :cond_9
    move v1, v0

    goto :goto_8

    .line 171
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getWidth()I

    move-result v0

    .line 172
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_a

    .line 173
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v4, v0, v4

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 176
    :goto_9
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->offsetLeftAndRight(I)V

    goto :goto_6

    .line 175
    :cond_a
    move v1, v0

    goto :goto_9

    .line 179
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getHeight()I

    move-result v0

    .line 180
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_b

    .line 181
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v4, v0, v4

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 184
    :goto_a
    iget v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->offsetTopAndBottom(I)V

    goto/16 :goto_6

    .line 183
    :cond_b
    move v1, v0

    goto :goto_a

    .line 204
    .end local v0           #finalPosition:I
    :cond_c
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingPanel;->invalidateParent()V

    .line 207
    iget-object v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private invalidateParent()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 302
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 303
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 304
    :cond_0
    return-void
.end method

.method private openInternal(Z)V
    .locals 4
    .parameter "notifyListener"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, finalPosition:I
    iget v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    packed-switch v1, :pswitch_data_0

    .line 367
    :goto_0
    iput v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    .line 368
    iput v3, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    .line 369
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SlidingPanel;->setVisibility(I)V

    .line 370
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingPanel;->invalidateParent()V

    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 377
    :cond_0
    return-void

    .line 360
    :pswitch_0
    iget v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 364
    :pswitch_1
    iget v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePanelToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 471
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 474
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/SlidingPanel;->closeInternal(Z)V

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->closeInternal(Z)V

    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->openInternal(Z)V

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    .line 249
    if-eqz p1, :cond_2

    .line 251
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-eq v0, v1, :cond_1

    .line 253
    iput v1, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    .line 254
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;->onClosing(Lcom/android/camera/widget/SlidingPanel;)V

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingPanel;->doAnimate()V

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;->onClosing(Lcom/android/camera/widget/SlidingPanel;)V

    .line 267
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->closeInternal(Z)V

    goto :goto_0
.end method

.method public final getAnimationSpeed()D
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    return-wide v0
.end method

.method public final getDock()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 313
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 316
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    if-nez v0, :cond_0

    .line 318
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    packed-switch v0, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    if-eqz v0, :cond_1

    .line 336
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    packed-switch v0, :pswitch_data_1

    .line 343
    :pswitch_0
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingPanel;->offsetTopAndBottom(I)V

    .line 347
    :cond_1
    :goto_1
    return-void

    .line 321
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    goto :goto_0

    .line 324
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    goto :goto_0

    .line 327
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    goto :goto_0

    .line 330
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/widget/SlidingPanel;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    goto :goto_0

    .line 340
    :pswitch_5
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_CurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingPanel;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public open(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 380
    if-eqz p1, :cond_2

    .line 382
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-eq v0, v2, :cond_1

    .line 384
    iput v2, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    .line 385
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;->onOpening(Lcom/android/camera/widget/SlidingPanel;)V

    .line 388
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SlidingPanel;->setVisibility(I)V

    .line 389
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingPanel;->doAnimate()V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    if-eq v0, v3, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;->onOpening(Lcom/android/camera/widget/SlidingPanel;)V

    .line 399
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/widget/SlidingPanel;->openInternal(Z)V

    goto :goto_0
.end method

.method public final setAnimationSpeed(I)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 409
    if-gtz p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 411
    :cond_0
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_AnimationSpeed:D

    .line 412
    return-void
.end method

.method public final setDock(I)V
    .locals 1
    .parameter "dock"

    .prologue
    .line 419
    packed-switch p1, :pswitch_data_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 425
    :pswitch_0
    iput p1, p0, Lcom/android/camera/widget/SlidingPanel;->m_Dock:I

    .line 426
    invoke-direct {p0}, Lcom/android/camera/widget/SlidingPanel;->updatePanelToCurrentState()V

    .line 431
    return-void

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setOnPanelCloseListener(Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

    .line 439
    return-void
.end method

.method public final setOnPanelMovingListener(Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelMovingListener:Lcom/android/camera/widget/SlidingPanel$OnPanelMovingListener;

    .line 443
    return-void
.end method

.method public final setOnPanelOpenListener(Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/camera/widget/SlidingPanel;->m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

    .line 447
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 454
    iget v0, p0, Lcom/android/camera/widget/SlidingPanel;->m_State:I

    packed-switch v0, :pswitch_data_0

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/SlidingPanel;->close(Z)V

    .line 464
    :goto_0
    return-void

    .line 458
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/SlidingPanel;->open(Z)V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
