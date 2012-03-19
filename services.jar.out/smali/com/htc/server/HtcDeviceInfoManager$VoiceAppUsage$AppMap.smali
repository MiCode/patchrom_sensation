.class Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppMap"
.end annotation


# instance fields
.field private hash_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->hash_map:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/HtcDeviceInfoManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 3
    .parameter "pid"
    .parameter "type"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->hash_map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 294
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 296
    .restart local v0       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->hash_map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->hash_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 321
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->hash_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(II)Z
    .locals 5
    .parameter "pid"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 303
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->hash_map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 316
    :cond_0
    :goto_0
    return v2

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->hash_map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 308
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    .local v0, isExistent:Z
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage$AppMap;->hash_map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v2, v0

    .line 313
    goto :goto_0
.end method
