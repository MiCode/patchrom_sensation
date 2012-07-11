.class public Lcom/android/camera/widget/ResolutionView;
.super Landroid/widget/FrameLayout;
.source "ResolutionView.java"

# interfaces
.implements Lcom/android/camera/widget/IPopupMenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ResolutionView$MenuAdapter;,
        Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolutionView"


# instance fields
.field private mCameraThread:Lcom/android/camera/CameraThread;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsVisible:Z

.field private mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

.field private mMainList:Landroid/widget/ListView;

.field private mMainMenu:Landroid/widget/LinearLayout;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field private mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

.field private m_Context:Landroid/content/Context;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private m_MenuHeight:I

.field private m_MenuItemHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "screen"
    .parameter "cameraThread"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v0, p0, Lcom/android/camera/widget/ResolutionView;->mIsVisible:Z

    .line 68
    iput v0, p0, Lcom/android/camera/widget/ResolutionView;->m_MenuHeight:I

    .line 69
    iput v0, p0, Lcom/android/camera/widget/ResolutionView;->m_MenuItemHeight:I

    .line 72
    iput-object v1, p0, Lcom/android/camera/widget/ResolutionView;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object v1, p0, Lcom/android/camera/widget/ResolutionView;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 78
    iput-object p1, p0, Lcom/android/camera/widget/ResolutionView;->m_Context:Landroid/content/Context;

    .line 80
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    iput-object p2, p0, Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 84
    iput-object p4, p0, Lcom/android/camera/widget/ResolutionView;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 86
    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ResolutionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainMenu:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f0800ea

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ResolutionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainList:Landroid/widget/ListView;

    .line 89
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ResolutionView;->m_MenuItemHeight:I

    .line 91
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->m_EventManager:Lcom/android/camera/EventManager;

    .line 94
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainMenu:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 95
    invoke-direct {p0, p3}, Lcom/android/camera/widget/ResolutionView;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/ResolutionView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/ResolutionView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/widget/ResolutionView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/ResolutionView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/ResolutionView;->setEnabledStateOnViews(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/CameraThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/MenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/widget/ResolutionView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/widget/ResolutionView;->m_MenuHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/widget/ResolutionView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/widget/ResolutionView;->m_MenuItemHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/widget/ResolutionView;Landroid/preference/Preference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/ResolutionView;->updateCheckBoxPreference(Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/widget/ResolutionView;Landroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/ResolutionView;->updateListPreference(Landroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/EventManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method private static addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "preference"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    instance-of v4, p0, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 185
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 186
    .local v1, group:Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 187
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 188
    .local v0, child:Landroid/preference/Preference;
    invoke-static {v0, p1}, Lcom/android/camera/widget/ResolutionView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0           #child:Landroid/preference/Preference;
    .end local v1           #group:Landroid/preference/PreferenceGroup;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    return-void
.end method

.method private inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "resource"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 248
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 251
    check-cast v1, Landroid/view/ViewGroup;

    .line 252
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 253
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/widget/ResolutionView;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 252
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 256
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .parameter "screen"

    .prologue
    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 200
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/camera/widget/ResolutionView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const-string v5, "pref_set_resolution"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 204
    .local v2, l_pref:Landroid/preference/ListPreference;
    const-string v5, "pref_fast_fps"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 205
    .local v0, c_pref:Landroid/preference/CheckBoxPreference;
    new-instance v5, Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    iget-object v6, p0, Lcom/android/camera/widget/ResolutionView;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v2, v0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;-><init>(Lcom/android/camera/widget/ResolutionView;Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V

    iput-object v5, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    .line 206
    iget-object v5, p0, Lcom/android/camera/widget/ResolutionView;->mMainList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v5, p0, Lcom/android/camera/widget/ResolutionView;->mMainList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    iget-object v5, p0, Lcom/android/camera/widget/ResolutionView;->mMainList:Landroid/widget/ListView;

    new-instance v6, Lcom/android/camera/widget/ResolutionView$1;

    invoke-direct {v6, p0}, Lcom/android/camera/widget/ResolutionView$1;-><init>(Lcom/android/camera/widget/ResolutionView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    return-void
.end method

.method private setSubPanelVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 168
    return-void
.end method

.method private updateCheckBoxPreference(Landroid/preference/Preference;Z)V
    .locals 2
    .parameter "prefence"
    .parameter "checked"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;->onCheckBoxPreferenceUpdated(Landroid/preference/Preference;Z)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "ResolutionView"

    const-string v1, "updateCheckBoxPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateListPreference(Landroid/preference/Preference;I)V
    .locals 2
    .parameter "prefence"
    .parameter "index"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;->onListPreferenceUpdated(Landroid/preference/Preference;I)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "ResolutionView"

    const-string v1, "updateListPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "prefence"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;->onPreferenceUpdated(Landroid/preference/Preference;)V

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v0, "ResolutionView"

    const-string v1, "updateCheckBoxPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/android/camera/widget/ResolutionView;->m_MenuHeight:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/widget/ResolutionView;->mIsVisible:Z

    return v0
.end method

.method public notifyMainLayoutChanged()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->notifyDataSetChanged()V

    .line 173
    :cond_0
    return-void
.end method

.method public releaseOnScreenSettings()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainMenu:Landroid/widget/LinearLayout;

    .line 101
    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainList:Landroid/widget/ListView;

    .line 103
    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

    .line 105
    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 106
    iput-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    return-void
.end method

.method public setOnPreferenceUpdatedListener(Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/widget/ResolutionView;->mPreferenceListener:Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;

    .line 117
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/camera/widget/ResolutionView;->mIsVisible:Z

    if-ne v0, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/widget/ResolutionView;->mIsVisible:Z

    .line 148
    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->notifyDataSetChanged()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView;->mMainList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    goto :goto_0

    .line 161
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/widget/ResolutionView;->setSubPanelVisible(Z)V

    goto :goto_0
.end method

.method public updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .parameter "screen"

    .prologue
    .line 225
    iget-object v5, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    if-nez v5, :cond_0

    .line 226
    const-string v5, "ResolutionView"

    const-string v6, "updatePreferenceScreen failed, mMainAdapter = null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 232
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/camera/widget/ResolutionView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    :cond_1
    const-string v5, "pref_set_resolution"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 235
    .local v2, l_pref:Landroid/preference/ListPreference;
    const-string v5, "pref_fast_fps"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 236
    .local v0, c_pref:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/camera/widget/ResolutionView;->mMainAdapter:Lcom/android/camera/widget/ResolutionView$MenuAdapter;

    invoke-virtual {v5, v2, v0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->updateAdapter(Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method
