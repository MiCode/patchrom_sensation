.class public Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.super Lcom/htc/music/widget/MusicListActivity;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;,
        Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;,
        Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final BROWSE:I = 0xb

.field private static final DIALOG_LOADING:I = 0x0

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field private static final GETCURSOR:I = 0x3

.field private static final INSERT_NOMUSIC:I = 0xa

.field public static final INTENT_BROWSERLAYER:I = 0x0

.field public static final INTENT_UPPER:I = 0x1

.field public static final MENU_PLAYING:I = 0xd

.field public static final MENU_REFRESH:I = 0xa

.field public static final MENU_ROOT:I = 0xb

.field public static final MENU_UP:I = 0xc

.field private static final MUSIC_FOLDER:I = 0xb

.field private static final NO_MUSIC:I = 0xc

.field private static final QUERY_TIMER:I = 0x3

.field private static final REFRESH:I = 0x0

.field private static final REMOVE_DIALOG:I = 0x1

.field private static final REMOVE_SPINNER:I = 0x8

.field public static final RESULT_FINISH:I = 0x0

.field public static final RESULT_ROOT:I = 0x1

.field public static final RESULT_SERVER:I = 0x3

.field public static final RESULT_UPPER:I = 0x2

.field private static final SERVERLIST_ADD:I = 0x4

.field private static final SERVERLIST_REMOVE:I = 0x5

.field private static final SERVERLIST_UPDATE:I = 0x6

.field private static final SETSELECTION:I = 0x9

.field private static final SHOW_ERRDIALOG:I = 0x7

.field private static final ServiceError_ServerNotFound:I = -0x1f5

.field private static final TAG:Ljava/lang/String; = "DLNA"

.field private static final TIME_SHOWSPINNER:I = 0x7530

.field private static final UPnPError_AuthorizationFail:I = 0x321

.field private static final WIFI_ERROR:I = 0x2

.field private static final kUPnPError_ConnectionFailed:I = -0x1

.field private static mTime:J


# instance fields
.field public BROWSE_TYPE:I

.field private mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

.field private mBrowseEnd:J

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurContainID:Ljava/lang/String;

.field private mCurContainName:Ljava/lang/String;

.field private mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

.field private mCurServerID:Ljava/lang/String;

.field private mCurServerImg:Ljava/lang/String;

.field private mCurServerName:Ljava/lang/String;

.field private mCurStartIdx:J

.field mCursorCols:[Ljava/lang/String;

.field private mDestroy:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitial:Z

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mServerList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mWifiListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 65
    iput v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->BROWSE_TYPE:I

    .line 107
    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    .line 116
    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerImg:Ljava/lang/String;

    .line 119
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainName:Ljava/lang/String;

    .line 121
    iput-wide v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J

    .line 122
    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    .line 125
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mDestroy:Z

    .line 128
    iput-wide v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mBrowseEnd:J

    .line 414
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$12;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$12;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mWifiListener:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 485
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    .line 503
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 554
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$16;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;

    .line 912
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    .line 965
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    .line 1458
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content_id"

    aput-object v1, v0, v2

    const-string v1, "content_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "thumbnail_uri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mDestroy:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$1500()J
    .locals 2

    .prologue
    .line 63
    sget-wide v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mTime:J

    return-wide v0
.end method

.method static synthetic access$1502(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-wide p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mTime:J

    return-wide p0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mBrowseEnd:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mBrowseEnd:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerImg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerImg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    return-object v0
.end method


# virtual methods
.method public GetCursor(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/database/Cursor;
    .locals 8
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"

    .prologue
    const/4 v2, 0x0

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serve_id = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 951
    .local v3, where:Ljava/lang/String;
    const-string v5, "index_id COLLATE NOCASE ASC"

    .line 953
    .local v5, sort:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 955
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-object v2

    .line 958
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 959
    .local v6, count:I
    if-lez v6, :cond_0

    move-object v2, v7

    .line 962
    goto :goto_0
.end method

.method public GetCursorInfo(Landroid/database/Cursor;)V
    .locals 27
    .parameter "cursor"

    .prologue
    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    const-string v3, "DLNA"

    const-string v6, "GetCursorInfo"

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const/16 v23, 0x0

    .line 781
    .local v23, isMusicExist:Z
    const/16 v24, -0x1

    .line 783
    .local v24, lastClick:I
    new-instance v25, Ljava/util/LinkedList;

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedList;-><init>()V

    .line 784
    .local v25, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 786
    const-string v3, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCursorInfo: Cursor length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_2

    .line 789
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 819
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->getChildrenCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, v25

    invoke-virtual {v3, v6, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 826
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_3
    const-string v3, "content_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 793
    .local v15, contentID:Ljava/lang/String;
    const-string v3, "content_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 794
    .local v16, contentName:Ljava/lang/String;
    const-string v3, "file_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 795
    .local v18, fileType:Ljava/lang/String;
    const-string v3, "serve_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, serverID:Ljava/lang/String;
    const-string v3, "container"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, containerID:Ljava/lang/String;
    const-string v3, "index_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v9, v3

    .line 800
    .local v9, index:J
    if-nez v23, :cond_4

    .line 801
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 803
    .local v26, type:I
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_4

    .line 804
    const/16 v23, 0x1

    .line 805
    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainName:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v22

    int-to-long v11, v0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 806
    .local v2, info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 807
    const-string v3, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filetype = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 813
    .end local v2           #info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    .end local v26           #type:I
    :cond_4
    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    const/16 v17, 0x0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const/16 v21, 0x1

    move-object v11, v2

    move-object/from16 v12, p0

    move-object v13, v4

    move-object v14, v5

    invoke-direct/range {v11 .. v21}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 814
    .restart local v2       #info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 788
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 823
    .end local v2           #info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    .end local v4           #serverID:Ljava/lang/String;
    .end local v5           #containerID:Ljava/lang/String;
    .end local v9           #index:J
    .end local v15           #contentID:Ljava/lang/String;
    .end local v16           #contentName:Ljava/lang/String;
    .end local v18           #fileType:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, v25

    invoke-virtual {v3, v6, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    goto/16 :goto_3
.end method

.method public browse(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "server"
    .parameter "container"
    .parameter "startIdx"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 877
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    const-string v0, "DLNA"

    const-string v1, "Browse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse server = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iput-wide p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J

    .line 886
    sput-wide v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mTime:J

    .line 887
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    .line 888
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mBrowseEnd:J

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    const/16 v6, 0x1e

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v9

    .line 893
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelBrowse(Ljava/lang/Long;)V
    .locals 8
    .parameter "startIdx"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    const-string v0, "DLNA"

    const-string v1, "cancelBrowse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const/4 v6, 0x0

    .line 867
    .local v6, bDone:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 869
    if-nez v6, :cond_0

    .line 870
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    :catch_0
    move-exception v7

    .line 872
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->collapseAll()V

    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public clearData()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_1

    .line 696
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    .line 697
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 699
    :cond_1
    return-void
.end method

.method public collapseAll()V
    .locals 2

    .prologue
    .line 737
    const-string v0, "DLNA"

    const-string v1, "menu root"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    .line 740
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->collapseAll()V

    .line 741
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setTitle(Ljava/lang/String;)V

    .line 742
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    .line 743
    return-void
.end method

.method public getFilePath(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;)Ljava/lang/String;
    .locals 8
    .parameter "info"

    .prologue
    .line 833
    if-nez p1, :cond_0

    .line 834
    const/4 v3, 0x0

    .line 856
    :goto_0
    return-object v3

    .line 836
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v0, filePath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 839
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    .line 840
    .local v2, parent:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 841
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_1
    move-object p1, v2

    .line 843
    goto :goto_1

    .line 845
    .end local v2           #parent:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    :cond_2
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    const-string v3, ""

    .line 848
    .local v3, path:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 849
    .local v4, size:I
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 849
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 854
    :cond_3
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return file path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertNoMusicView()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/4 v2, 0x0

    .line 747
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 748
    .local v9, pos:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v3, v9, 0x1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 749
    const-string v1, "DLNA"

    const-string v2, "find empty view"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :goto_0
    return-void

    .line 753
    :cond_0
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 754
    .local v0, info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    invoke-virtual {v0, v10}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->SetFileType(I)V

    .line 756
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 757
    .local v8, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v1, v2, v8}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 760
    const-string v1, "DLNA"

    const-string v2, "no music file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public moveToTop()V
    .locals 3

    .prologue
    .line 729
    const-string v1, "DLNA"

    const-string v2, "press top of the folder"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v0

    .line 733
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 734
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    .line 735
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 900
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 902
    if-nez p1, :cond_0

    .line 903
    if-nez p2, :cond_1

    .line 904
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->finish()V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 907
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->requestWindowFeature(I)Z

    .line 142
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setVolumeControlStream(I)V

    .line 143
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setContentView(I)V

    .line 145
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setTitle(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    .line 149
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    .line 152
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showLoading()V

    .line 158
    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    .line 160
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 162
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z

    .line 164
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 165
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 167
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V

    .line 168
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setTextFilterEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setFastScrollEnabled(Z)V

    .line 171
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x20c0163

    const v2, 0x20c0162

    const v5, 0x20c013d

    const v4, 0x20c013c

    const v3, 0x1080027

    .line 204
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 206
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 306
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 209
    :sswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c009e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 238
    :sswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700c3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$6;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$5;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 258
    :sswitch_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$8;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$8;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$7;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 277
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$11;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$11;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$10;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$10;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$9;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$9;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f5 -> :sswitch_2
        -0x1 -> :sswitch_3
        0x2 -> :sswitch_0
        0x321 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 312
    const/16 v0, 0xd

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a3f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 313
    const/16 v0, 0xb

    const v1, 0x7f0700d1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080329

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 314
    const/16 v0, 0xa

    const v1, 0x20c0202

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 315
    const/16 v0, 0xc

    const v1, 0x7f0700d2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a95

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 177
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 381
    :cond_0
    :goto_0
    return v3

    .line 342
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 346
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showLoading()V

    .line 348
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    const-string v5, "DLNA"

    const-string v6, "Play all, check DLNA mode first"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {p0, v5, v6, v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v2

    .line 359
    .local v2, mode:I
    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLNA mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    packed-switch v2, :pswitch_data_1

    .line 372
    .end local v2           #mode:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->collapseAll()V

    goto :goto_0

    .line 363
    .restart local v2       #mode:I
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    const/4 v4, -0x2

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 376
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mode:I
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->moveToTop()V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 360
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 438
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    .line 440
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 448
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 450
    :cond_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 322
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 325
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 326
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 329
    :cond_0
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_2

    .line 331
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 333
    :cond_2
    return v2

    :cond_3
    move v1, v3

    .line 327
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 397
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    .line 399
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 401
    invoke-static {p0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showDialog(I)V

    .line 405
    :cond_0
    const-string v2, "DLNA"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 406
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "collapse"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 407
    .local v0, bCollapse:Z
    if-eqz v0, :cond_1

    .line 408
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "collapse"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->collapseAll()V

    .line 412
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 386
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStart()V

    .line 388
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 389
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showDialog(I)V

    .line 391
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mWifiListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mWifiListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 5
    .parameter "setEnable"

    .prologue
    .line 709
    const/4 v2, 0x0

    .line 710
    .local v2, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 712
    :cond_0
    iput v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 714
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 715
    const-string v3, "DLNA"

    const-string v4, "activity is paused, do not set category right button status"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 720
    .local v1, parent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 721
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 722
    .local v0, multiParent:Lcom/htc/music/widget/IMusicTabActivityInterface;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 6

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    .line 181
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    .line 183
    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    .line 186
    :cond_1
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;JJ)V

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->start()Landroid/os/CountDownTimer;

    .line 201
    return-void
.end method
