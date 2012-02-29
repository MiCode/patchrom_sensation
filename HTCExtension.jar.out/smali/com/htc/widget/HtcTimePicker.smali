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
    .line 346
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    .line 347
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 348
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentSecond(I)V

    .line 349
    return-void
.end method


# virtual methods
.method public disableTitle()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 540
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 544
    .local v0, tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 545
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 546
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 547
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 548
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 549
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 550
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 551
    return-void
.end method

.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 357
    if-eqz p1, :cond_3

    .line 358
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 363
    :cond_3
    return-void
.end method

.method public getCurrentAmPm()I
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    .prologue
    .line 415
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v1

    .line 416
    .local v1, h:I
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 418
    const/4 v1, 0x0

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentAmPm()I

    move-result v0

    .line 420
    .local v0, am:I
    if-nez v0, :cond_1

    .line 421
    add-int/lit8 v1, v1, 0xc

    .line 423
    .end local v0           #am:I
    :cond_1
    return v1
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 427
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

    .line 253
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 254
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 255
    iput p3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 256
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 257
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 258
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 259
    iput-object p4, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    .line 260
    invoke-direct {p0}, Lcom/htc/widget/HtcTimePicker;->updateTables()V

    .line 261
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

    .line 166
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 170
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 171
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    .line 175
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 176
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 177
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 179
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 180
    new-array v0, v5, [Ljava/lang/String;

    .line 181
    .local v0, ampm:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 182
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 183
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_0

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 184
    :cond_0
    const-string v1, "AM"

    aput-object v1, v0, v3

    .line 185
    const-string v1, "PM"

    aput-object v1, v0, v4

    .line 187
    :cond_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/htc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    .line 195
    .end local v0           #ampm:[Ljava/lang/String;
    :cond_2
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iget-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(IIZ)V

    .line 196
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcTimePicker;->setRepeatEnable(Z)V

    .line 197
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

    .line 203
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p3, 0x0

    .line 204
    :cond_3
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 205
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 206
    iput p3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 207
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 208
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 209
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 211
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 212
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 213
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 214
    invoke-direct {p0}, Lcom/htc/widget/HtcTimePicker;->updateTables()V

    .line 215
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    .line 217
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->requestFocus()Z

    .line 218
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTimePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 221
    return-void

    .line 190
    :cond_4
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 191
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 192
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_0
.end method

.method public isSecondPickerEndabled()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    .line 573
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
    .line 160
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->initPicker(III)V

    .line 162
    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 4
    .parameter "target"
    .parameter "data"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_2

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 496
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 499
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    .line 509
    :cond_1
    :goto_0
    return-void

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_3

    .line 501
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 503
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    goto :goto_0

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 507
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
    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    .line 482
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 483
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 484
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 485
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 486
    return-void
.end method

.method public setAmPmRange(II[Ljava/lang/String;)V
    .locals 1
    .parameter "min"
    .parameter "max"
    .parameter "candidates"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcNumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public setCurrentAmPm(I)V
    .locals 1
    .parameter "ampm"

    .prologue
    .line 405
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    .line 406
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 407
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 4
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xc

    .line 386
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    .line 387
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    if-nez v2, :cond_0

    .line 401
    :goto_0
    return-void

    .line 389
    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 390
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 391
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    if-lt p1, v1, :cond_3

    .line 393
    if-ne p1, v1, :cond_2

    move p1, v1

    .line 394
    :goto_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    .line 400
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0

    .line 393
    :cond_2
    add-int/lit8 p1, p1, -0xc

    goto :goto_1

    .line 396
    :cond_3
    if-nez p1, :cond_4

    move p1, v1

    .line 397
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    goto :goto_2
.end method

.method public setCurrentMinute(I)V
    .locals 2
    .parameter "m"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    .line 368
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    if-nez v1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 371
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 372
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method public setCurrentSecond(I)V
    .locals 2
    .parameter "s"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    .line 378
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    if-nez v1, :cond_0

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 381
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 382
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 567
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 568
    return-void
.end method

.method public setHourPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    return-void
.end method

.method public setHourRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 459
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    .line 460
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    .line 461
    return-void
.end method

.method public setMinutePickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    return-void
.end method

.method public setMinuteRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 450
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    .line 451
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    .line 454
    return-void
.end method

.method public setMinuteRange(IIZ)V
    .locals 2
    .parameter "min"
    .parameter "max"
    .parameter "multiStop"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 438
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    .line 439
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    .line 440
    iput-boolean p3, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    .line 441
    if-eqz p3, :cond_0

    .line 442
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    .line 445
    :goto_0
    return-void

    .line 444
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
    .line 352
    if-eqz p1, :cond_0

    .line 353
    iput-object p1, p0, Lcom/htc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 354
    :cond_0
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 513
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 514
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 515
    return-void
.end method

.method public setSecondPickerEnable(Z)V
    .locals 4
    .parameter "b"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 224
    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondPickerEnable(ZZ)V
    .locals 1
    .parameter "b"
    .parameter "white"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTimePicker;->setSecondPickerEnable(Z)V

    .line 239
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->changeBkg()V

    .line 241
    :cond_0
    return-void
.end method

.method public setSecondPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    return-void
.end method

.method public setSecondRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 466
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    .line 467
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    .line 468
    return-void
.end method

.method public slideHourWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 535
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    goto :goto_0
.end method

.method public slideMinuteWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 528
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    goto :goto_0
.end method

.method public slideSecondWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 520
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "an"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 476
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    return-void
.end method
