.class public Lcom/android/camera/rotate/RotateToast;
.super Ljava/lang/Object;
.source "RotateToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/rotate/RotateToast$TN;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "RotateToast"

.field static final localLOGV:Z

.field static mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field private bShowing:Z

.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field final mTN:Lcom/android/camera/rotate/RotateToast$TN;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mX:I

.field mY:I

.field private toast_orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/android/camera/rotate/RotateToast;->toast_orientation:I

    .line 43
    iput-boolean v0, p0, Lcom/android/camera/rotate/RotateToast;->bShowing:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateToast;->mHandler:Landroid/os/Handler;

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    .line 49
    const/16 v0, 0x51

    iput v0, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    .line 65
    iput-object p1, p0, Lcom/android/camera/rotate/RotateToast;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/camera/rotate/RotateToast$TN;

    invoke-direct {v0, p0}, Lcom/android/camera/rotate/RotateToast$TN;-><init>(Lcom/android/camera/rotate/RotateToast;)V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateToast;->mTN:Lcom/android/camera/rotate/RotateToast$TN;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/rotate/RotateToast;->mY:I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/rotate/RotateToast;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->toast_orientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/rotate/RotateToast;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/camera/rotate/RotateToast;->bShowing:Z

    return p1
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/android/camera/rotate/RotateToast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/android/camera/rotate/RotateToast;->sService:Landroid/app/INotificationManager;

    .line 317
    :goto_0
    return-object v0

    .line 316
    :cond_0
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/camera/rotate/RotateToast;->sService:Landroid/app/INotificationManager;

    .line 317
    sget-object v0, Lcom/android/camera/rotate/RotateToast;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/android/camera/rotate/RotateToast;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 219
    new-instance v1, Lcom/android/camera/rotate/RotateToast;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateToast;-><init>(Landroid/content/Context;)V

    .line 221
    .local v1, result:Lcom/android/camera/rotate/RotateToast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 223
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f03004e

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 224
    .local v3, v:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    new-instance v4, Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-direct {v4, p0}, Lcom/android/camera/rotate/RotateLinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/camera/rotate/RotateToast;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 228
    sget-object v4, Lcom/android/camera/rotate/RotateToast;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v4, v3}, Lcom/android/camera/rotate/RotateLinearLayout;->addView(Landroid/view/View;)V

    .line 230
    sget-object v4, Lcom/android/camera/rotate/RotateToast;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v4, v1, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    .line 231
    iput p2, v1, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    .line 233
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast;->mTN:Lcom/android/camera/rotate/RotateToast$TN;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast$TN;->hide()V

    .line 110
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mY:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateToast;->bShowing:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 134
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    .line 135
    return-void
.end method

.method public setGravity(III)V
    .locals 0
    .parameter "gravity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 180
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    .line 181
    iput p2, p0, Lcom/android/camera/rotate/RotateToast;->mX:I

    .line 182
    iput p3, p0, Lcom/android/camera/rotate/RotateToast;->mY:I

    .line 183
    return-void
.end method

.method public setMargin(FF)V
    .locals 0
    .parameter "horizontalMargin"
    .parameter "verticalMargin"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->mHorizontalMargin:F

    .line 157
    iput p2, p0, Lcom/android/camera/rotate/RotateToast;->mVerticalMargin:F

    .line 158
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 269
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    .line 118
    return-void
.end method

.method public setcurrentOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 321
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->toast_orientation:I

    .line 322
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 76
    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 77
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setView must have been called"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/rotate/RotateToast;->bShowing:Z

    .line 83
    invoke-static {}, Lcom/android/camera/rotate/RotateToast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 85
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast;->mTN:Lcom/android/camera/rotate/RotateToast$TN;

    .line 91
    .local v2, tn:Lcom/android/camera/rotate/RotateToast$TN;
    :try_start_0
    iget v3, p0, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    invoke-interface {v1, v0, v2, v3}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public updateOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 279
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->toast_orientation:I

    .line 281
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 285
    :cond_0
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen(I)I

    move-result v0

    .line 286
    .local v0, diff:I
    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 288
    :pswitch_0
    const/16 v1, 0x51

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    goto :goto_0

    .line 291
    :pswitch_1
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    goto :goto_0

    .line 294
    :pswitch_2
    const/16 v1, 0x31

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    goto :goto_0

    .line 297
    :pswitch_3
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
