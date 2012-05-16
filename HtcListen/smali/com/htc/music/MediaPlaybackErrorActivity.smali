.class public Lcom/htc/music/MediaPlaybackErrorActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/music/widget/IDismissBubbleInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x190

.field public static final FINISH_ERROR_ACTIVITY:Ljava/lang/String; = "com.htc.music.finisherroractivity"

.field private static final LOGTAG:Ljava/lang/String; = "[MediaPlaybackErrorActivity]"

.field public static final PRESENTATION_MODE:Ljava/lang/String; = "Presentation_Mode"

.field private static final SCANNER_FINISHED:I = 0x1

.field private static final SEARCHING:I = 0x0

.field private static final SET_DEFAULT_RESOURCE_TIMER:I = 0x1388


# instance fields
.field private final OPEN_FEATURED_AFTER_ROTATE:I

.field private mCursorCols:[Ljava/lang/String;

.field private mDisableLib:Z

.field private mErrorContent:Landroid/view/View;

.field private mErrorMessage:Ljava/lang/String;

.field private mFeaturedListExist:Z

.field public mGlanceDMPErrorIconTopMargin:I

.field public mGlanceErrorContentHeightOpen:I

.field public mGlanceErrorIconHeight:I

.field public mGlanceErrorIconHeightOpen:I

.field public mGlanceErrorIconLeftMarginOpen:I

.field public mGlanceErrorIconWidth:I

.field public mGlanceErrorIconWidthOpen:I

.field private mIndicateOrientation:I

.field private mIsMusicStoreEnable:Z

.field private mIsPluginMode:Z

.field private mIsPresentationMode:Z

.field private mIsSupportMMC:Z

.field private mLibraryButton:Landroid/view/View;

.field private mLossServerWarningStr:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNextButton:Landroid/view/View;

.field private mOrientation:I

.field private mPauseButton:Landroid/view/View;

.field private mPluginErrorListener:Landroid/content/BroadcastReceiver;

.field private mPluginReScanHandler:Landroid/os/Handler;

.field private mPrevButton:Landroid/view/View;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mQueueLen:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecommendButton:Landroid/view/View;

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSdIcon:Landroid/view/View;

.field private mSdMessage:Landroid/view/View;

.field private mSearchDialogVisible:Z

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSetDefaultResourceHandler:Landroid/os/Handler;

.field private mSetDefaultResourceRunnable:Ljava/lang/Runnable;

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mSortOrder:Ljava/lang/String;

.field private mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

.field private mTaskBarExist:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTwoPanelBtn:Landroid/widget/ImageButton;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    .line 106
    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 108
    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mOrientation:I

    .line 110
    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    .line 115
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTwoPanelBtn:Landroid/widget/ImageButton;

    .line 129
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsMusicStoreEnable:Z

    .line 131
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 133
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    .line 135
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTaskBarExist:Z

    .line 137
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mFeaturedListExist:Z

    .line 139
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsSupportMMC:Z

    .line 143
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPresentationMode:Z

    .line 145
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 147
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRepeatButton:Landroid/widget/ImageButton;

    .line 149
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 151
    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->OPEN_FEATURED_AFTER_ROTATE:I

    .line 153
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorContent:Landroid/view/View;

    .line 154
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdIcon:Landroid/view/View;

    .line 155
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdMessage:Landroid/view/View;

    .line 160
    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorContentHeightOpen:I

    .line 161
    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconWidth:I

    .line 162
    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconHeight:I

    .line 163
    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconLeftMarginOpen:I

    .line 164
    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconWidthOpen:I

    .line 165
    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconHeightOpen:I

    .line 167
    iput v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceDMPErrorIconTopMargin:I

    .line 172
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mLossServerWarningStr:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 175
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 546
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$3;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 573
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$4;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    .line 588
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceHandler:Landroid/os/Handler;

    .line 590
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$5;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceRunnable:Ljava/lang/Runnable;

    .line 612
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$6;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    .line 627
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$7;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    .line 1107
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$9;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    .line 1212
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$11;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->osc:Landroid/content/ServiceConnection;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/MediaPlaybackErrorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->setDefaultResource()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackErrorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/MediaPlaybackErrorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackErrorActivity;)Lcom/htc/music/widget/StoreSwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->setPluginListListener()V

    return-void
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    .locals 14
    .parameter "async"

    .prologue
    const/4 v0, 0x0

    .line 995
    const/4 v11, 0x0

    .line 996
    .local v11, queuelist:[I
    const/4 v12, 0x0

    .line 1000
    .local v12, ret:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1002
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    .line 1047
    :goto_0
    return-object v0

    .line 1006
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v8

    .line 1007
    .local v8, count:I
    if-gtz v8, :cond_2

    .line 1008
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1042
    .end local v8           #count:I
    :catch_0
    move-exception v9

    .line 1044
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v9           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    move-object v0, v12

    .line 1047
    goto :goto_0

    .line 1012
    .restart local v8       #count:I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v11

    .line 1015
    if-eqz v11, :cond_1

    .line 1017
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    .line 1018
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string v0, " AND _id IN ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    array-length v0, v11

    if-ge v10, v0, :cond_4

    .line 1023
    aget v0, v11, v10

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1024
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_3

    .line 1025
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1028
    :cond_4
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v0, " AND is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    if-eqz p1, :cond_5

    .line 1032
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1036
    :cond_5
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_1
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 181
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 182
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 184
    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorContentHeightOpen:I

    .line 185
    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconWidth:I

    .line 186
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconHeight:I

    .line 187
    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconWidthOpen:I

    .line 188
    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconHeightOpen:I

    .line 189
    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceErrorIconLeftMarginOpen:I

    .line 191
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceDMPErrorIconTopMargin:I

    .line 193
    return-void
.end method

.method private initTitleBar()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x1

    .line 317
    const v7, 0x7f0800ce

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar;

    .line 318
    .local v1, header:Lcom/htc/widget/HeaderBar;
    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v1, v10}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 322
    :cond_0
    const v7, 0x7f0800cf

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarText;

    .line 323
    .local v5, title:Lcom/htc/widget/HeaderBarText;
    const v7, 0x7f0800d0

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    .line 324
    .local v3, queueButton:Lcom/htc/widget/HeaderBarImage;
    const v7, 0x7f0800d1

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 325
    .local v2, libraryButton:Lcom/htc/widget/HeaderBarImage;
    const v7, 0x7f0800d3

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarImage;

    .line 326
    .local v4, storeButton:Lcom/htc/widget/HeaderBarImage;
    const v7, 0x7f0800d2

    invoke-virtual {p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarImage;

    .line 328
    .local v6, volumeButton:Lcom/htc/widget/HeaderBarImage;
    if-eqz v5, :cond_1

    .line 329
    const v7, 0x7f07001b

    invoke-virtual {v5, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 330
    invoke-virtual {v5, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 331
    invoke-virtual {v5, v11}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 334
    :cond_1
    if-eqz v3, :cond_2

    .line 335
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 336
    .local v0, dlnaMode:I
    if-nez v0, :cond_6

    .line 337
    invoke-virtual {v3, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 338
    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 339
    const v7, 0x7f0700df

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 340
    const v7, 0x208090e

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 346
    .end local v0           #dlnaMode:I
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 347
    invoke-virtual {v2, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 348
    const v7, 0x20808ea

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 349
    const v7, 0x7f0700e1

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 350
    new-instance v7, Lcom/htc/music/MediaPlaybackErrorActivity$1;

    invoke-direct {v7, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$1;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v2, v7}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    :cond_3
    if-eqz v4, :cond_4

    .line 367
    new-instance v7, Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v7, p0}, Lcom/htc/music/widget/StoreSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 368
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_7

    .line 369
    new-instance v7, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v8, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v8, p0, v9}, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;-><init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V

    invoke-direct {v7, p0, v8}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 377
    :goto_1
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v7, :cond_8

    .line 378
    invoke-virtual {v4, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 379
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchTagResId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 380
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchIconResId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 381
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 386
    if-eqz v6, :cond_4

    .line 387
    invoke-virtual {v6, v11}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 388
    const/4 v6, 0x0

    .line 396
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 397
    invoke-virtual {v6, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 398
    const v7, 0x2080971

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 399
    const v7, 0x7f0700e0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 400
    new-instance v7, Lcom/htc/music/MediaPlaybackErrorActivity$2;

    invoke-direct {v7, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$2;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :cond_5
    return-void

    .line 342
    .restart local v0       #dlnaMode:I
    :cond_6
    invoke-virtual {v3, v11}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto/16 :goto_0

    .line 373
    .end local v0           #dlnaMode:I
    :cond_7
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    .line 374
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    goto :goto_1

    .line 391
    :cond_8
    invoke-virtual {v4, v11}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_2
.end method

.method private setDefaultResource()V
    .locals 3

    .prologue
    .line 597
    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 599
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 600
    const v2, 0x2080867

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 604
    :cond_0
    const v2, 0x7f0800a3

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 605
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 606
    const v2, 0x20c00a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 609
    :cond_1
    return-void
.end method

.method private setPluginListListener()V
    .locals 10

    .prologue
    .line 1125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    .local v5, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1129
    .local v4, serviceCount:I
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->refreshPlugin()V

    .line 1133
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPluginCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1136
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 1137
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v2}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1139
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1143
    .end local v0           #description:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 1144
    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "there is no plugin services with description shown"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1205
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 1206
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1148
    .end local v1           #e1:Landroid/os/RemoteException;
    .restart local v2       #i:I
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 1149
    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "something error in setPluginListListener."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1155
    .local v3, items:[Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1159
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1160
    const/4 v5, 0x0

    .line 1162
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1163
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 1164
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_7

    .line 1165
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1172
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    new-instance v7, Lcom/htc/music/MediaPlaybackErrorActivity$10;

    invoke-direct {v7, p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity$10;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;[Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1166
    :cond_7
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/Button;

    if-eqz v6, :cond_6

    .line 1167
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mRecommendButton:Landroid/view/View;

    const-string v7, "common_icon_glance_left_list_view"

    const v8, 0x2080030

    invoke-static {p0, v7, v8}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0xff

    const v9, 0x7f0700e1

    invoke-static {v6, v7, v8, v9}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private startBrowserTabActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1088
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1089
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1090
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1091
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1092
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1094
    return-void
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 1272
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1276
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startPlayback()V
    .locals 4

    .prologue
    .line 918
    monitor-enter p0

    .line 919
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 920
    monitor-exit p0

    .line 964
    :goto_0
    return-void

    .line 922
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 924
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 926
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 928
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isSystemReady()Z

    move-result v1

    .line 929
    .local v1, ready:Z
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isMusicLoaded()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 930
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "isMusicLoaded and ready"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 932
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 933
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 936
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V

    .line 962
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->finish()V

    .line 963
    monitor-exit p0

    goto :goto_0

    .end local v1           #ready:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 944
    .restart local v1       #ready:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 947
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "startPlayback playAllNotRun"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 950
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 954
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public dismissPopupBubble()V
    .locals 2

    .prologue
    .line 1265
    const v1, 0x7f0800d3

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 1266
    .local v0, storeButton:Lcom/htc/widget/HeaderBarImage;
    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 1269
    :cond_0
    return-void
.end method

.method public hideDatabaseError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 848
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 849
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 853
    :cond_0
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 859
    :cond_1
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 860
    if-eqz v0, :cond_2

    .line 861
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 863
    :cond_2
    return-void
.end method

.method hideSearchDialog()V
    .locals 1

    .prologue
    .line 1051
    monitor-enter p0

    .line 1052
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    if-nez v0, :cond_0

    .line 1053
    monitor-exit p0

    .line 1062
    :goto_0
    return-void

    .line 1056
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->removeDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1061
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1059
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 867
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 869
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 871
    :cond_0
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 872
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getIsInternalEnough()Z

    move-result v0

    .line 873
    .local v0, isInternalEnough:Z
    if-nez v0, :cond_2

    .line 874
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 875
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    .line 876
    if-eqz v0, :cond_1

    .line 877
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 915
    :goto_0
    return-void

    .line 880
    :cond_1
    const-string v1, "[MediaPlaybackErrorActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, don\'t re-scan, isInternalEnough: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 885
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 887
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideDatabaseError()V

    .line 890
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 891
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showSearchDialog()V

    .line 892
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 895
    :cond_4
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "This activity is finishing..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 899
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    goto :goto_0

    .line 913
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 914
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startPlayback()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1285
    const-string v0, "[MediaPlaybackErrorActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive activity result, requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startListenStore()V

    .line 1291
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1084
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1085
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const v5, 0x7f0800a1

    .line 418
    const-string v3, "[MediaPlaybackErrorActivity]"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    const v3, 0x7f030032

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->setContentView(I)V

    .line 422
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorContent:Landroid/view/View;

    .line 423
    const v3, 0x7f0800a2

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdIcon:Landroid/view/View;

    .line 424
    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdMessage:Landroid/view/View;

    .line 426
    iget v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 427
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->setRequestedOrientation(I)V

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initConstant()V

    .line 432
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v3, :cond_5

    .line 433
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, status:Ljava/lang/String;
    const-string v3, "[MediaPlaybackErrorActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged()...SD status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 437
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "checking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 440
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    .line 463
    .end local v2           #status:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initTitleBar()V

    .line 465
    return-void

    .line 443
    .restart local v2       #status:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    .line 444
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "checking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    goto :goto_0

    .line 451
    .end local v2           #status:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, errorContent:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 454
    .local v1, param:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_6

    .line 455
    iget v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceDMPErrorIconTopMargin:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 458
    .end local v1           #param:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showErrorFromPluginService()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const v12, 0x7f0800a1

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 202
    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "onCreate +"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    if-eqz p1, :cond_5

    .line 205
    const-string v6, "queuelen"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 206
    const-string v6, "orientation"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    .line 207
    const-string v6, "pluginmode"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 208
    const-string v6, "errorcause"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 209
    const-string v6, "disablelib"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    .line 220
    :goto_0
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->requestWindowFeature(I)Z

    .line 221
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->setVolumeControlStream(I)V

    .line 222
    invoke-virtual {p0, v10}, Lcom/htc/music/MediaPlaybackErrorActivity;->requestWindowFeature(I)Z

    .line 224
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mOrientation:I

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v6, v7}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "fail to bind service..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    const v6, 0x7f030032

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->setContentView(I)V

    .line 233
    invoke-virtual {p0, v12}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorContent:Landroid/view/View;

    .line 234
    const v6, 0x7f0800a2

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdIcon:Landroid/view/View;

    .line 235
    const v6, 0x7f0800a3

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSdMessage:Landroid/view/View;

    .line 237
    iget v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    if-ne v6, v11, :cond_1

    .line 238
    invoke-virtual {p0, v8}, Lcom/htc/music/MediaPlaybackErrorActivity;->setRequestedOrientation(I)V

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initConstant()V

    .line 253
    iget-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v6, :cond_8

    .line 255
    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v6, v8

    const-string v7, "album_id"

    aput-object v7, v6, v10

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    .line 257
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v1, f:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v6, "file"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 262
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v6, :cond_2

    .line 265
    new-instance v6, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/ContentResolver;)V

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 267
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, status:Ljava/lang/String;
    const-string v6, "[MediaPlaybackErrorActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate()...SD status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_6

    .line 271
    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "mounted_ro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "checking"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 274
    :cond_3
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    .line 306
    .end local v1           #f:Landroid/content/IntentFilter;
    .end local v5           #status:Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "com.htc.music.finisherroractivity"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initTitleBar()V

    .line 313
    const-string v6, "[MediaPlaybackErrorActivity]"

    const-string v7, "onCreate -"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void

    .line 211
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 212
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "queuelen"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 213
    const-string v6, "orientation"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    .line 214
    const-string v6, "pluginmode"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 215
    const-string v6, "errorcause"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 216
    const-string v6, "disablelib"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    .line 217
    const-string v6, "Presentation_Mode"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPresentationMode:Z

    goto/16 :goto_0

    .line 277
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #f:Landroid/content/IntentFilter;
    .restart local v5       #status:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    .line 278
    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "mounted_ro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "checking"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 281
    :cond_7
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    goto :goto_1

    .line 293
    .end local v1           #f:Landroid/content/IntentFilter;
    .end local v5           #status:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mLossServerWarningStr:Ljava/lang/String;

    .line 295
    invoke-virtual {p0, v12}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, errorContent:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 298
    .local v4, param:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v4, :cond_9

    .line 299
    iget v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mGlanceDMPErrorIconTopMargin:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 303
    .end local v4           #param:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showErrorFromPluginService()V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 968
    sparse-switch p1, :sswitch_data_0

    .line 990
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 970
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 973
    :sswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 974
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 976
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 977
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/htc/music/MediaPlaybackErrorActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$8;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 987
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 968
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 469
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onDestroy +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 477
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 480
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 484
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 493
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 494
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 496
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    .line 498
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 501
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 502
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onDestroy -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 531
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 534
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 507
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 509
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v2, :cond_1

    .line 511
    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 512
    .local v0, image:Landroid/widget/ImageView;
    const v2, 0x7f0800a3

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 513
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 525
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "onResume()...mService is not null and no message in queue. Send message to queue."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 538
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "queuelen"

    iget v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const-string v0, "orientation"

    iget v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIndicateOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 542
    const-string v0, "errorcause"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "disablelib"

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    return-void
.end method

.method public showDatabaseError()V
    .locals 11

    .prologue
    const v10, 0x7f0800a3

    const v9, 0x7f0800a2

    const/4 v8, 0x0

    const v7, 0x208086b

    .line 679
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 680
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 681
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 684
    :cond_0
    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 685
    if-eqz v5, :cond_1

    .line 686
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 693
    if-eqz v5, :cond_5

    .line 695
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 700
    const/4 v2, 0x0

    .line 703
    .local v2, message:I
    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 705
    .local v1, iv:Landroid/widget/ImageView;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getIsInternalEnough()Z

    move-result v6

    if-nez v6, :cond_6

    .line 706
    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 710
    :cond_2
    const v2, 0x7f070040

    .line 773
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 774
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 777
    :cond_4
    invoke-virtual {p0, v10}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 780
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 781
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 786
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #message:I
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_5
    return-void

    .line 711
    .restart local v1       #iv:Landroid/widget/ImageView;
    .restart local v2       #message:I
    :cond_6
    const-string v6, "shared"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 712
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 713
    const v2, 0x7f07003f

    .line 715
    if-eqz v1, :cond_3

    .line 716
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 720
    :cond_7
    const v2, 0x7f07003e

    .line 722
    if-eqz v1, :cond_3

    .line 723
    const v6, 0x2080864

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 729
    :cond_8
    const-string v6, "removed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "bad_removal"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 731
    :cond_9
    const v2, 0x20c00a1

    .line 733
    if-eqz v1, :cond_a

    .line 734
    const v6, 0x2080867

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 737
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 738
    const v2, 0x7f07003f

    .line 740
    if-eqz v1, :cond_3

    .line 741
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 745
    :cond_b
    const-string v6, "unmounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 746
    const v2, 0x20c01e2

    .line 748
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 749
    const v2, 0x7f07003f

    .line 751
    if-eqz v1, :cond_3

    .line 752
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 757
    :cond_c
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 758
    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAllSongs(Landroid/content/Context;)[I

    move-result-object v0

    .line 760
    .local v0, allSong:[I
    if-eqz v0, :cond_e

    array-length v6, v0

    if-nez v6, :cond_f

    .line 761
    :cond_e
    const v2, 0x7f070029

    .line 767
    :goto_1
    if-eqz v1, :cond_3

    .line 768
    const v6, 0x2080866

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 764
    :cond_f
    const v2, 0x7f070030

    goto :goto_1
.end method

.method public showErrorFromPluginService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 811
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 812
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 813
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 816
    :cond_0
    const v3, 0x7f0800a2

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 817
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 823
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mLossServerWarningStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 824
    const v3, 0x2080865

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 830
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 833
    :cond_1
    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 834
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 836
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 840
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    :cond_2
    return-void

    .line 827
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_3
    const v3, 0x208086a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method showSearchDialog()V
    .locals 2

    .prologue
    .line 1065
    monitor-enter p0

    .line 1066
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    if-eqz v1, :cond_0

    .line 1067
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    :goto_0
    return-void

    .line 1071
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDialog(I)V

    .line 1072
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1076
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
