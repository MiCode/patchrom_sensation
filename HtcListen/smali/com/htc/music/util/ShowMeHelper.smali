.class public Lcom/htc/music/util/ShowMeHelper;
.super Ljava/lang/Object;
.source "ShowMeHelper.java"


# static fields
.field protected static final APP:Ljava/lang/String; = "com.htc.music"

.field protected static final CREATE_PLAYLIST_TOPIC:Ljava/lang/String; = "topic_tag-music-create_playlist"

.field protected static final SET_RINGTONE_TOPIC:Ljava/lang/String; = "topic_tag-music-set_song_as_ringtone"

.field protected static final SHOW_ME_ACTION:Ljava/lang/String; = "com.htc.showme.LOG"

.field private static final TAG:Ljava/lang/String; = "[ShowMeHelper]"

.field protected static final TAG_ACTION_TOPIC:Ljava/lang/String; = "actionCoverage"

.field protected static final TAG_CALLING_APP:Ljava/lang/String; = "callingApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateCommonIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.showme.LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callingApp"

    const-string v2, "com.htc.music"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method public static notifyCreatePlaylist(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 26
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/ShowMeHelper;->generateCommonIntent()Landroid/content/Intent;

    move-result-object v1

    .line 27
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "actionCoverage"

    const-string v3, "topic_tag-music-create_playlist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    const-string v2, "[ShowMeHelper]"

    const-string v3, "Notify Music create playlist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[ShowMeHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static notifySetAsRingtone(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/ShowMeHelper;->generateCommonIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "actionCoverage"

    const-string v3, "topic_tag-music-set_song_as_ringtone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    const-string v2, "[ShowMeHelper]"

    const-string v3, "Notify Music set ringtone"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[ShowMeHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
