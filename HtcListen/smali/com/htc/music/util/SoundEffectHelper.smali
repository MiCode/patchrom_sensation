.class public Lcom/htc/music/util/SoundEffectHelper;
.super Ljava/lang/Object;
.source "SoundEffectHelper.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "HtcListen"

.field static final AP_TAG:Ljava/lang/String; = "active_ap=Music;"

.field static final AudioEffectParameter:Ljava/lang/String; = "dolby_srs_eq"

.field static final AudioParameterStartWith:Ljava/lang/String; = "active_ap=Music;dolby_srs_eq="

.field private static final BEATS_BT_NOT_CHECKED:I = 0x0

.field private static final BEATS_BT_NOT_SUPPORT:I = 0x2

.field private static final BEATS_BT_SUPPORT:I = 0x1

.field public static BEATS_Beats:I = 0x0

.field public static BEATS_Original:I = 0x0

.field private static final BEATS_SOUND_EFFECT:I = 0x2

.field public static BEATS_SRS:I = 0x0

.field public static Beats:I = 0x0

.field public static Dolby:I = 0x0

.field private static final EQSettingPreference:Ljava/lang/String; = "Equalizer"

.field private static final EQ_PARAMETERS_1:Ljava/lang/String; = "srsfx_sidechain="

.field private static final EQ_PARAMETERS_2:Ljava/lang/String; = ",geq10"

.field public static Equalizer:I = 0x0

.field public static final EqualizerStyle:[Ljava/lang/String; = null

.field public static EqualizerStylesFromDevice:[Ljava/lang/String; = null

.field private static final GENERAL_SOUND_EFFECT:I = 0x1

.field private static final LastAudioSetting:Ljava/lang/String; = "LastAudioSetting"

.field private static final LastEQPreferencekey:Ljava/lang/String; = "LastEQStyle"

.field private static final NOT_CHECKED_SOUND_EFFECT:I = 0x0

.field public static Original:I = 0x0

.field private static PopStyleIndex:I = 0x0

.field private static PopStyleStr:Ljava/lang/String; = null

.field public static final SOUNDEFFECT_STYLE_BEATS:Ljava/lang/String; = "Beats"

.field public static final SOUNDEFFECT_STYLE_DOLBY:Ljava/lang/String; = "Dolby"

.field public static final SOUNDEFFECT_STYLE_EQ:Ljava/lang/String; = "Equalizer"

.field public static final SOUNDEFFECT_STYLE_ORIGINAL:Ljava/lang/String; = "Original"

.field public static final SOUNDEFFECT_STYLE_SRS:Ljava/lang/String; = "SRS"

.field public static SRS:I = 0x0

.field private static final SRS_PARAMETERS_1:Ljava/lang/String; = "srsfx_sidechain="

.field private static final SRS_PARAMETERS_2:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

.field private static SoundBeatsEffectIcon:[I = null

.field private static SoundBeatsEffetcStyle:[Ljava/lang/String; = null

.field private static SoundEffectIcon:[I = null

.field private static SoundEffectIndicator:[I = null

.field private static SoundEffetcStyle:[Ljava/lang/String; = null

.field private static final SoundSettingPreference:Ljava/lang/String; = "SoundEffect"

.field private static final SoundSettingPreferenceKey:Ljava/lang/String; = "SoundEffectStyle"

.field private static final TAG:Ljava/lang/String; = "[SoundEffectHelper]"

.field private static final TempSoundSettingPreferenceKey:Ljava/lang/String; = "TempSoundEffectStyle"

.field static final TurnOffEnhancer:Ljava/lang/String; = "active_ap=Music;sound_effect_enable=off"

.field static final TurnOnEnhancer:Ljava/lang/String; = "active_ap=Music;sound_effect_enable=on"

.field private static mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mBeats:Landroid/media/audiofx/BassEnhance;

.field private static mBeatsBTStatus:I

.field private static mCurrentSessionID:I

.field private static mEqualizer:Landroid/media/audiofx/Equalizer;

.field private static mSRS:Landroid/media/audiofx/BassBoost;

.field private static mSoundEffectStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    .line 50
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Bass Booster"

    aput-object v1, v0, v3

    const-string v1, "Treble Booster"

    aput-object v1, v0, v4

    const-string v1, "Vocal Booster"

    aput-object v1, v0, v5

    const-string v1, "Blues"

    aput-object v1, v0, v6

    const-string v1, "Classical"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Piano"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Rock"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v3

    const-string v1, "Dolby"

    aput-object v1, v0, v4

    const-string v1, "SRS"

    aput-object v1, v0, v5

    const-string v1, "Equalizer"

    aput-object v1, v0, v6

    const-string v1, "Beats"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    .line 80
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    .line 87
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 88
    sput v4, Lcom/htc/music/util/SoundEffectHelper;->Dolby:I

    .line 89
    sput v5, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    .line 90
    sput v6, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    .line 91
    sput v7, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    .line 93
    const-string v0, "Pop"

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->PopStyleStr:Ljava/lang/String;

    .line 94
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->PopStyleIndex:I

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    .line 118
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->mBeatsBTStatus:I

    .line 122
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v3

    const-string v1, "SRS"

    aput-object v1, v0, v4

    const-string v1, "Beats"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    .line 127
    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    .line 133
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    .line 134
    sput v4, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    .line 135
    sput v5, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    .line 142
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDolbyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v3

    const-string v1, "SRS"

    aput-object v1, v0, v4

    const-string v1, "Equalizer"

    aput-object v1, v0, v5

    const-string v1, "Beats"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    .line 149
    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    .line 157
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/SoundEffectHelper;->Dolby:I

    .line 158
    sput v4, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    .line 159
    sput v5, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    .line 160
    sput v6, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    .line 484
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 638
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->mSoundEffectStatus:I

    return-void

    .line 72
    nop

    :array_0
    .array-data 0x4
        0xaat 0x7t 0x8t 0x2t
        0x97t 0x7t 0x8t 0x2t
        0xa7t 0x7t 0x8t 0x2t
        0x98t 0x7t 0x8t 0x2t
        0x27t 0x0t 0x2t 0x7ft
    .end array-data

    .line 80
    :array_1
    .array-data 0x4
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
    .end array-data

    .line 127
    :array_2
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
    .end array-data

    .line 149
    :array_3
    .array-data 0x4
        0xaat 0x7t 0x8t 0x2t
        0xa7t 0x7t 0x8t 0x2t
        0x98t 0x7t 0x8t 0x2t
        0x27t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsBeatsCanBeEnable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 734
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v0

    .line 736
    .local v0, bBeatsPlugged:Z
    if-eqz v0, :cond_0

    .line 737
    const/4 v1, 0x1

    .line 744
    .end local v0           #bBeatsPlugged:Z
    :cond_0
    return v1
.end method

.method public static IsSupportBeats(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 645
    const/4 v0, 0x0

    .line 647
    .local v0, beatsSupported:Z
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->mSoundEffectStatus:I

    if-nez v2, :cond_3

    .line 648
    const-string v2, "htchardware"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcHardwareManager;

    .line 649
    .local v1, hwService:Lcom/htc/service/HtcHardwareManager;
    if-eqz v1, :cond_2

    .line 650
    invoke-virtual {v1}, Lcom/htc/service/HtcHardwareManager;->isSupportBeats()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->mSoundEffectStatus:I

    .line 652
    const/4 v0, 0x1

    .line 657
    :goto_0
    const-string v2, "[SoundEffectHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsSupportBeats, hwService.isSupportBeats() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .end local v1           #hwService:Lcom/htc/service/HtcHardwareManager;
    :cond_0
    :goto_1
    return v0

    .line 655
    .restart local v1       #hwService:Lcom/htc/service/HtcHardwareManager;
    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/htc/music/util/SoundEffectHelper;->mSoundEffectStatus:I

    goto :goto_0

    .line 659
    :cond_2
    const-string v2, "[SoundEffectHelper]"

    const-string v3, "HtcHardwareManager is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 662
    .end local v1           #hwService:Lcom/htc/service/HtcHardwareManager;
    :cond_3
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->mSoundEffectStatus:I

    if-ne v2, v3, :cond_0

    .line 663
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static IsSupportBeatsBT(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 670
    const/4 v1, 0x0

    .line 672
    .local v1, isBeatsBTSupport:Z
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->mBeatsBTStatus:I

    if-nez v2, :cond_3

    .line 673
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 674
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 675
    invoke-static {}, Landroid/media/AudioManager;->isSupportBeatsBT()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->mBeatsBTStatus:I

    .line 677
    const/4 v1, 0x1

    .line 682
    :goto_0
    const-string v2, "[SoundEffectHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsSupportBeatsBT,  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    :goto_1
    return v1

    .line 680
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_1
    const/4 v2, 0x2

    sput v2, Lcom/htc/music/util/SoundEffectHelper;->mBeatsBTStatus:I

    goto :goto_0

    .line 685
    :cond_2
    const-string v2, "[SoundEffectHelper]"

    const-string v3, "IsSupportBeatsBT(), HtcHardwareManager is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 688
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_3
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->mBeatsBTStatus:I

    if-ne v2, v3, :cond_0

    .line 689
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static disableBeats()V
    .locals 2

    .prologue
    .line 466
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 468
    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassEnhance;->setEnabled(Z)I

    .line 470
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableBeats(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    invoke-virtual {v0}, Landroid/media/audiofx/BassEnhance;->release()V

    .line 472
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableBeats(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 479
    return-void

    .line 477
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static disableEqualizer()V
    .locals 2

    .prologue
    .line 450
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 452
    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 454
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableEqualizer(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    .line 456
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableEqualizer(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 463
    return-void

    .line 461
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static disableSRS()V
    .locals 2

    .prologue
    .line 434
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 436
    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 438
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableSRS(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 440
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableSRS(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 447
    return-void

    .line 445
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static disableSoundEffect(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 425
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "restoreSoundEffect to original"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    .line 427
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    .line 428
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats()V

    .line 431
    :cond_0
    return-void
.end method

.method public static enableCurrentSoundEffect(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "audioSessionID"

    .prologue
    .line 395
    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyCurrentSoundEffect, context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", audioSessionID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getTempAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, style:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 400
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 422
    return-void

    .line 403
    :cond_0
    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCurrentSoundEffect, temp style is not null~ style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBeatsLastState(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 792
    const-string v3, "SoundEffect"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 794
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    .line 795
    .local v0, bIsBeatsCanBeEnable:Z
    const/4 v2, 0x0

    .line 796
    .local v2, szStyle:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 797
    const-string v3, "LastAudioSetting"

    const-string v4, "Beats"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 802
    :goto_0
    const-string v3, "Beats"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 800
    :cond_0
    const-string v3, "LastAudioSetting"

    const-string v4, "Original"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getBeatsLastState(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 6
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 768
    if-nez p0, :cond_0

    .line 769
    const-string v3, "[SoundEffectHelper]"

    const-string v4, "getBeatsLastState, mService is null. return false"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :goto_0
    return v2

    .line 773
    :cond_0
    const/4 v1, 0x0

    .line 775
    .local v1, szStyle:Ljava/lang/String;
    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 781
    if-eqz v1, :cond_1

    .line 782
    const-string v2, "Beats"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBeatsLastState, RemoteException, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 785
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "[SoundEffectHelper]"

    const-string v4, "getBeatsLastState, LastAudioEffect is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I
    .locals 6
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 846
    if-nez p1, :cond_1

    .line 847
    const-string v3, "[SoundEffectHelper]"

    const-string v4, "getCurrentAudioEffectStyleIndex, mService is null. return 0"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_0
    :goto_0
    return v1

    .line 851
    :cond_1
    const/4 v2, 0x0

    .line 854
    .local v2, style:Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lcom/htc/music/IMediaPlaybackService;->getAudioEffect()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 859
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 860
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 861
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 860
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 855
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 856
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentAudioEffectStyleIndex, RemoteException, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 866
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    :cond_2
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0

    .line 869
    .end local v1           #i:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 870
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 875
    :cond_4
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    goto :goto_0
.end method

.method public static getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 247
    const-string v3, "SoundEffect"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 248
    .local v1, preferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 250
    .local v2, style:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 251
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    .line 252
    .local v0, bIsBeatsCanBeEnable:Z
    if-eqz v0, :cond_4

    .line 254
    const-string v3, "SoundEffectStyle"

    const-string v4, "Beats"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    if-eqz v2, :cond_0

    const-string v3, "SRS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const-string v2, "Original"

    .line 290
    .end local v0           #bIsBeatsCanBeEnable:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v2, "Original"

    .line 292
    .end local v2           #style:Ljava/lang/String;
    :cond_2
    return-object v2

    .line 264
    .restart local v0       #bIsBeatsCanBeEnable:Z
    .restart local v2       #style:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_0

    const-string v3, "Original"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const-string v2, "SRS"

    goto :goto_0

    .line 272
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 274
    const-string v2, "SRS"

    goto :goto_0

    .line 276
    :cond_5
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 278
    const-string v2, "Original"

    goto :goto_0

    .line 282
    :cond_6
    const-string v2, "SRS"

    goto :goto_0

    .line 287
    .end local v0           #bIsBeatsCanBeEnable:Z
    :cond_7
    const-string v3, "SoundEffectStyle"

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentAudioStyleIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 223
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, style:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 227
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 241
    :goto_1
    return v2

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_1

    .line 235
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 236
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 237
    goto :goto_1

    .line 235
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 241
    :cond_4
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    goto :goto_1
.end method

.method public static getCurrentEqualizerStyleIndex(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 342
    const-string v3, "Equalizer"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 343
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 344
    const-string v3, "LastEQStyle"

    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    sget v5, Lcom/htc/music/util/SoundEffectHelper;->PopStyleIndex:I

    aget-object v4, v4, v5

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, style:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 346
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    .end local v0           #i:I
    .end local v2           #style:Ljava/lang/String;
    :goto_1
    return v0

    .line 345
    .restart local v0       #i:I
    .restart local v2       #style:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "style is EQ, but we can\'t find match style? style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v0           #i:I
    .end local v2           #style:Ljava/lang/String;
    :goto_2
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->PopStyleIndex:I

    goto :goto_1

    .line 354
    :cond_2
    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentEqualizerStyleIndex, One is null, preferences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EqualizerStylesFromDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getDefaultEffectStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefaultEffectType()I
    .locals 2

    .prologue
    .line 177
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 179
    .local v0, defaultEffectType:I
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSrsAsDefaultSoundEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    .line 182
    :cond_0
    return v0
.end method

.method public static getHWSoundEffectSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    const-string v1, "dolby_srs_eq"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, style:Ljava/lang/String;
    const-string v1, "active_ap=Music;dolby_srs_eq="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const-string v1, "active_ap=Music;dolby_srs_eq="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_0
    return-object v0
.end method

.method public static getLastAudioEffect(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 749
    const-string v1, "SoundEffect"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 750
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    const-string v1, "LastAudioSetting"

    const-string v2, "Beats"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 754
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "LastAudioSetting"

    const-string v2, "Original"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSoundEffectIconResourceId(ILandroid/content/Context;)I
    .locals 2
    .parameter "soundStyle"
    .parameter "context"

    .prologue
    .line 378
    move v0, p0

    .line 379
    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 381
    :cond_0
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 383
    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    aget v1, v1, v0

    .line 387
    :goto_0
    return v1

    .line 386
    :cond_2
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 387
    :cond_3
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public static getSoundEffectIndicatorResourceId(ILandroid/content/Context;)I
    .locals 2
    .parameter "soundStyle"
    .parameter "context"

    .prologue
    .line 364
    move v0, p0

    .line 365
    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 366
    :cond_0
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    const/4 v1, 0x0

    .line 373
    :goto_0
    return v1

    .line 372
    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 373
    :cond_2
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIndicator:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public static getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "styleIndex"

    .prologue
    .line 894
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 898
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public static getSoundEffectStyleSize(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, size:I
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 884
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v0, v1

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 888
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v1

    goto :goto_0
.end method

.method public static getTempAudioStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 913
    const-string v2, "SoundEffect"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 914
    .local v0, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 915
    .local v1, style:Ljava/lang/String;
    const-string v2, "TempSoundEffectStyle"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 916
    return-object v1
.end method

.method public static initEqualizerStlyes(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "audioSessionId"

    .prologue
    .line 595
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 596
    const-string v4, "[SoundEffectHelper]"

    const-string v5, "EqualizerStylesFromDevice array is ready. No need to initial again."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :goto_0
    return-void

    .line 600
    :cond_0
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 601
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "srsfx_sidechain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",geq10"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 602
    new-instance v2, Landroid/media/audiofx/Equalizer;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p1}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    .line 603
    .local v2, equalizer:Landroid/media/audiofx/Equalizer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "srsfx_sidechain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    .line 606
    const/4 v1, 0x0

    .line 608
    .local v1, eqStyleTemp:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 609
    int-to-short v4, v3

    invoke-virtual {v2, v4}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v1

    .line 611
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aput-object v1, v4, v3

    .line 612
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->PopStyleStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 613
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->PopStyleIndex:I

    .line 615
    :cond_1
    const-string v4, "[SoundEffectHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEqualizerStlyes, mEqualizerStyles["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 618
    :cond_2
    invoke-virtual {v2}, Landroid/media/audiofx/Equalizer;->release()V

    goto/16 :goto_0
.end method

.method public static isBeatsBTWork(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 721
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeatsBT(Landroid/content/Context;)Z

    move-result v1

    .line 722
    .local v1, isSupportBeatsBT:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadsetBT(Landroid/content/Context;)Z

    move-result v0

    .line 723
    .local v0, isBeatsBTPlugged:Z
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v2

    .line 724
    .local v2, isWiredHeadsetPlugged:Z
    if-eqz v1, :cond_0

    .line 725
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 726
    const/4 v3, 0x1

    .line 730
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isBeatsEffectOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 630
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beats"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBeatsEffectOn(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 625
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    invoke-static {p0, p1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "setting"
    .parameter "audioSessionID"

    .prologue
    const/4 v8, 0x1

    .line 491
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 493
    :try_start_0
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", audioSessionID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, Original mCurrentSessionID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v4, 0x0

    .line 497
    .local v4, sessionIdChanged:Z
    sget v5, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    if-lez v5, :cond_0

    sget v5, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    if-eq v5, p2, :cond_1

    .line 498
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    .line 499
    sput p2, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    .line 500
    const/4 v4, 0x1

    .line 503
    :cond_1
    const-string v5, "Original"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 504
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_2
    :goto_0
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    .end local v4           #sessionIdChanged:Z
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 581
    return-void

    .line 506
    .restart local v4       #sessionIdChanged:Z
    :cond_3
    :try_start_1
    const-string v5, "SRS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 507
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 508
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats()V

    .line 514
    :goto_2
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v5}, Landroid/media/audiofx/BassBoost;->getEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-ne v8, v5, :cond_5

    if-nez v4, :cond_5

    .line 579
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    .line 511
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 575
    .end local v4           #sessionIdChanged:Z
    :catch_0
    move-exception v1

    .line 576
    .local v1, ex:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, IllegalStateException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    .line 518
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    .restart local v4       #sessionIdChanged:Z
    :cond_5
    :try_start_4
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 519
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 520
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-nez v5, :cond_6

    .line 521
    new-instance v5, Landroid/media/audiofx/BassBoost;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    .line 522
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 523
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 579
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v4           #sessionIdChanged:Z
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 525
    .restart local v4       #sessionIdChanged:Z
    :cond_7
    :try_start_5
    const-string v5, "Beats"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 526
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 527
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    .line 528
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    .line 529
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    if-eqz v5, :cond_8

    if-eqz v4, :cond_9

    .line 530
    :cond_8
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, new mBeats, audioSessionID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v5, Landroid/media/audiofx/BassEnhance;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/BassEnhance;-><init>(II)V

    sput-object v5, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    .line 533
    :cond_9
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mBeats:Landroid/media/audiofx/BassEnhance;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/BassEnhance;->setEnabled(Z)I

    goto/16 :goto_0

    .line 536
    :cond_a
    const-string v5, "[SoundEffectHelper]"

    const-string v6, "setAudioEffect, device does not support Beats, can\'t set SoundEffect as Beats!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    :cond_b
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    .line 542
    const/4 v3, -0x1

    .line 544
    .local v3, selectedPos:S
    invoke-static {p0, p2}, Lcom/htc/music/util/SoundEffectHelper;->initEqualizerStlyes(Landroid/content/Context;I)V

    .line 546
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_c

    .line 547
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 548
    int-to-short v3, v2

    .line 553
    :cond_c
    if-ltz v3, :cond_2

    .line 554
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 555
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",geq10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 556
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-nez v5, :cond_d

    .line 557
    new-instance v5, Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    sput-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 558
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 560
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getCurrentPreset()S
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v5

    if-eq v5, v3, :cond_f

    .line 562
    :try_start_6
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5, v3}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    .line 563
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 565
    :catch_1
    move-exception v1

    .line 566
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_7
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, mEqualizer.hasControl(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v7}, Landroid/media/audiofx/Equalizer;->hasControl()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", UnsupportedOperationException ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 546
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 570
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_f
    const-string v5, "[SoundEffectHelper]"

    const-string v6, "setAudioEffect, the same Equalizer, no need to reset."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method public static setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V
    .locals 4
    .parameter "context"
    .parameter "service"
    .parameter "index"

    .prologue
    .line 806
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    if-gez p2, :cond_1

    .line 808
    const/4 p2, 0x0

    .line 812
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 815
    :try_start_0
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_1
    return-void

    .line 809
    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, p2, :cond_0

    .line 810
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 821
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "[SoundEffectHelper]"

    const-string v2, "setAudioEffectStyleByIndex, mService is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 825
    :cond_3
    if-gez p2, :cond_5

    .line 826
    const/4 p2, 0x0

    .line 830
    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    .line 833
    :try_start_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 834
    :catch_1
    move-exception v0

    .line 835
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 827
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, p2, :cond_4

    .line 828
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    goto :goto_2

    .line 839
    :cond_6
    const-string v1, "[SoundEffectHelper]"

    const-string v2, "setAudioEffectStyleByIndex, mService is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "setting"
    .parameter "context"

    .prologue
    .line 189
    const-string v2, "[SoundEffectHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set audio parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SoundEffectStyle"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setAudioStyleByIndex(ILandroid/content/Context;)V
    .locals 1
    .parameter "index"
    .parameter "context"

    .prologue
    .line 201
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    if-gez p0, :cond_1

    .line 203
    const/4 p0, 0x0

    .line 207
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 217
    :goto_1
    return-void

    .line 204
    :cond_1
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    if-gt v0, p0, :cond_0

    .line 205
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    goto :goto_0

    .line 210
    :cond_2
    if-gez p0, :cond_4

    .line 211
    const/4 p0, 0x0

    .line 215
    :cond_3
    :goto_2
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 212
    :cond_4
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    if-gt v0, p0, :cond_3

    .line 213
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    goto :goto_2
.end method

.method public static setBeatsNotificationBar(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "bEffectOn"
    .parameter "bAppPlay"

    .prologue
    .line 700
    const-string v1, "htchardware"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcHardwareManager;

    .line 701
    .local v0, hwService:Lcom/htc/service/HtcHardwareManager;
    if-eqz v0, :cond_0

    .line 702
    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeatsNotificationBar, bEffectOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bAppPlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v1, "HtcListen"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/htc/service/HtcHardwareManager;->setBeatsState(ZZLjava/lang/String;I)V

    .line 705
    :cond_0
    return-void
.end method

.method public static setBeatsNotificationBar(Landroid/content/Context;ZZI)V
    .locals 4
    .parameter "context"
    .parameter "bEffectOn"
    .parameter "bAppPlay"
    .parameter "headsetMode"

    .prologue
    .line 713
    const-string v1, "htchardware"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcHardwareManager;

    .line 714
    .local v0, hwService:Lcom/htc/service/HtcHardwareManager;
    if-eqz v0, :cond_0

    .line 715
    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeatsNotificationBar, bEffectOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bAppPlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", headsetMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v1, "HtcListen"

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/service/HtcHardwareManager;->setBeatsState(ZZLjava/lang/String;I)V

    .line 718
    :cond_0
    return-void
.end method

.method public static setEqualizerStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .parameter "setting"
    .parameter "context"

    .prologue
    .line 297
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v4, "[SoundEffectHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEqualizerStyle, setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    const/4 v2, 0x1

    .line 307
    .local v2, isEQ:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 308
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 309
    const/4 v2, 0x0

    .line 314
    :cond_2
    if-nez v2, :cond_4

    .line 315
    const-string v4, "[SoundEffectHelper]"

    const-string v5, "setEqualizerStyle, not EQ setting."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    :cond_4
    const-string v4, "Equalizer"

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 320
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 321
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "LastEQStyle"

    invoke-interface {v0, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setLastAudioEffect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "szSetting"

    .prologue
    .line 760
    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 761
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 762
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LastAudioSetting"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 763
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 764
    return-void
.end method

.method public static setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "setting"
    .parameter "context"

    .prologue
    .line 903
    const-string v2, "[SoundEffectHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTempAudioStyle, set audio setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 906
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 907
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "TempSoundEffectStyle"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 909
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 910
    return-void
.end method
