.class public Lcom/htc/music/util/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideBarAnimation(Landroid/view/View;JJ)V
    .locals 4
    .parameter "view"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 36
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 38
    .local v0, showBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 39
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 41
    return-void
.end method

.method public static showAlphaAnimation(Landroid/view/View;FFII)V
    .locals 3
    .parameter "view"
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 45
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 46
    .local v0, showBarAni:Landroid/view/animation/AlphaAnimation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 47
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 49
    return-void
.end method

.method public static showBarAnimation(Landroid/view/View;JJ)V
    .locals 4
    .parameter "view"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 27
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 29
    .local v0, showBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 30
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 32
    return-void
.end method

.method public static showScaleAnimation(Landroid/view/View;JJFF)V
    .locals 9
    .parameter "view"
    .parameter "offset"
    .parameter "duration"
    .parameter "startAlpha"
    .parameter "endAlpha"

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 18
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p5

    move v2, p6

    move v3, p5

    move v4, p6

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 20
    .local v0, anim:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 21
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 23
    return-void
.end method

.method public static slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;
    .locals 3
    .parameter "view"
    .parameter "from"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 97
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    return-object v0

    .line 86
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 87
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 89
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 90
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 92
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 93
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;
    .locals 3
    .parameter "view"
    .parameter "to"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 53
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 71
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 72
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 74
    return-object v0

    .line 60
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 61
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 63
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 64
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 66
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 67
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
