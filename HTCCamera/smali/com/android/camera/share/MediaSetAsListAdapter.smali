.class public Lcom/android/camera/share/MediaSetAsListAdapter;
.super Lcom/android/camera/share/MediaShareListAdapterBase;
.source "MediaSetAsListAdapter.java"


# static fields
.field public static final ACTION_SETAS_CONTACT:Ljava/lang/String; = "com.android.contacts.action.ATTACH_IMAGE"

.field public static final ACTION_SETAS_LAPUTA:Ljava/lang/String; = "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"


# instance fields
.field private final m_MediaInfo:Lcom/android/camera/MediaInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/MediaInfo;)V
    .locals 0
    .parameter "context"
    .parameter "mediaInfo"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/share/MediaShareListAdapterBase;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/android/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    .line 34
    invoke-direct {p0}, Lcom/android/camera/share/MediaSetAsListAdapter;->initializeAppInfos()V

    .line 35
    return-void
.end method

.method private initializeAppInfos()V
    .locals 6

    .prologue
    const/high16 v5, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/share/MediaSetAsListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/share/ExternalAppInfo;>;"
    invoke-virtual {p0}, Lcom/android/camera/share/MediaSetAsListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 75
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.htccontacts"

    const-string v4, "com.android.htccontacts.AttachImage"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v3, p0, Lcom/android/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const-string v4, "com.android.contacts.action.ATTACH_IMAGE"

    invoke-static {v3, v4}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const-string v4, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-static {v3, v4}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v3, v3, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    const-string v4, "image/jpeg"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v3, "mimeType"

    const-string v4, "image/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.Wallpaper"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public final createIntent(I)Landroid/content/Intent;
    .locals 7
    .parameter "position"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/camera/share/MediaSetAsListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/share/ExternalAppInfo;

    .line 44
    .local v1, appInfo:Lcom/android/camera/share/ExternalAppInfo;
    iget-object v4, v1, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x300

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    iget-object v4, p0, Lcom/android/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v4, v4, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v5, v5, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/android/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v5, v5, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-string v4, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "FILE_URI"

    iget-object v5, p0, Lcom/android/camera/share/MediaSetAsListAdapter;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v5, v5, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_0
    return-object v3
.end method
