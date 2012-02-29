.class public Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "HtcVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;,
        Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private LOG_FLAG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDelayUpdateHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamVolume:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private resolver:Landroid/content/ContentResolver;

.field private sStreamType:I

.field final synthetic this$0:Lcom/htc/preference/HtcVolumePreference;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 417
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;-><init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 418
    return-void
.end method

.method public constructor <init>(Lcom/htc/preference/HtcVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v2, -0x1

    .line 420
    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    .line 265
    const-string v1, "SeekBarVolumizer"

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    .line 268
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 276
    iput v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 278
    iput v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 362
    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Lcom/htc/preference/HtcVolumePreference$1;)V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;

    invoke-direct {v1, p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$1;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mDelayUpdateHandler:Landroid/os/Handler;

    .line 399
    new-instance v1, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$2;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 421
    iput-object p2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 422
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 423
    iput p4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    .line 424
    iput-object p3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 426
    invoke-direct {p0, p3, p5}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 429
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->resolver:Landroid/content/ContentResolver;

    .line 435
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 439
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 349
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to abandon audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    .line 358
    :cond_1
    :goto_1
    return-void

    .line 351
    :cond_2
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "abandon audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_3
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mAudioMgr or mAudioFocusListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mDelayUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    iput p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private getVolumeProgressDrawable(Landroid/content/Context;Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "seekBar"

    .prologue
    .line 443
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 444
    .local v1, layer:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_progress_empty"

    const v5, 0x20804c0

    invoke-static {p1, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 445
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_progress_full"

    const v5, 0x20804c1

    invoke-static {p1, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 446
    .local v2, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v3, 0x102

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 447
    const v3, 0x102000d

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 448
    return-object v1
.end method

.method private getVolumeThumb(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 7
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 457
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->getVolumeProgressDrawable(Landroid/content/Context;Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->getVolumeThumb(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 462
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    .line 464
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v0, v6, :cond_2

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_last_audible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 471
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 473
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 477
    if-nez p2, :cond_1

    .line 478
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v0, v4, :cond_3

    .line 479
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 488
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-static {v0, p2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 498
    return-void

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_0

    .line 480
    :cond_3
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v0, v6, :cond_4

    .line 481
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_1

    .line 483
    :cond_4
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;Lcom/htc/preference/HtcVolumePreference$1;)V

    iput-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    .line 333
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 335
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to request audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iput-object v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioFocusListener:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$AudioFocusChangeListener;

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "obtain audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_3
    iget-boolean v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_FLAG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mAudioMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sample()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcVolumePreference;->onSampleStarting(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V

    .line 590
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 591
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->requestAudioFocus()V

    .line 612
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 614
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->updateSlientSetting(I)V

    .line 616
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sample()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 620
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 621
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 624
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 625
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 626
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sample()V

    .line 627
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 628
    iput v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 635
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 631
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 632
    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 633
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 534
    invoke-static {}, Lcom/htc/preference/HtcVolumePreference;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    if-nez p3, :cond_1

    .line 558
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->updateSlientSetting(I)V

    .line 548
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->requestAudioFocus()V

    .line 551
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sample()V

    .line 555
    :cond_2
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/htc/preference/HtcVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    const/4 v1, -0x1

    .line 645
    iget v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    if-eq v0, v1, :cond_0

    .line 646
    iget v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 647
    iget v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 648
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 653
    iput v1, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    .line 655
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/htc/preference/HtcVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 637
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 638
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    .line 639
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    .line 641
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 573
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sample()V

    .line 581
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 563
    invoke-static {}, Lcom/htc/preference/HtcVolumePreference;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSetVolume progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 568
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 516
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    #getter for: Lcom/htc/preference/HtcVolumePreference;->mVoiceCapable:Z
    invoke-static {v0}, Lcom/htc/preference/HtcVolumePreference;->access$1100(Lcom/htc/preference/HtcVolumePreference;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 521
    :cond_0
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 530
    :cond_2
    :goto_0
    return-void

    .line 525
    :cond_3
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-eq v0, v2, :cond_2

    .line 526
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 584
    iget v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    iget v2, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 586
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->abandonAudioFocus()V

    .line 504
    invoke-virtual {p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 505
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 506
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 510
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 512
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 597
    :cond_0
    return-void
.end method

.method public updateSlientSetting(I)V
    .locals 8
    .parameter "VolumeSetting"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 659
    const/4 v0, 0x3

    .line 662
    .local v0, RINGER_MODE_OUTDOOR:I
    invoke-static {}, Lcom/htc/preference/HtcVolumePreference;->access$1000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSlientSetting VolumeSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sStreamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    if-ne v3, v7, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->this$0:Lcom/htc/preference/HtcVolumePreference;

    #getter for: Lcom/htc/preference/HtcVolumePreference;->mVoiceCapable:Z
    invoke-static {v3}, Lcom/htc/preference/HtcVolumePreference;->access$1100(Lcom/htc/preference/HtcVolumePreference;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 731
    :cond_2
    :goto_0
    return-void

    .line 668
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 671
    .local v1, currentSlientSetting:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 692
    :pswitch_0
    if-lez p1, :cond_5

    .line 697
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 673
    :pswitch_1
    if-nez p1, :cond_4

    .line 678
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 682
    :cond_4
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 686
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 700
    :cond_5
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    .line 701
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 706
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 710
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :pswitch_2
    if-lez p1, :cond_2

    .line 715
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 721
    :pswitch_3
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->sStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 724
    iget-object v3, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
