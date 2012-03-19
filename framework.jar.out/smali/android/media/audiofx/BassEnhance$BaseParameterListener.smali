.class Landroid/media/audiofx/BassEnhance$BaseParameterListener;
.super Ljava/lang/Object;
.source "BassEnhance.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/BassEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/BassEnhance;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/BassEnhance;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Landroid/media/audiofx/BassEnhance$BaseParameterListener;->this$0:Landroid/media/audiofx/BassEnhance;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/BassEnhance;Landroid/media/audiofx/BassEnhance$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/media/audiofx/BassEnhance$BaseParameterListener;-><init>(Landroid/media/audiofx/BassEnhance;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 7
    .parameter "effect"
    .parameter "status"
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, l:Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/BassEnhance$BaseParameterListener;->this$0:Landroid/media/audiofx/BassEnhance;

    #getter for: Landroid/media/audiofx/BassEnhance;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/audiofx/BassEnhance;->access$000(Landroid/media/audiofx/BassEnhance;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 187
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/BassEnhance$BaseParameterListener;->this$0:Landroid/media/audiofx/BassEnhance;

    #getter for: Landroid/media/audiofx/BassEnhance;->mParamListener:Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/BassEnhance;->access$100(Landroid/media/audiofx/BassEnhance;)Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Landroid/media/audiofx/BassEnhance$BaseParameterListener;->this$0:Landroid/media/audiofx/BassEnhance;

    #getter for: Landroid/media/audiofx/BassEnhance;->mParamListener:Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/BassEnhance;->access$100(Landroid/media/audiofx/BassEnhance;)Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;

    move-result-object v0

    .line 190
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-eqz v0, :cond_3

    .line 192
    const/4 v1, -0x1

    .line 193
    .local v1, p:I
    const/4 v2, -0x1

    .line 195
    .local v2, v:S
    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 196
    iget-object v3, p0, Landroid/media/audiofx/BassEnhance$BaseParameterListener;->this$0:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v3, p3, v6}, Landroid/media/audiofx/BassEnhance;->byteArrayToInt([BI)I

    move-result v1

    .line 198
    :cond_1
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 199
    iget-object v3, p0, Landroid/media/audiofx/BassEnhance$BaseParameterListener;->this$0:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v3, p4, v6}, Landroid/media/audiofx/BassEnhance;->byteArrayToShort([BI)S

    move-result v2

    .line 201
    :cond_2
    if-eq v1, v5, :cond_3

    if-eq v2, v5, :cond_3

    .line 202
    iget-object v3, p0, Landroid/media/audiofx/BassEnhance$BaseParameterListener;->this$0:Landroid/media/audiofx/BassEnhance;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/BassEnhance$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/BassEnhance;IIS)V

    .line 205
    .end local v1           #p:I
    .end local v2           #v:S
    :cond_3
    return-void

    .line 190
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
