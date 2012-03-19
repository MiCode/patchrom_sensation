.class public Lcom/android/camera/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method public static changeBarAnimation(Landroid/view/View;Landroid/view/View;JJJJ)V
    .locals 5
    .parameter "hide"
    .parameter "show"
    .parameter "offset"
    .parameter "offset2"
    .parameter "duration"
    .parameter "duration2"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, hideBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #hideBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 72
    .restart local v0       #hideBarAni:Landroid/view/animation/TranslateAnimation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 73
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    invoke-virtual {v0, p6, p7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 75
    new-instance v2, Lcom/android/camera/AnimationManager$2;

    invoke-direct {v2, p0}, Lcom/android/camera/AnimationManager$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, showBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1           #showBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 101
    .restart local v1       #showBarAni:Landroid/view/animation/TranslateAnimation;
    :goto_1
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    invoke-virtual {v1, p4, p5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 103
    invoke-virtual {v1, p8, p9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 104
    new-instance v2, Lcom/android/camera/AnimationManager$3;

    invoke-direct {v2, p1}, Lcom/android/camera/AnimationManager$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 114
    return-void

    .line 68
    .end local v1           #showBarAni:Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #hideBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0       #hideBarAni:Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 96
    .restart local v1       #showBarAni:Landroid/view/animation/TranslateAnimation;
    :cond_1
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1           #showBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1       #showBarAni:Landroid/view/animation/TranslateAnimation;
    goto :goto_1
.end method

.method public static hideBarAnimation(Landroid/view/View;JJ)V
    .locals 4
    .parameter "view"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 41
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 43
    .local v0, showBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 44
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 45
    new-instance v1, Lcom/android/camera/AnimationManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/AnimationManager$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 53
    return-void
.end method

.method public static showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;
    .locals 3
    .parameter "view"
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 118
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 119
    .local v0, showBarAni:Landroid/view/animation/AlphaAnimation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 120
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    return-object v0
.end method

.method public static showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V
    .locals 3
    .parameter "view"
    .parameter "orientation"
    .parameter "duration"
    .parameter "callback"

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 220
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 221
    .local v0, startAni:Landroid/view/animation/AlphaAnimation;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 223
    new-instance v1, Lcom/android/camera/AnimationManager$6;

    invoke-direct {v1, p3, p0, p1}, Lcom/android/camera/AnimationManager$6;-><init>(Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 244
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    return-void
.end method

.method public static showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateImageView;II)V
    .locals 1
    .parameter "view"
    .parameter "orientation"
    .parameter "duration"

    .prologue
    .line 192
    new-instance v0, Lcom/android/camera/AnimationManager$4;

    invoke-direct {v0}, Lcom/android/camera/AnimationManager$4;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V

    .line 199
    return-void
.end method

.method public static showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateRelativeLayout;II)V
    .locals 1
    .parameter "view"
    .parameter "orientation"
    .parameter "duration"

    .prologue
    .line 202
    new-instance v0, Lcom/android/camera/AnimationManager$5;

    invoke-direct {v0}, Lcom/android/camera/AnimationManager$5;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V

    .line 209
    return-void
.end method

.method public static showBarAnimation(Landroid/view/View;JJ)V
    .locals 4
    .parameter "view"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 32
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 34
    .local v0, showBarAni:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 35
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 37
    return-void
.end method

.method public static showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;
    .locals 3
    .parameter "view"
    .parameter "fromDegree"
    .parameter "toDegree"
    .parameter "offset"
    .parameter "duration"
    .parameter "fillAfter"

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 127
    new-instance v0, Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 128
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 129
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 130
    invoke-virtual {v0, p5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 132
    return-object v0
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

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 23
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p5

    move v2, p6

    move v3, p5

    move v4, p6

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 25
    .local v0, anim:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 26
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 28
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

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 163
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 181
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 182
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    return-object v0

    .line 170
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 171
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 173
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 174
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 176
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 177
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 165
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

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 137
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 155
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 156
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 158
    return-object v0

    .line 144
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 145
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 147
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 148
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 150
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 151
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
