.class public Lcom/htc/music/PluginPropertyListActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "PluginPropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    }
.end annotation


# static fields
.field public static final NEW_PROPERTY:Ljava/lang/String; = "com.htc.music.newproperty"


# instance fields
.field private final PROPERTY_ALBUM:I

.field private final PROPERTY_ARTIST:I

.field private final PROPERTY_COMPOSER:I

.field private final PROPERTY_FILENAME:I

.field private final PROPERTY_GENRE:I

.field private final PROPERTY_LENGTH:I

.field private final PROPERTY_LOCATION:I

.field private final PROPERTY_TRACK:I

.field private TAG:Ljava/lang/String;

.field private mListItemArray:[I

.field private mPluginPropertyAdapter:Landroid/widget/BaseAdapter;

.field private mPluginPropertyList:Lcom/htc/widget/HtcListView;

.field private mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field protected osc:Landroid/content/ServiceConnection;

.field private titleArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 25
    const-string v0, "[PluginPropertyListActivity]"

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_LENGTH:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_FILENAME:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_TRACK:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_ARTIST:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_ALBUM:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_GENRE:I

    .line 41
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_COMPOSER:I

    .line 43
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_LOCATION:I

    .line 45
    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    .line 47
    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 51
    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    .line 117
    new-instance v0, Lcom/htc/music/PluginPropertyListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/PluginPropertyListActivity$1;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->osc:Landroid/content/ServiceConnection;

    .line 132
    new-instance v0, Lcom/htc/music/PluginPropertyListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/PluginPropertyListActivity$2;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Lcom/htc/music/PluginPropertyListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/PluginPropertyListActivity$3;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lcom/htc/music/PluginPropertyListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/PluginPropertyListActivity$4;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyAdapter:Landroid/widget/BaseAdapter;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/PluginPropertyListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/PluginPropertyListActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/music/PluginPropertyListActivity;->showPoperty()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/PluginPropertyListActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    return-object v0
.end method

.method private showPoperty()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 167
    return-void
.end method


# virtual methods
.method getProperties()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    invoke-virtual {v0}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isFileNameValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    .line 173
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v3, v0, v3

    .line 174
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 175
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v4, v0, v4

    .line 176
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v5, v0, v5

    .line 177
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v6, v0, v6

    .line 178
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v7, v0, v7

    .line 179
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 182
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f070074

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 203
    :goto_0
    return-object v0

    .line 194
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    .line 195
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v3, v0, v3

    .line 196
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x1

    aput v4, v0, v1

    .line 197
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v5, v0, v4

    .line 198
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v6, v0, v5

    .line 199
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v7, v0, v6

    .line 200
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x6

    aput v1, v0, v7

    .line 201
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 203
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f070075

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->setVolumeControlStream(I)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->requestWindowFeature(I)Z

    .line 65
    new-instance v1, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    invoke-direct {v1, p0}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    .line 66
    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    invoke-virtual {p0}, Lcom/htc/music/PluginPropertyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->setItems(Landroid/content/Intent;)V

    .line 68
    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/PluginPropertyListActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/PluginPropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "com.htc.music.newproperty"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/PluginPropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    const v1, 0x7f03004f

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/htc/music/PluginPropertyListActivity;->getProperties()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;

    .line 85
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyList:Lcom/htc/widget/HtcListView;

    .line 86
    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->setTitle(I)V

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/PluginPropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/PluginPropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    .line 103
    invoke-direct {p0}, Lcom/htc/music/PluginPropertyListActivity;->showPoperty()V

    .line 104
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 113
    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/PluginPropertyListActivity;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
