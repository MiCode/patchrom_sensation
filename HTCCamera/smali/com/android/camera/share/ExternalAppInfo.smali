.class public final Lcom/android/camera/share/ExternalAppInfo;
.super Ljava/lang/Object;
.source "ExternalAppInfo.java"


# instance fields
.field public final action:Ljava/lang/String;

.field public final isFake:Z

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "resolveInfo"
    .parameter "action"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/share/ExternalAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)V
    .locals 0
    .parameter "resolveInfo"
    .parameter "action"
    .parameter "isFake"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    .line 27
    iput-boolean p3, p0, Lcom/android/camera/share/ExternalAppInfo;->isFake:Z

    .line 28
    iput-object p1, p0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 29
    return-void
.end method

.method public static fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/share/ExternalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/share/ExternalAppInfo;>;"
    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 40
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 42
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 43
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v4, Lcom/android/camera/share/ExternalAppInfo;

    invoke-direct {v4, v3, p1}, Lcom/android/camera/share/ExternalAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method
