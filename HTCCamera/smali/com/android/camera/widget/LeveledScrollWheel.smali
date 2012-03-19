.class public Lcom/android/camera/widget/LeveledScrollWheel;
.super Lcom/android/camera/widget/ScrollWheel;
.source "LeveledScrollWheel.java"

# interfaces
.implements Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LeveledScrollWheel"


# instance fields
.field private mCurLevel:I

.field private mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

.field private mLevelNum:I

.field private mLevelsInLength:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ScrollWheel;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    .line 28
    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->initHtcScrollView()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/ScrollWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    .line 33
    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->initHtcScrollView()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/widget/ScrollWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    .line 38
    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->initHtcScrollView()V

    .line 39
    return-void
.end method

.method private findNearestSlot()I
    .locals 7

    .prologue
    .line 180
    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    .line 181
    :cond_0
    const/4 v3, 0x0

    .line 194
    :cond_1
    return v3

    .line 183
    :cond_2
    const/4 v3, 0x0

    .line 184
    .local v3, result:I
    const v2, 0x7fffffff

    .line 185
    .local v2, minDist:I
    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    .line 186
    .local v4, scrollX:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 187
    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v5, v5, v1

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 188
    .local v0, dist:I
    if-ge v0, v2, :cond_3

    .line 189
    move v3, v1

    .line 190
    move v2, v0

    .line 186
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initHtcScrollView()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    .line 201
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setDefaultPixScrollSpeed(I)V

    .line 202
    invoke-virtual {p0, p0}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnScrollListener(Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;)V

    .line 204
    return-void
.end method

.method private updateLevelsInLength()V
    .locals 7

    .prologue
    .line 149
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 165
    :cond_0
    return-void

    .line 150
    :cond_1
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    .line 151
    iget v5, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    iget v6, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    sub-int/2addr v5, v6

    int-to-long v3, v5

    .line 152
    .local v3, range:J
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    div-long v1, v3, v5

    .line 160
    .local v1, level:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    if-ge v0, v5, :cond_0

    .line 161
    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    invoke-super {p0, v0}, Lcom/android/camera/widget/ScrollWheel;->convertFromRangeToWheelLength(I)I

    move-result v6

    aput v6, v5, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateSlots()V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->updateLevelsInLength()V

    .line 144
    iget v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZ)Z

    .line 145
    return-void
.end method


# virtual methods
.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0xf

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->canScroll()Z

    move-result v6

    if-nez v6, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 240
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {v6, p0, v0, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 242
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v4

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v4, v5

    .line 242
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v4, v5

    .line 246
    goto :goto_0

    .line 249
    :cond_3
    const/4 v3, -0x1

    .line 250
    .local v3, sign:I
    invoke-super {p0}, Lcom/android/camera/widget/ScrollWheel;->getInverse()Z

    move-result v5

    if-nez v5, :cond_4

    .line 251
    const/4 v3, 0x1

    .line 253
    :cond_4
    const/4 v1, 0x0

    .line 254
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 255
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_5
    :goto_1
    move v4, v1

    .line 275
    goto :goto_0

    .line 260
    :pswitch_0
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    mul-int/lit8 v6, v3, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5, v4, v7}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZI)Z

    move-result v1

    .line 264
    goto :goto_1

    .line 267
    :pswitch_1
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    mul-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v6

    invoke-virtual {p0, v5, v4, v7}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZI)Z

    move-result v1

    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScrollStateChanged(I)V
    .locals 2
    .parameter "scrollState"

    .prologue
    .line 225
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->findNearestSlot()I

    move-result v0

    .line 228
    .local v0, slotNum:I
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZ)Z

    .line 231
    .end local v0           #slotNum:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/camera/widget/ScrollWheel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 44
    .local v0, result:Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->findNearestSlot()I

    move-result v1

    .line 49
    .local v1, slotNum:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/LeveledScrollWheel;->setCurrentLevel(I)Z

    .line 53
    .end local v1           #slotNum:I
    :cond_0
    return v0
.end method

.method public scrollToLevel(IZ)Z
    .locals 1
    .parameter "levelNum"
    .parameter "smoothscroll"

    .prologue
    .line 90
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZI)Z

    move-result v0

    return v0
.end method

.method public scrollToLevel(IZI)Z
    .locals 3
    .parameter "levelNum"
    .parameter "smoothscroll"
    .parameter "pixScrollSpeed"

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    if-nez v1, :cond_1

    .line 102
    const-string v1, "LeveledScrollWheel"

    const-string v2, "levels not set, return ;"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    if-lt p1, v1, :cond_3

    .line 105
    :cond_2
    const-string v1, "LeveledScrollWheel"

    const-string v2, "levelNum out of bound, return "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setCurrentLevel(I)Z

    move-result v0

    .line 110
    .local v0, setResult:Z
    if-eqz v0, :cond_0

    .line 111
    if-eqz p2, :cond_5

    .line 112
    if-lez p3, :cond_4

    .line 113
    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/camera/widget/LeveledScrollWheel;->smoothScrollTo(III)V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->smoothScrollTo(II)V

    goto :goto_0

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCurrentLevel(I)Z
    .locals 3
    .parameter "levelNum"

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    if-nez v1, :cond_0

    .line 65
    const-string v1, "LeveledScrollWheel"

    const-string v2, "mLevelsInLength not set, return ;"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return v0

    .line 67
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    if-lt p1, v1, :cond_2

    .line 68
    :cond_1
    const-string v1, "LeveledScrollWheel"

    const-string v2, "levelNum out of bound, return "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    iget v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    if-eq v0, p1, :cond_3

    .line 74
    iput p1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    .line 75
    iget-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v1, v1, p1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;->onLevelChanged(II)V

    .line 80
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMinMax(II)Z
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 129
    if-lt p1, p2, :cond_0

    .line 130
    const-string v0, "LeveledScrollWheel"

    const-string v1, "min >= max!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    iput p1, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    .line 135
    iput p2, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    .line 136
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    .line 137
    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    iput v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    .line 138
    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->updateLevelsInLength()V

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    .line 209
    return-void
.end method

.method public updateProgToLengthRatio()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/camera/widget/ScrollWheel;->updateProgToLengthRatio()V

    .line 171
    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->updateSlots()V

    .line 172
    return-void
.end method
