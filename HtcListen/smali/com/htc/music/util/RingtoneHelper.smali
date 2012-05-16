.class public Lcom/htc/music/util/RingtoneHelper;
.super Ljava/lang/Object;
.source "RingtoneHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[RingtoneHelper]"


# instance fields
.field private mAudioId:I

.field private mAudioPath:Ljava/lang/String;

.field private mAudioType:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    .line 26
    iput-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public activityPopup(Z)V
    .locals 0
    .parameter "Popup"

    .prologue
    .line 278
    return-void
.end method

.method public canUseAsRingtone(Z)Z
    .locals 7
    .parameter "onErrorToast"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/htc/music/util/RingtoneHelper;->checkRingtoneSizeLimit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    const v4, 0x7f0700a3

    invoke-virtual {p0, v4}, Lcom/htc/music/util/RingtoneHelper;->showToast(I)V

    .line 114
    :cond_0
    :goto_0
    return v3

    .line 82
    :cond_1
    const/4 v2, 0x0

    .line 83
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    iget-object v5, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    invoke-static {v5, v6}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 87
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 102
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    iget v5, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    if-ne v5, v4, :cond_7

    :cond_4
    move v0, v4

    .line 106
    .local v0, canUseAsRingtone:Z
    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 107
    if-eqz v0, :cond_5

    .line 108
    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    .line 111
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 112
    const v3, 0x7f0700a4

    invoke-virtual {p0, v3}, Lcom/htc/music/util/RingtoneHelper;->showToast(I)V

    :cond_6
    move v3, v0

    .line 114
    goto :goto_0

    .end local v0           #canUseAsRingtone:Z
    :cond_7
    move v0, v3

    .line 102
    goto :goto_1

    .restart local v0       #canUseAsRingtone:Z
    :cond_8
    move v0, v3

    .line 108
    goto :goto_2
.end method

.method public checkRingtoneSizeLimit()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, overSizeLimit:Z
    iget-object v4, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v4

    mul-int/lit16 v0, v4, 0x400

    .line 61
    .local v0, maxRingtoneSize:I
    if-lez v0, :cond_0

    .line 62
    iget-object v4, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    iget-object v4, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/MusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    if-le v4, v0, :cond_1

    move v1, v2

    .line 69
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    invoke-static {v4, v5}, Lcom/htc/music/util/MusicUtils;->getTrackSize(Landroid/content/Context;I)I

    move-result v4

    if-le v4, v0, :cond_3

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    .line 69
    goto :goto_1
.end method

.method public createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;
    .locals 3
    .parameter "items"
    .parameter "contactResultCode"

    .prologue
    .line 176
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/util/RingtoneHelper$1;

    invoke-direct {v2, p0, p2}, Lcom/htc/music/util/RingtoneHelper$1;-><init>(Lcom/htc/music/util/RingtoneHelper;I)V

    invoke-virtual {v1, p1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 197
    .local v0, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    return-object v0
.end method

.method public getAudioId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    return v0
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    return v0
.end method

.method public hadnleContactRingtoneResult(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/util/RingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    .line 234
    return-void
.end method

.method public hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "[RingtoneHelper]"

    const-string v1, "hadnleContactRingtoneResult++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/htc/music/util/MusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V

    .line 247
    :goto_0
    const-string v0, "[RingtoneHelper]"

    const-string v1, "hadnleContactRingtoneResult--"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    .line 251
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/htc/music/util/MusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public setAsContactRingtone(I)V
    .locals 3
    .parameter "contactResultCode"

    .prologue
    const/4 v2, 0x1

    .line 141
    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    if-gez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/util/RingtoneHelper;->canUseAsRingtone(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0, v2}, Lcom/htc/music/util/RingtoneHelper;->activityPopup(Z)V

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "filter_account_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1, p1}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public setAsNotificationRingtone()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 159
    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    if-gez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/music/util/RingtoneHelper;->canUseAsRingtone(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    if-ne v0, v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->setNotificationRingtone(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method public setAsPhoneRingtone()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 125
    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    if-gez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/music/util/RingtoneHelper;->canUseAsRingtone(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    if-ne v0, v1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method public setAudioId(I)V
    .locals 0
    .parameter "audioId"

    .prologue
    .line 41
    iput p1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    .line 42
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0
    .parameter "audioPath"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setAudioType(I)V
    .locals 0
    .parameter "audioType"

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    .line 50
    return-void
.end method

.method public showContactRingtoneToast()V
    .locals 3

    .prologue
    .line 254
    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->showDRMContactRingtoneToast(Landroid/content/Context;Landroid/net/Uri;)V

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->showContactRingtoneToast(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public showNoNotificationRingtoneDialog()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public showRingtoneDialog()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public showToast(I)V
    .locals 4
    .parameter "resid"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, toast:Landroid/widget/Toast;
    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 121
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "contactResultCode"

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v1, "filter_account_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    return-void
.end method

.method public useAsRingtone(Z)V
    .locals 5
    .parameter "showErrorToast"

    .prologue
    const/4 v4, 0x1

    .line 201
    invoke-virtual {p0, p1}, Lcom/htc/music/util/RingtoneHelper;->canUseAsRingtone(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/music/util/ProjectSettings;->getEnableUseAsNotificationRingtone(Landroid/content/Context;)Z

    move-result v0

    .line 208
    .local v0, enableUseAsNotifyRingtone:Z
    if-ne v0, v4, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/htc/music/util/RingtoneHelper;->showRingtoneDialog()V

    goto :goto_0

    .line 214
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.ringtonetrimmer"

    const-string v3, "com.htc.ringtonetrimmer.RingtoneSetAs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "audio_id"

    iget v3, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/htc/music/util/MusicUtils;->appExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0, v4}, Lcom/htc/music/util/RingtoneHelper;->activityPopup(Z)V

    .line 224
    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/util/RingtoneHelper;->showNoNotificationRingtoneDialog()V

    goto :goto_0
.end method
