.class Landroid/media/AudioService$SoundPoolListenerThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolListenerThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 1
    .parameter

    .prologue
    .line 1464
    iput-object p1, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    .line 1465
    const-string v0, "SoundPoolListenerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1466
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1471
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1472
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    #setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$1602(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 1474
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1475
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    new-instance v2, Landroid/media/AudioService$SoundPoolCallback;

    iget-object v3, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/AudioService$SoundPoolCallback;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    #setter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;

    .line 1477
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v2, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1479
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolListenerThread;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1480
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1482
    return-void

    .line 1480
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
