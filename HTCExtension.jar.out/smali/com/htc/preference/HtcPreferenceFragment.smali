.class public abstract Lcom/htc/preference/HtcPreferenceFragment;
.super Landroid/app/Fragment;
.source "HtcPreferenceFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Landroid/widget/ListView;

.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/htc/preference/HtcPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/preference/HtcPreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 117
    new-instance v0, Lcom/htc/preference/HtcPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceFragment$1;-><init>(Lcom/htc/preference/HtcPreferenceFragment;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/htc/preference/HtcPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceFragment$2;-><init>(Lcom/htc/preference/HtcPreferenceFragment;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcPreferenceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcPreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 374
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 377
    :cond_0
    return-void
.end method

.method private ensureList()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 386
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, root:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 394
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, rawListView:Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 396
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0           #rawListView:Landroid/view/View;
    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    .line 401
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v3, v4, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 402
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 403
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :cond_3
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private loadContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 322
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 325
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 331
    :cond_0
    :goto_0
    return-object p1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/htc/preference/HtcPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v2, "The package name can not be found."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 368
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->requirePreferenceManager()V

    .line 271
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 272
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .parameter "preferencesResId"

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->requirePreferenceManager()V

    .line 283
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 285
    return-void
.end method

.method public addPreferencesFromResource(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "preferencesResId"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->requirePreferenceManager()V

    .line 300
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/htc/preference/HtcPreferenceFragment;->loadContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 301
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/htc/preference/HtcPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/htc/preference/HtcPreferenceScreen;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 303
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->ensureList()V

    .line 382
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 170
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "item_background_holo_dark"

    const v5, 0x1080675

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 174
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108022f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-boolean v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->bindPreferences()V

    .line 179
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/preference/HtcPreferenceFragment;->mInitDone:Z

    .line 181
    if-eqz p1, :cond_1

    .line 182
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 185
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 190
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    new-instance v0, Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    .line 154
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceManager;->setFragment(Lcom/htc/preference/HtcPreferenceFragment;)V

    .line 155
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 156
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 161
    const v0, 0x1090075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityDestroy()V

    .line 209
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 210
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;

    .line 201
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 203
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 339
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lcom/htc/preference/HtcPreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 217
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 220
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    .end local v0           #container:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 195
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->dispatchActivityStop()V

    .line 196
    return-void
.end method

.method public setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1
    .parameter "preferenceScreen"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->setPreferences(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mHavePrefs:Z

    .line 247
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;->postBindPreferences()V

    .line 251
    :cond_0
    return-void
.end method
