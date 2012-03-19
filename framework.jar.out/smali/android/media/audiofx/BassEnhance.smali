.class public Landroid/media/audiofx/BassEnhance;
.super Landroid/media/audiofx/AudioEffect;
.source "BassEnhance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/BassEnhance$1;,
        Landroid/media/audiofx/BassEnhance$Settings;,
        Landroid/media/audiofx/BassEnhance$BaseParameterListener;,
        Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_BASS_ENHANCE:Ljava/util/UUID; = null

.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BassEnhance"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/BassEnhance$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "b3b43f60-a2f0-11e0-8b5a-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/BassEnhance;->EFFECT_TYPE_BASS_ENHANCE:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    sget-object v3, Landroid/media/audiofx/BassEnhance;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/BassEnhance;->EFFECT_TYPE_BASS_ENHANCE:Ljava/util/UUID;

    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 76
    iput-boolean v2, p0, Landroid/media/audiofx/BassEnhance;->mStrengthSupported:Z

    .line 81
    iput-object v5, p0, Landroid/media/audiofx/BassEnhance;->mParamListener:Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;

    .line 86
    iput-object v5, p0, Landroid/media/audiofx/BassEnhance;->mBaseParamListener:Landroid/media/audiofx/BassEnhance$BaseParameterListener;

    .line 91
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/BassEnhance;->mParamListenerLock:Ljava/lang/Object;

    .line 113
    new-array v0, v1, [I

    .line 114
    .local v0, value:[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/BassEnhance;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/BassEnhance;->checkStatus(I)V

    .line 115
    aget v3, v0, v2

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Landroid/media/audiofx/BassEnhance;->mStrengthSupported:Z

    .line 116
    return-void

    :cond_0
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/audiofx/BassEnhance;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/audiofx/BassEnhance;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/BassEnhance;)Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/audiofx/BassEnhance;->mParamListener:Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/BassEnhance$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 281
    new-instance v0, Landroid/media/audiofx/BassEnhance$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/BassEnhance$Settings;-><init>()V

    .line 282
    .local v0, settings:Landroid/media/audiofx/BassEnhance$Settings;
    new-array v1, v2, [S

    .line 283
    .local v1, value:[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/BassEnhance;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/BassEnhance;->checkStatus(I)V

    .line 284
    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/BassEnhance$Settings;->strength:S

    .line 285
    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 153
    new-array v0, v1, [S

    .line 154
    .local v0, value:[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/BassEnhance;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/BassEnhance;->checkStatus(I)V

    .line 155
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getStrengthSupported()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/media/audiofx/BassEnhance;->mStrengthSupported:Z

    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 213
    iget-object v1, p0, Landroid/media/audiofx/BassEnhance;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/BassEnhance;->mParamListener:Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 215
    iput-object p1, p0, Landroid/media/audiofx/BassEnhance;->mParamListener:Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;

    .line 216
    new-instance v0, Landroid/media/audiofx/BassEnhance$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/BassEnhance$BaseParameterListener;-><init>(Landroid/media/audiofx/BassEnhance;Landroid/media/audiofx/BassEnhance$1;)V

    iput-object v0, p0, Landroid/media/audiofx/BassEnhance;->mBaseParamListener:Landroid/media/audiofx/BassEnhance$BaseParameterListener;

    .line 217
    iget-object v0, p0, Landroid/media/audiofx/BassEnhance;->mBaseParamListener:Landroid/media/audiofx/BassEnhance$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 219
    :cond_0
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/BassEnhance$Settings;)V
    .locals 2
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/BassEnhance$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/BassEnhance;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassEnhance;->checkStatus(I)V

    .line 299
    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .parameter "strength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/BassEnhance;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/BassEnhance;->checkStatus(I)V

    .line 141
    return-void
.end method
