.class public Lcom/htc/widget/HtcTimePicker;
.super Landroid/widget/RelativeLayout;
.source "HtcTimePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcTimePicker"


# instance fields
.field private final mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mContext:Landroid/content/Context;

.field private mCurrentAMPM:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mCurrentSecond:I

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndSecond:I

.field private final mHourCoat:Landroid/view/View;

.field private final mHourPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

.field private mIsFirstCreate:Z

.field private mIsHourInit:Z

.field private mIsMinuteInit:Z

.field private mIsMultiStop:Z

.field private mIsSecondInit:Z

.field private final mLabelHour:Landroid/widget/TextView;

.field private final mLabelMinute:Landroid/widget/TextView;

.field private final mLabelSecond:Landroid/widget/TextView;

.field private mLparams:[Landroid/view/ViewGroup$LayoutParams;

.field private final mMinuteCoat:Landroid/view/View;

.field private final mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

.field private mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

.field private mOrder:Ljava/lang/String;

.field private final mSecondCoat:Landroid/view/View;

.field private final mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartSecond:I

.field private mTableInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v8, 0x3b

    const/16 v4, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 50
    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 51
    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 52
    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 53
    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    .line 54
    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 55
    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 56
    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 57
    iput-boolean v5, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    .line 58
    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsFirstCreate:Z

    .line 67
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    .line 95
    iput-object p1, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    .line 96
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 97
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x20900bb

    invoke-virtual {v2, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    const v3, 0x20201a4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcNumberPicker;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 100
    const v3, 0x20201a5

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcNumberPicker;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    .line 101
    const v3, 0x20201a6

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcNumberPicker;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 102
    const v3, 0x20201a7

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcNumberPicker;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 104
    const v3, 0x20201b4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mHourCoat:Landroid/view/View;

    .line 105
    const v3, 0x20201b6

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mMinuteCoat:Landroid/view/View;

    .line 106
    const v3, 0x20201b8

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    .line 108
    const v3, 0x20201b5

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    .line 109
    const v3, 0x20201b7

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    .line 110
    const v3, 0x20201b9

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    .line 112
    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 113
    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p0, v5, v8}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 117
    invoke-virtual {p0, v5, v8}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    .line 120
    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    const/16 v3, 0xc

    invoke-virtual {p0, v6, v3}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 122
    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 123
    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 124
    new-array v0, v7, [Ljava/lang/String;

    .line 125
    .local v0, ampm:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0175

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 126
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0176

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 127
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_0

    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_1

    .line 128
    :cond_0
    const-string v3, "AM"

    aput-object v3, v0, v5

    .line 129
    const-string v3, "PM"

    aput-object v3, v0, v6

    .line 131
    :cond_1
    invoke-virtual {p0, v5, v6, v0}, Lcom/htc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    .line 138
    .end local v0           #ampm:[Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 150
    .local v1, cal:Ljava/util/Calendar;
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTimePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 151
    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePicker;->mIsFirstCreate:Z

    .line 152
    return-void

    .line 133
    .end local v1           #cal:Ljava/util/Calendar;
    :cond_2
    const/16 v3, 0x17

    invoke-virtual {p0, v5, v3}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 134
    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 135
    iget-object v3, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTables()V
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    .line 345
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 346
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentSecond(I)V

    .line 347
    return-void
.end method


# virtual methods
.method public disableTitle()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 538
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 542
    .local v0, tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 543
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 544
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 545
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 546
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 547
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 548
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 549
    return-void
.end method

.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 355
    if-eqz p1, :cond_3

    .line 356
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 361
    :cond_3
    return-void
.end method

.method public getCurrentAmPm()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    .prologue
    .line 413
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v1

    .line 414
    .local v1, h:I
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 416
    const/4 v1, 0x0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentAmPm()I

    move-result v0

    .line 418
    .local v0, am:I
    if-nez v0, :cond_1

    .line 419
    add-int/lit8 v1, v1, 0xc

    .line 421
    .end local v0           #am:I
    :cond_1
    return v1
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public init(IIILcom/htc/widget/HtcTimePicker$OnTimeSetListener;)V
    .locals 1
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .parameter "onTimeSetListener"

    .prologue
    const/4 v0, 0x1

    .line 251
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 252
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 253
    iput p3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 254
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 255
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 256
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 257
    iput-object p4, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    .line 258
    invoke-direct {p0}, Lcom/htc/widget/HtcTimePicker;->updateTables()V

    .line 259
    return-void
.end method

.method public initPicker(III)V
    .locals 6
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 164
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 168
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 169
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    .line 173
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 174
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 175
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 178
    new-array v0, v5, [Ljava/lang/String;

    .line 179
    .local v0, ampm:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 180
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 181
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_0

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 182
    :cond_0
    const-string v1, "AM"

    aput-object v1, v0, v3

    .line 183
    const-string v1, "PM"

    aput-object v1, v0, v4

    .line 185
    :cond_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/htc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    .line 193
    .end local v0           #ampm:[Ljava/lang/String;
    :cond_2
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iget-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(IIZ)V

    .line 194
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcTimePicker;->setRepeatEnable(Z)V

    .line 195
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPicker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p3, 0x0

    .line 202
    :cond_3
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 203
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 204
    iput p3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 205
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 206
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 207
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 209
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 210
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 211
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 212
    invoke-direct {p0}, Lcom/htc/widget/HtcTimePicker;->updateTables()V

    .line 213
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    .line 215
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->requestFocus()Z

    .line 216
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTimePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 219
    return-void

    .line 188
    :cond_4
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 189
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 190
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_0
.end method

.method public isSecondPickerEndabled()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    .line 571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 157
    const/16 v0, 0x62

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x42

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 159
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->initPicker(III)V

    .line 160
    :cond_1
    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 4
    .parameter "target"
    .parameter "data"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_2

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 494
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 497
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_3

    .line 499
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 501
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    goto :goto_0

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 505
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    .line 480
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 481
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 482
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 483
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 484
    return-void
.end method

.method public setAmPmRange(II[Ljava/lang/String;)V
    .locals 1
    .parameter "min"
    .parameter "max"
    .parameter "candidates"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcNumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public setCurrentAmPm(I)V
    .locals 1
    .parameter "ampm"

    .prologue
    .line 403
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    .line 404
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 405
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 4
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xc

    .line 384
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    .line 385
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    if-nez v2, :cond_0

    .line 399
    :goto_0
    return-void

    .line 387
    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 388
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 389
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    if-lt p1, v1, :cond_3

    .line 391
    if-ne p1, v1, :cond_2

    move p1, v1

    .line 392
    :goto_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    .line 398
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0

    .line 391
    :cond_2
    add-int/lit8 p1, p1, -0xc

    goto :goto_1

    .line 394
    :cond_3
    if-nez p1, :cond_4

    move p1, v1

    .line 395
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    goto :goto_2
.end method

.method public setCurrentMinute(I)V
    .locals 2
    .parameter "m"

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    .line 366
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    if-nez v1, :cond_0

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 369
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 370
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method public setCurrentSecond(I)V
    .locals 2
    .parameter "s"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    .line 376
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    if-nez v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 379
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 380
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 566
    return-void
.end method

.method public setHourPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void
.end method

.method public setHourRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 457
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    .line 458
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    .line 459
    return-void
.end method

.method public setMinutePickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    return-void
.end method

.method public setMinuteRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 448
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    .line 449
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    .line 452
    return-void
.end method

.method public setMinuteRange(IIZ)V
    .locals 2
    .parameter "min"
    .parameter "max"
    .parameter "multiStop"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 436
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    .line 437
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    .line 438
    iput-boolean p3, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    .line 439
    if-eqz p3, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    .line 443
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    goto :goto_0
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 350
    if-eqz p1, :cond_0

    .line 351
    iput-object p1, p0, Lcom/htc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 352
    :cond_0
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 511
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 512
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 513
    return-void
.end method

.method public setSecondPickerEnable(Z)V
    .locals 4
    .parameter "b"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondPickerEnable(ZZ)V
    .locals 1
    .parameter "b"
    .parameter "white"

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTimePicker;->setSecondPickerEnable(Z)V

    .line 237
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->changeBkg()V

    .line 239
    :cond_0
    return-void
.end method

.method public setSecondPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    return-void
.end method

.method public setSecondRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 464
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    .line 465
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    .line 466
    return-void
.end method

.method public slideHourWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 533
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    goto :goto_0
.end method

.method public slideMinuteWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 526
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    goto :goto_0
.end method

.method public slideSecondWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 518
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "an"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 475
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 476
    return-void
.end method
