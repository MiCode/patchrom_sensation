.class public Lcom/htc/music/widget/MusicListActivity;
.super Lcom/htc/music/widget/MusicMaActivity;
.source "MusicListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;
    }
.end annotation


# static fields
.field private static final DELETION_TRACK_COMPLETED:I = 0x0

.field public static final DIALOG_NETWORK_SETTING:I = 0x259

.field public static final HTC_CONTEXT_MENU:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "[MusicListActivity]"

.field private static mEnableLandscapeHorizontalSDError:I


# instance fields
.field public BROWSE_TYPE:I

.field protected mActivityPaused:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mEditor:Landroid/widget/EditText;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mHtcContextMenu:Lcom/htc/widget/HtcAlertDialog;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mIsEnhancerExist:Z

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mOrientation:I

.field private mParent:Landroid/app/Activity;

.field private mRequestFocus:Ljava/lang/Runnable;

.field private mRes:Landroid/content/res/Resources;

.field private mSearchHint:I

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private mbufferdialog:Landroid/app/ProgressDialog;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 950
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/widget/MusicListActivity;->mEnableLandscapeHorizontalSDError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 220
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;-><init>()V

    .line 227
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/widget/MusicListActivity;->BROWSE_TYPE:I

    .line 230
    const-string v0, "dummy"

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 231
    new-array v0, v4, [Ljava/lang/CharSequence;

    const-string v1, "dummy"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 234
    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mParent:Landroid/app/Activity;

    .line 238
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    .line 244
    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 246
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    .line 248
    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    .line 249
    iput v4, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    .line 288
    new-instance v0, Lcom/htc/music/widget/MusicListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicListActivity$1;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->messageHandler:Landroid/os/Handler;

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHandler:Landroid/os/Handler;

    .line 372
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicListActivity;->mFinishedStart:Z

    .line 374
    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 376
    new-instance v0, Lcom/htc/music/widget/MusicListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicListActivity$2;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 506
    new-instance v0, Lcom/htc/music/widget/MusicListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicListActivity$3;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 516
    new-instance v0, Lcom/htc/music/widget/MusicListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicListActivity$4;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 528
    iput v2, p0, Lcom/htc/music/widget/MusicListActivity;->mSearchHint:I

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/widget/MusicListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/MusicListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/MusicListActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 276
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 277
    .local v7, deleteContent:Landroid/app/Activity;
    if-nez v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    .line 279
    :cond_0
    const-string v1, ""

    const v2, 0x7f0700a6

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 280
    new-instance v0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/MusicListActivity;Lcom/htc/music/widget/MusicListActivity$1;)V

    .local v0, mDeleteAlbum:Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 281
    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 283
    .local v8, deletethread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;->ensureList()V

    .line 488
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public hideEmptyErrorView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 726
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 739
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 740
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 741
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 742
    invoke-virtual {v0, v2, v2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 745
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    .line 746
    return-void
.end method

.method protected hideHtcContextMenu()V
    .locals 1

    .prologue
    .line 943
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->removeDialog(I)V

    .line 944
    return-void
.end method

.method protected hideSearchBar()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1018
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 996
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 998
    iget v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->resetSDErrorLayout()V

    .line 1004
    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1005
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1006
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1007
    .local v0, errorIconParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1008
    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 421
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onContentChanged()V

    .line 422
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 424
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    .line 425
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_0
    if-eqz v0, :cond_1

    .line 429
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 432
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOnLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 433
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3, v3}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 434
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 437
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicListActivity;->mFinishedStart:Z

    .line 439
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    .line 257
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mRes:Landroid/content/res/Resources;

    .line 259
    const/4 v0, -0x1

    sget v1, Lcom/htc/music/widget/MusicListActivity;->mEnableLandscapeHorizontalSDError:I

    if-ne v0, v1, :cond_0

    .line 260
    const v0, 0x7f0701bd

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/htc/music/widget/MusicListActivity;->mEnableLandscapeHorizontalSDError:I

    .line 263
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 897
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 898
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 920
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 900
    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/htc/music/widget/MusicListActivity$5;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/MusicListActivity$5;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 914
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 898
    nop

    :sswitch_data_0
    .sparse-switch
        0x259 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "[MusicListActivity]"

    const-string v1, "call parent Empty onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 947
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 394
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 873
    monitor-enter p0

    .line 874
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 875
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 877
    return-void

    .line 875
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    .line 859
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onPause()V

    .line 860
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 926
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 927
    packed-switch p1, :pswitch_data_0

    .line 932
    .end local p2
    :goto_0
    return-void

    .line 929
    .restart local p2
    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 864
    monitor-enter p0

    .line 865
    :try_start_0
    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 866
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 866
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;->ensureList()V

    .line 410
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 411
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    .line 270
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->removeDialog(I)V

    .line 271
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onResume()V

    .line 272
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 888
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 892
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1014
    return-void
.end method

.method protected resetSDErrorLayout()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 952
    sget v2, Lcom/htc/music/widget/MusicListActivity;->mEnableLandscapeHorizontalSDError:I

    if-nez v2, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 956
    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 957
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 958
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 959
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 960
    iget v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    if-ne v4, v2, :cond_4

    .line 961
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 968
    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    const v2, 0x7f0800a3

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 969
    if-eqz v1, :cond_3

    .line 970
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    .restart local v0       #param:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_3

    .line 972
    iget v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    if-ne v4, v2, :cond_5

    .line 973
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 980
    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_2
    const v2, 0x7f080070

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 981
    if-eqz v1, :cond_0

    .line 982
    iget v2, p0, Lcom/htc/music/widget/MusicListActivity;->mOrientation:I

    if-ne v4, v2, :cond_6

    move-object v2, v1

    .line 983
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_3
    move-object v2, v1

    .line 987
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 988
    const v2, 0x20801c1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 963
    .restart local v0       #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 975
    :cond_5
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_2

    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    move-object v2, v1

    .line 985
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_3
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 647
    const v1, 0x7f0800ab

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 648
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 650
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;->ensureList()V

    .line 447
    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 449
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-nez v0, :cond_1

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 456
    :cond_1
    monitor-exit p0

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setSearchHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 533
    iput p1, p0, Lcom/htc/music/widget/MusicListActivity;->mSearchHint:I

    .line 534
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 467
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 562
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, -0x1

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V

    .line 570
    return-void
.end method

.method public setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V
    .locals 11
    .parameter "title"
    .parameter "actionIconResId"
    .parameter "actionStrResId"
    .parameter "listener"

    .prologue
    const v10, 0x7f08003f

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 574
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 575
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "ShowActivityTitle"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 576
    .local v5, showTitle:Z
    if-eqz v5, :cond_3

    .line 578
    invoke-virtual {p0, v10}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 580
    .local v1, headerLayout:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 581
    const v6, 0x7f080040

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 582
    .local v0, headerImageRight:Lcom/htc/widget/HeaderBarImage;
    if-eqz v0, :cond_0

    .line 583
    if-gez p2, :cond_2

    .line 584
    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 598
    :cond_0
    :goto_0
    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    .line 599
    .local v2, headerText:Lcom/htc/widget/HeaderBarText;
    if-eqz v2, :cond_1

    .line 600
    invoke-virtual {v2, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 622
    .end local v0           #headerImageRight:Lcom/htc/widget/HeaderBarImage;
    .end local v1           #headerLayout:Landroid/view/View;
    .end local v2           #headerText:Lcom/htc/widget/HeaderBarText;
    :cond_1
    :goto_1
    return-void

    .line 586
    .restart local v0       #headerImageRight:Lcom/htc/widget/HeaderBarImage;
    .restart local v1       #headerLayout:Landroid/view/View;
    :cond_2
    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 587
    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 588
    invoke-virtual {v0, p3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 589
    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 590
    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    .line 591
    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 592
    invoke-virtual {v0, v8}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 593
    invoke-virtual {v0, p4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 607
    .end local v0           #headerImageRight:Lcom/htc/widget/HeaderBarImage;
    .end local v1           #headerLayout:Landroid/view/View;
    :cond_3
    iget-boolean v6, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-eqz v6, :cond_4

    .line 608
    const-string v6, "[MusicListActivity]"

    const-string v7, "activity is paused, do not set category title status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 612
    :cond_4
    invoke-virtual {p0, v10}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 613
    .restart local v1       #headerLayout:Landroid/view/View;
    if-eqz v1, :cond_5

    .line 614
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    .line 618
    .local v4, parent:Landroid/app/Activity;
    if-eqz v4, :cond_1

    instance-of v6, v4, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v6, :cond_1

    .line 619
    check-cast v4, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v4           #parent:Landroid/app/Activity;
    invoke-interface {v4, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showDatabaseError()V
    .locals 10

    .prologue
    const v9, 0x208086b

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 751
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 752
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 753
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_0
    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_1

    .line 758
    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 770
    :cond_1
    const v6, 0x20201c0

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 771
    if-nez v5, :cond_2

    .line 772
    const v6, 0x7f0800a6

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 776
    :cond_2
    if-eqz v5, :cond_3

    .line 777
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :cond_3
    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v6, :cond_4

    .line 782
    const v6, 0x7f08006f

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    iput-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 785
    :cond_4
    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_6

    .line 786
    iget-object v6, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 787
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->resetSDErrorLayout()V

    .line 789
    const v6, 0x7f0800e3

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 790
    if-nez v5, :cond_5

    const v6, 0x7f080070

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 791
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 794
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, status:Ljava/lang/String;
    const v2, 0x20c00a1

    .line 797
    .local v2, message:I
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 798
    const v2, 0x7f07003f

    .line 800
    :cond_7
    const v6, 0x7f0800a2

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 802
    .local v1, iv:Landroid/widget/ImageView;
    const-string v6, "shared"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 803
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 804
    const v2, 0x7f07003f

    .line 806
    if-eqz v1, :cond_8

    .line 807
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 845
    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    .line 846
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 848
    :cond_9
    const v6, 0x7f0800a3

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 849
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_a

    .line 850
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 853
    :cond_a
    invoke-virtual {p0, v7}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    .line 854
    return-void

    .line 809
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_b
    const v2, 0x7f07003e

    .line 811
    if-eqz v1, :cond_8

    .line 812
    const v6, 0x2080864

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 814
    :cond_c
    const-string v6, "removed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "bad_removal"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 816
    :cond_d
    const v2, 0x20c00a1

    .line 818
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 819
    const v2, 0x7f07003f

    goto :goto_0

    .line 821
    :cond_e
    const-string v6, "unmounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 822
    const v2, 0x20c01e2

    .line 824
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 825
    const v2, 0x7f07003f

    .line 827
    if-eqz v1, :cond_8

    .line 828
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 831
    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAllSongs(Landroid/content/Context;)[I

    move-result-object v0

    .line 833
    .local v0, allSong:[I
    if-eqz v0, :cond_10

    array-length v6, v0

    if-nez v6, :cond_11

    .line 834
    :cond_10
    const v2, 0x7f070029

    .line 840
    :goto_1
    if-eqz v1, :cond_8

    .line 841
    const v6, 0x2080866

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 837
    :cond_11
    const v2, 0x7f070030

    goto :goto_1
.end method

.method public showEmptyView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 694
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 695
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 696
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 704
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 707
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 708
    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 710
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 712
    const v3, 0x7f0800ab

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 713
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 714
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    .line 718
    const v3, 0x7f0800ac

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 719
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 720
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    :cond_4
    return-void
.end method

.method public showEmptyView(I)V
    .locals 1
    .parameter "textResId"

    .prologue
    .line 653
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/MusicListActivity;->showEmptyView(II)V

    .line 654
    return-void
.end method

.method public showEmptyView(II)V
    .locals 6
    .parameter "textResId"
    .parameter "appendixIconResId"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 658
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 659
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 660
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 663
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 668
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 671
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 672
    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 674
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 676
    const v3, 0x7f0800ab

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 677
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 678
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 680
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    .line 682
    const v3, 0x7f0800ac

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 683
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 684
    if-lez p2, :cond_5

    .line 685
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 691
    :cond_4
    :goto_0
    return-void

    .line 688
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1
    .parameter "title"
    .parameter "items"
    .parameter "ids"

    .prologue
    .line 936
    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 937
    iput-object p2, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 938
    iput-object p3, p0, Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuIds:[I

    .line 939
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->showDialog(I)V

    .line 940
    return-void
.end method

.method showInputMethod(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 540
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 541
    :cond_2
    if-eqz p1, :cond_3

    .line 544
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 545
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public showSpinner(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 635
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 636
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 637
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v2, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    .line 644
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    const v3, 0x7f08003f

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 640
    .local v0, headerLayout:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 641
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public updateOptionsMenu()V
    .locals 1

    .prologue
    .line 880
    monitor-enter p0

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 883
    :cond_0
    monitor-exit p0

    .line 884
    return-void

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
