.class public abstract Lcom/htc/preference/HtcPreferenceActivity;
.super Landroid/app/ListActivity;
.source "HtcPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
.implements Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceActivity$Header;,
        Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "HtcPreferenceActivity"

.field private static bitmap:Landroid/graphics/Bitmap;

.field private static canvas:Landroid/graphics/Canvas;


# instance fields
.field private mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z

.field private titleLayoutFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->titleLayoutFlag:Z

    .line 235
    new-instance v0, Lcom/htc/preference/HtcPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceActivity$1;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/preference/HtcPreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/preference/HtcPreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/preference/HtcPreferenceActivity;)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 1553
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1555
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1556
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1557
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1560
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1547
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    :goto_0
    return-void

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1579
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1582
    :cond_1
    return-void
.end method

.method private startQuickSearchBox()Z
    .locals 3

    .prologue
    .line 1724
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "qsb.corpus://com.android.settings%2F.globalsearch.SettingQueryHandler"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1729
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    const/4 v2, 0x1

    .line 1734
    :goto_0
    return v2

    .line 1731
    :catch_0
    move-exception v0

    .line 1732
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1734
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private switchToHeaderInner(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "direction"

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1330
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getClassLoader(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getPackageName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getPackageCodePath(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context.getPackageResourcePath(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v2, "HtcPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fragmentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-static {p1, p2, p3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1341
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1342
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1343
    const v2, 0x10202d4

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1344
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1345
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1633
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->requirePreferenceManager()V

    .line 1635
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 1636
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .parameter "preferencesResId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1649
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->requirePreferenceManager()V

    .line 1651
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 1653
    return-void
.end method

.method findBestMatchingHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 9
    .parameter "cur"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1406
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 1407
    .local v3, oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1409
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1410
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    .end local v3           #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1428
    .local v0, NM:I
    if-ne v0, v8, :cond_7

    .line 1429
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object v3, v4

    .line 1445
    :cond_2
    :goto_1
    return-object v3

    .line 1413
    .end local v0           #NM:I
    .restart local v3       #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1414
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1415
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1417
    :cond_5
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1418
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1419
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1421
    :cond_6
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1422
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1423
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1430
    .end local v3           #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .restart local v0       #NM:I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1431
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1432
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 1433
    .restart local v3       #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1437
    :cond_8
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1440
    :cond_9
    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1431
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1445
    .end local v3           #oh:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1680
    const/4 v0, 0x0

    .line 1683
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .parameter "caller"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1518
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {p0, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1520
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onBackPressed()V

    .line 1524
    if-eqz p1, :cond_0

    .line 1525
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 1620
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 921
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 924
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 16
    .parameter "resid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p2, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    const/4 v9, 0x0

    .line 936
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 937
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 941
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 945
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 946
    .local v7, nodeName:Ljava/lang/String;
    const-string v13, "preference-headers"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 947
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1047
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v3

    .line 1048
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1052
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v13

    .line 952
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_3
    const/4 v2, 0x0

    .line 954
    .local v2, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 956
    .local v8, outerDepth:I
    :cond_4
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_16

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_16

    .line 957
    :cond_5
    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    .line 961
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 962
    const-string v13, "header"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 963
    new-instance v4, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v4}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 965
    .local v4, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v13, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 967
    .local v10, sa:Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 970
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 972
    .local v11, tv:Landroid/util/TypedValue;
    if-eqz v11, :cond_6

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    .line 973
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_d

    .line 974
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 979
    :cond_6
    :goto_1
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 981
    if-eqz v11, :cond_7

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 982
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_e

    .line 983
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    .line 988
    :cond_7
    :goto_2
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 990
    if-eqz v11, :cond_8

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    .line 991
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_f

    .line 992
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 997
    :cond_8
    :goto_3
    const/4 v13, 0x6

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 999
    if-eqz v11, :cond_9

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 1000
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_10

    .line 1001
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1006
    :cond_9
    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 1008
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1010
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1012
    if-nez v2, :cond_a

    .line 1013
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #curBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1016
    .restart local v2       #curBundle:Landroid/os/Bundle;
    :cond_a
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 1018
    .local v5, innerDepth:I
    :cond_b
    :goto_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_13

    .line 1019
    :cond_c
    const/4 v13, 0x3

    if-eq v12, v13, :cond_b

    const/4 v13, 0x4

    if-eq v12, v13, :cond_b

    .line 1023
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1024
    .local v6, innerNodeName:Ljava/lang/String;
    const-string v13, "extra"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "extra"

    invoke-virtual {v13, v14, v1, v2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1026
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 1049
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #curBundle:Landroid/os/Bundle;
    .end local v4           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v6           #innerNodeName:Ljava/lang/String;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v8           #outerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    .end local v12           #type:I
    :catch_1
    move-exception v3

    .line 1050
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 976
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #curBundle:Landroid/os/Bundle;
    .restart local v4       #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v8       #outerDepth:I
    .restart local v10       #sa:Landroid/content/res/TypedArray;
    .restart local v11       #tv:Landroid/util/TypedValue;
    .restart local v12       #type:I
    :cond_d
    :try_start_4
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 985
    :cond_e
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 994
    :cond_f
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 1003
    :cond_10
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 1028
    .restart local v5       #innerDepth:I
    .restart local v6       #innerNodeName:Ljava/lang/String;
    :cond_11
    const-string v13, "intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v9, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 1032
    :cond_12
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1036
    .end local v6           #innerNodeName:Ljava/lang/String;
    :cond_13
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v13

    if-lez v13, :cond_14

    .line 1037
    iput-object v2, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1038
    const/4 v2, 0x0

    .line 1041
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1043
    .end local v4           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_15
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1052
    :cond_16
    if-eqz v9, :cond_17

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1055
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1132
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1134
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1137
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1204
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1206
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1207
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1208
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1209
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1141
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1143
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1144
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->postBindPreferences()V

    .line 1146
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 35
    .parameter "savedInstanceState"

    .prologue
    .line 560
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 566
    const v30, 0x10202e9

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 567
    const v30, 0x10202e9

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, -0xa

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v30 .. v34}, Landroid/view/View;->setPadding(IIII)V

    .line 571
    :cond_0
    const v30, 0x10900c4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setContentView(I)V

    .line 573
    const v30, 0x10202d2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/FrameLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 574
    const v30, 0x10202d3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v16

    .line 576
    .local v16, hidingHeaders:Z
    if-nez v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v30

    if-nez v30, :cond_d

    :cond_1
    const/16 v30, 0x1

    :goto_0
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string v31, ":android:show_fragment"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 578
    .local v18, initialFragment:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string v31, ":android:show_fragment_args"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 579
    .local v17, initialArguments:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string v31, ":android:show_fragment_title"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 580
    .local v21, initialTitle:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string v31, ":android:show_fragment_short_title"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 583
    .local v19, initialShortTitle:I
    move-object/from16 v8, p0

    .line 584
    .local v8, context:Landroid/content/Context;
    if-eqz v17, :cond_2

    .line 585
    const-wide/16 v28, 0x0

    .local v28, startTime:J
    const-wide/16 v12, 0x0

    .line 586
    .local v12, endTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 587
    const-string v30, "HtcPreference"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "startTime"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v30, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 591
    .local v24, packageName:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-static {v8, v0}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    .line 594
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 595
    const-string v30, "HtcPreference"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EndTime"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v12           #endTime:J
    .end local v24           #packageName:Ljava/lang/String;
    .end local v28           #startTime:J
    :cond_2
    if-eqz p1, :cond_e

    .line 603
    const-string v30, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 604
    .local v15, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    if-eqz v15, :cond_3

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 606
    const-string v30, ":android:cur_header"

    const/16 v31, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 608
    .local v9, curHeader:I
    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_3

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 648
    .end local v9           #curHeader:I
    .end local v15           #headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    :cond_3
    :goto_1
    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 650
    const v30, 0x1020237

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 651
    const v30, 0x10202d1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 653
    if-eqz v21, :cond_4

    .line 654
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 655
    .local v22, initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v19, :cond_12

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 657
    .local v20, initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 682
    .end local v20           #initialShortTitleStr:Ljava/lang/CharSequence;
    .end local v22           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_4
    :goto_3
    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_6

    .line 693
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v30

    const-string v31, "item_background_holo_dark"

    const v32, 0x1080675

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ListView;->setSelector(I)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v30

    const/16 v31, 0x3

    const/16 v32, 0x0

    const/16 v33, 0x3

    const/16 v34, 0x0

    invoke-virtual/range {v30 .. v34}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x108022f

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 702
    .local v23, intent:Landroid/content/Intent;
    const-string v30, "extra_prefs_show_button_bar"

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 704
    const v30, 0x10202d5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 706
    const v30, 0x10202d6

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 708
    .local v6, backButton:Landroid/widget/Button;
    invoke-virtual {v6}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    .line 709
    .local v26, parent:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x2050079

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x2050079

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    const/16 v33, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "common_button_small"

    const v32, 0x2080011

    invoke-static/range {v30 .. v32}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 715
    const v30, 0x2030001

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x20a0038

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 718
    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 719
    .local v25, param:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x2050079

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 720
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    new-instance v30, Lcom/htc/preference/HtcPreferenceActivity$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity$2;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    const v30, 0x10202d7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/Button;

    .line 730
    .local v27, skipButton:Landroid/widget/Button;
    const v30, 0x10202d8

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .end local v27           #skipButton:Landroid/widget/Button;
    check-cast v27, Landroid/widget/Button;

    .line 732
    .restart local v27       #skipButton:Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "common_button_small"

    const v32, 0x2080011

    invoke-static/range {v30 .. v32}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 734
    const v30, 0x2030001

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x20a0038

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 736
    new-instance v30, Lcom/htc/preference/HtcPreferenceActivity$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity$3;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    const v30, 0x10202d8

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Button;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const-string v32, "common_button_small"

    const v33, 0x2080011

    invoke-static/range {v31 .. v33}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    const v31, 0x2030001

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x20a0038

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    new-instance v31, Lcom/htc/preference/HtcPreferenceActivity$4;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity$4;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    const-string v30, "extra_prefs_set_next_text"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 758
    const-string v30, "extra_prefs_set_next_text"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, buttonText:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setVisibility(I)V

    .line 766
    .end local v7           #buttonText:Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v30, "extra_prefs_set_back_text"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 767
    const-string v30, "extra_prefs_set_back_text"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 768
    .restart local v7       #buttonText:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 769
    const/16 v30, 0x8

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 775
    .end local v7           #buttonText:Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v30, "extra_prefs_show_skip"

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 776
    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 780
    .end local v6           #backButton:Landroid/widget/Button;
    .end local v25           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v26           #parent:Landroid/view/ViewGroup;
    .end local v27           #skipButton:Landroid/widget/Button;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 781
    .local v5, PackageName:Ljava/lang/String;
    const-string v30, "com.android.settings"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 782
    sget-object v30, Lcom/htc/preference/HtcPreferenceActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v30, :cond_a

    sget-object v30, Lcom/htc/preference/HtcPreferenceActivity;->canvas:Landroid/graphics/Canvas;

    if-nez v30, :cond_b

    .line 784
    :cond_a
    const/16 v30, 0x21c

    const/16 v31, 0x48

    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v30 .. v32}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v30

    sput-object v30, Lcom/htc/preference/HtcPreferenceActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 785
    new-instance v30, Landroid/graphics/Canvas;

    sget-object v31, Lcom/htc/preference/HtcPreferenceActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {v30 .. v31}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v30, Lcom/htc/preference/HtcPreferenceActivity;->canvas:Landroid/graphics/Canvas;

    .line 787
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x20807c7

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 788
    .local v10, drawable1:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x2080085

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 789
    .local v11, drawable2:Landroid/graphics/drawable/Drawable;
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x21c

    const/16 v33, 0x48

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 790
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x21c

    const/16 v33, 0x48

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    sget-object v30, Lcom/htc/preference/HtcPreferenceActivity;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 792
    sget-object v30, Lcom/htc/preference/HtcPreferenceActivity;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    if-eqz v30, :cond_c

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    new-instance v31, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v32, Lcom/htc/preference/HtcPreferenceActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {v31 .. v32}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    .end local v10           #drawable1:Landroid/graphics/drawable/Drawable;
    .end local v11           #drawable2:Landroid/graphics/drawable/Drawable;
    :cond_c
    return-void

    .line 576
    .end local v5           #PackageName:Ljava/lang/String;
    .end local v8           #context:Landroid/content/Context;
    .end local v17           #initialArguments:Landroid/os/Bundle;
    .end local v18           #initialFragment:Ljava/lang/String;
    .end local v19           #initialShortTitle:I
    .end local v21           #initialTitle:I
    .end local v23           #intent:Landroid/content/Intent;
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 614
    .restart local v8       #context:Landroid/content/Context;
    .restart local v17       #initialArguments:Landroid/os/Bundle;
    .restart local v18       #initialFragment:Ljava/lang/String;
    .restart local v19       #initialShortTitle:I
    .restart local v21       #initialTitle:I
    :cond_e
    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 619
    if-eqz v21, :cond_3

    .line 620
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 621
    .restart local v22       #initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v19, :cond_f

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 623
    .restart local v20       #initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 621
    .end local v20           #initialShortTitleStr:Ljava/lang/CharSequence;
    :cond_f
    const/16 v20, 0x0

    goto :goto_6

    .line 628
    .end local v22           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_3

    .line 634
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-nez v30, :cond_3

    .line 635
    if-nez v18, :cond_11

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->onGetInitialHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v14

    .line 637
    .local v14, h:Lcom/htc/preference/HtcPreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 639
    .end local v14           #h:Lcom/htc/preference/HtcPreferenceActivity$Header;
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 655
    .restart local v22       #initialTitleStr:Ljava/lang/CharSequence;
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 659
    .end local v22           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_15

    .line 660
    new-instance v30, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 661
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-nez v30, :cond_4

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 667
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 672
    :cond_15
    const v30, 0x10900c5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setContentView(I)V

    .line 673
    const v30, 0x10202d2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/FrameLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 675
    const v30, 0x10202d4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 676
    new-instance v30, Lcom/htc/preference/HtcPreferenceManager;

    const/16 v31, 0x64

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_3

    .line 763
    .restart local v6       #backButton:Landroid/widget/Button;
    .restart local v7       #buttonText:Ljava/lang/String;
    .restart local v23       #intent:Landroid/content/Intent;
    .restart local v25       #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v26       #parent:Landroid/view/ViewGroup;
    .restart local v27       #skipButton:Landroid/widget/Button;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 772
    :cond_17
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1078
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1080
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityDestroy()V

    .line 1085
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    return-object v0
.end method

.method public onGetNewHeader()Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcom/htc/preference/HtcPreferenceActivity$Header;I)V
    .locals 7
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1168
    iget-object v0, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1169
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1170
    iget v5, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1171
    .local v5, titleRes:I
    iget v6, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1172
    .local v6, shortTitleRes:I
    if-nez v5, :cond_0

    .line 1173
    iget v5, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 1174
    const/4 v6, 0x0

    .line 1176
    :cond_0
    iget-object v1, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1184
    .end local v5           #titleRes:I
    .end local v6           #shortTitleRes:I
    :cond_1
    :goto_0
    return-void

    .line 1179
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto :goto_0

    .line 1181
    :cond_3
    iget-object v0, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1150
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1152
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1154
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity$Header;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onHeaderClick(Lcom/htc/preference/HtcPreferenceActivity$Header;I)V

    .line 1156
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1691
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1535
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1537
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1663
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1113
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v2, :cond_0

    .line 1114
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1115
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 1117
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1119
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1128
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :goto_0
    return-void

    .line 1127
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 1089
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1091
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1092
    const-string v3, ":android:headers"

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1093
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 1094
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1095
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1096
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1101
    .end local v1           #index:I
    :cond_0
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v3, :cond_1

    .line 1102
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 1103
    .local v2, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v2, :cond_1

    .line 1104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1105
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1106
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1109
    .end local v0           #container:Landroid/os/Bundle;
    .end local v2           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 800
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 801
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, PackageName:Ljava/lang/String;
    const-string v4, "com.android.settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 804
    iget-boolean v4, p0, Lcom/htc/preference/HtcPreferenceActivity;->titleLayoutFlag:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 806
    const-string v4, "HtcPreference"

    const-string v5, "onStart add header bar"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 810
    new-instance v2, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 811
    .local v2, titlebar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v3, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 812
    .local v3, titlebartext:Lcom/htc/widget/HeaderBarText;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 813
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 815
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarMiddle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 819
    const v4, 0x1020002

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 820
    .local v1, preferLayout:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 821
    iput-boolean v7, p0, Lcom/htc/preference/HtcPreferenceActivity;->titleLayoutFlag:Z

    .line 824
    .end local v1           #preferLayout:Landroid/view/ViewGroup;
    .end local v2           #titlebar:Lcom/htc/widget/HeaderBarMiddle;
    .end local v3           #titlebartext:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1069
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1071
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityStop()V

    .line 1074
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1062
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/HtcFragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1287
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2
    .parameter "preferenceScreen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->requirePreferenceManager()V

    .line 1596
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceManager;->setPreferences(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1597
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->postBindPreferences()V

    .line 1598
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1600
    .local v0, title:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1604
    .end local v0           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 1291
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1292
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1293
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1297
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 1298
    return-void

    .line 1295
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "title"

    .prologue
    const v3, 0x2020260

    .line 828
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 829
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, PackageName:Ljava/lang/String;
    const-string v2, "com.htc.android.mail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 833
    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    .line 834
    .local v1, titlebartext:Lcom/htc/widget/HeaderBarText;
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 838
    .end local v1           #titlebartext:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void
.end method

.method showBreadCrumbs(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 4
    .parameter "header"

    .prologue
    .line 1301
    if-eqz p1, :cond_2

    .line 1302
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1304
    .local v1, title:Ljava/lang/CharSequence;
    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1307
    .local v0, res:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1308
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1309
    :cond_1
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1313
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1311
    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/preference/HtcPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    const/4 v4, 0x0

    .line 1254
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    if-nez v2, :cond_2

    .line 1255
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1258
    .local v0, crumbs:Landroid/view/View;
    :try_start_0
    check-cast v0, Landroid/app/HtcFragmentBreadCrumbs;

    .end local v0           #crumbs:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    if-nez v2, :cond_1

    .line 1263
    if-eqz p1, :cond_0

    .line 1264
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1259
    :catch_0
    move-exception v1

    .line 1260
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1268
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_1
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/HtcFragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1269
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v2, p0}, Landroid/app/HtcFragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1271
    :cond_2
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v2, p1, p2}, Landroid/app/HtcFragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/HtcFragmentBreadCrumbs;

    invoke-virtual {v2, v4, v4, v4}, Landroid/app/HtcFragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .parameter "fragment"
    .parameter "push"

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1457
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0x10202d4

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1458
    if-eqz p2, :cond_0

    .line 1459
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1460
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1464
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1465
    return-void

    .line 1462
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .parameter "fragmentClass"
    .parameter "args"
    .parameter "titleRes"
    .parameter "titleText"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    .line 1488
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1489
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1506
    :goto_0
    return-void

    .line 1491
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1492
    .local v7, f:Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1493
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1495
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1496
    .local v8, transaction:Landroid/app/FragmentTransaction;
    const v0, 0x10202d4

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1497
    if-eqz p3, :cond_3

    .line 1498
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1502
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1503
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1504
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1499
    :cond_3
    if-eqz p4, :cond_2

    .line 1500
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1698
    const/4 v2, 0x0

    .line 1702
    .local v2, supported:Z
    :try_start_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1704
    .local v1, senseVersion:F
    const v3, 0x40066666

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 1705
    const/4 v2, 0x1

    .line 1712
    .end local v1           #senseVersion:F
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1713
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;->startQuickSearchBox()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1719
    :goto_1
    return-void

    .line 1707
    :catch_0
    move-exception v0

    .line 1708
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1717
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x0

    .line 1218
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1219
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1240
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/htc/preference/HtcPreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1241
    .local v0, intent:Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1242
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1246
    :goto_0
    return-void

    .line 1244
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 5
    .parameter "header"

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-ne v2, p1, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1401
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceActivity;->mCurHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1394
    .local v1, direction:I
    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 1396
    .local v0, context:Landroid/content/Context;
    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeaderInner(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1399
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 1368
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->setSelectedHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 1370
    move-object v0, p0

    .line 1371
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_0

    .line 1372
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    .local v1, packageName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 1375
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/htc/preference/HtcPreferenceActivity;->switchToHeaderInner(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1377
    return-void
.end method
