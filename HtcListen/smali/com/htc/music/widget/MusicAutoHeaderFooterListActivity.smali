.class public Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "MusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;
.implements Lcom/htc/music/widget/IDismissBubbleInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicOnlineListActivity]"


# instance fields
.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field protected mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

.field protected mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field protected mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field protected mIsOnlineInnerType:Z

.field private mMiniPlayer:Lcom/htc/music/MiniPlayer;

.field protected mOnlineSearchAction:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

.field private mUseCustomLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 39
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    .line 41
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 43
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    .line 44
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    .line 45
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    .line 47
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 48
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 52
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 54
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    .line 58
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    .line 295
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    .line 707
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

    .line 718
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$2;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    .line 727
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

    .line 737
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$4;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    .line 743
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$5;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private resetHeaderMiniPlayerButton(Z)V
    .locals 2
    .parameter "isLandscape"

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 285
    if-eqz p1, :cond_2

    .line 286
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTitleStyle(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setCategoryProgressVisible(Z)V

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setCategorySwitcherStyleTitle()V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setStoreSwitchStyleTitle()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 821
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicOnlineListActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public disableCategoryDropDown()V
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_1

    .line 618
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->disableCategoryDropDown()V

    .line 620
    :cond_1
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    .line 774
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 697
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 699
    .local v0, result:Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 702
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected initMiniPlayer()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 239
    .local v0, orientation:I
    if-ne v4, v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetMiniPlayer(Z)V

    .line 240
    if-ne v4, v0, :cond_1

    :goto_1
    invoke-direct {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetHeaderMiniPlayerButton(Z)V

    .line 241
    return-void

    :cond_0
    move v1, v3

    .line 239
    goto :goto_0

    :cond_1
    move v2, v3

    .line 240
    goto :goto_1
.end method

.method protected initOnlineTitleLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 92
    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-nez v3, :cond_0

    .line 98
    const v3, 0x7f0800b9

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 99
    .local v0, headerViewStub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 102
    const v3, 0x7f0800ba

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBar;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 104
    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    .line 105
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 109
    :cond_2
    const v3, 0x7f08004b

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 110
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 114
    :cond_3
    const v3, 0x7f08004e

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    .line 115
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_4

    .line 116
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 117
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 118
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f070105

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 119
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x20808fb

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 120
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_4
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    .line 124
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_5

    .line 125
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 126
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 129
    :cond_5
    const v3, 0x7f08004c

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    .line 130
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_6

    .line 131
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 134
    :cond_6
    new-instance v3, Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/StoreSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    .line 135
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 136
    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v4, p0, v5}, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;-><init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 144
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 145
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x3

    .line 146
    .local v2, type:I
    if-eqz v1, :cond_7

    .line 147
    const-string v3, "InnerActivityType"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 149
    :cond_7
    invoke-direct {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setTitleStyle(I)V

    .line 151
    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    .line 140
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #type:I
    :cond_8
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    .line 141
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 811
    const-string v0, "[MusicOnlineListActivity]"

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

    .line 812
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->startListenStore()V

    .line 818
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 301
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    .line 304
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    if-ne v4, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetMiniPlayer(Z)V

    .line 305
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    if-ne v4, v0, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetHeaderMiniPlayerButton(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 304
    goto :goto_1

    :cond_2
    move v1, v2

    .line 305
    goto :goto_2
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onContentChanged()V

    .line 81
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->initOnlineTitleLayout()V

    .line 86
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->initMiniPlayer()V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 313
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    .line 314
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 801
    packed-switch p1, :pswitch_data_0

    .line 806
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 803
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0xaae61
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 340
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->release()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 344
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    .line 320
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    .line 323
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    .line 331
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 334
    :cond_0
    return-void
.end method

.method protected resetMiniPlayer(Z)V
    .locals 4
    .parameter "isHorizontal"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f08006c

    .line 244
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-nez v1, :cond_0

    .line 248
    if-eqz p1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 252
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 254
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    .line 258
    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    goto :goto_0

    .line 261
    .end local v0           #container:Landroid/widget/LinearLayout;
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_0

    .line 263
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 265
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 266
    .restart local v0       #container:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_4

    .line 267
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0

    .line 273
    :cond_4
    const-string v1, "[MusicOnlineListActivity]"

    const-string v2, "can\'t find R.id.listview_content_layout!! so we can\'t add mini player view"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    .line 275
    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    goto :goto_0
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 575
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 1
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 597
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 599
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 606
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 581
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryLeftBtnVisible(Z)V

    .line 592
    :cond_1
    :goto_0
    return-void

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 585
    if-eqz p1, :cond_3

    .line 586
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 494
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryProgressVisible(Z)V

    .line 505
    :cond_1
    :goto_0
    return-void

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_1

    .line 498
    if-eqz p1, :cond_3

    .line 499
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 5
    .parameter "setEnable"

    .prologue
    .line 367
    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v3, :cond_1

    .line 368
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v3, :cond_2

    .line 373
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    goto :goto_0

    .line 377
    :cond_2
    const/4 v1, 0x0

    .line 378
    .local v1, setEnableInt:I
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 380
    :cond_3
    iput v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 382
    const/4 v2, 0x3

    .line 383
    .local v2, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 384
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_4

    .line 385
    const-string v3, "InnerActivityType"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 388
    :cond_4
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_0

    .line 389
    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 390
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setStoreRightBtn()V

    .line 405
    :goto_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto :goto_0

    .line 400
    :cond_5
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f0700e9

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 401
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x2080954

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 402
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 628
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn2Enable(Z)V

    .line 635
    :cond_1
    :goto_0
    return-void

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 1
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 660
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 669
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 677
    :cond_1
    :goto_0
    return-void

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 683
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn2OnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    :cond_1
    :goto_0
    return-void

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 641
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn2Visible(Z)V

    .line 652
    :cond_1
    :goto_0
    return-void

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 645
    if-eqz p1, :cond_3

    .line 646
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0

    .line 648
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 513
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtnEnable(Z)V

    .line 520
    :cond_1
    :goto_0
    return-void

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 1
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 536
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 539
    :cond_0
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 545
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 553
    :cond_1
    :goto_0
    return-void

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 559
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 2
    .parameter "setVisibile"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 525
    if-eqz p1, :cond_1

    .line 526
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategorySwitcherStyleTitle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 191
    const-string v0, "[MusicOnlineListActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 203
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 205
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 206
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 213
    :cond_2
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 62
    const v0, 0x7f030042

    if-eq v0, p1, :cond_0

    const v0, 0x7f030043

    if-ne v0, p1, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    .line 69
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setContentView(I)V

    .line 70
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    goto :goto_0
.end method

.method public setMainTitle(I)V
    .locals 2
    .parameter "mainTitleRes"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 445
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 447
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "mainTitle"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 454
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 458
    if-lez p1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 460
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 469
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 480
    if-eqz p1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public setStoreRightBtn()V
    .locals 3

    .prologue
    .line 777
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 779
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchTagResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 780
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchIconResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 781
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 782
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 783
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v0

    .line 784
    .local v0, storeCount:I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    .end local v0           #storeCount:I
    :cond_0
    :goto_0
    return-void

    .line 787
    .restart local v0       #storeCount:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 788
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 789
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 792
    .end local v0           #storeCount:I
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setStoreSwitchStyleTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 218
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 225
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 227
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 233
    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "title"
    .parameter "actionIconResId"
    .parameter "actionStrResId"
    .parameter "listener"

    .prologue
    .line 351
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v2, :cond_1

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 358
    .local v0, rootParent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 359
    check-cast v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 360
    .local v1, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v1, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, -0x2

    invoke-super {p0, p1, v0}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    if-ltz p2, :cond_1

    .line 426
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_1
    const/4 v0, -0x2

    invoke-super {p0, p1, v0}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 433
    const/4 v0, -0x2

    invoke-super {p0, p2, v0}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    return-void
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 438
    return-void
.end method
