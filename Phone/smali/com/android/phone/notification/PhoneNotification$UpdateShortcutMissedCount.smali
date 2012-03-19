.class Lcom/android/phone/notification/PhoneNotification$UpdateShortcutMissedCount;
.super Landroid/os/AsyncTask;
.source "PhoneNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/notification/PhoneNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateShortcutMissedCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/notification/PhoneNotification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/notification/PhoneNotification$UpdateShortcutMissedCount;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, [Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/notification/PhoneNotification$UpdateShortcutMissedCount;->doInBackground([Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;)Ljava/lang/Void;
    .locals 23
    .parameter "params"

    .prologue
    .line 77
    move-object/from16 v16, p1

    .local v16, arr$:[Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v20, v16, v18

    .line 78
    .local v20, param:Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;->context:Landroid/content/Context;

    .line 79
    .local v3, ctx:Landroid/content/Context;
    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;->missedCount:I

    .line 81
    .local v7, missedNumber:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 83
    .local v21, res:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 84
    .local v9, bmp:Landroid/graphics/Bitmap;
    if-lez v7, :cond_0

    .line 85
    const-string v4, "common_notification_new_on"

    const v5, 0x20805ac

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    .line 88
    .local v17, bubbleId:I
    new-instance v2, Lcom/htc/util/icon/IconGenerator;

    invoke-direct {v2}, Lcom/htc/util/icon/IconGenerator;-><init>()V

    .line 90
    .local v2, icgen:Lcom/htc/util/icon/IconGenerator;
    const v4, 0x7f020021

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/util/icon/IconGenerator;->MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 96
    .end local v2           #icgen:Lcom/htc/util/icon/IconGenerator;
    .end local v17           #bubbleId:I
    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v22, selArg:Ljava/lang/StringBuilder;
    const-string v4, "%com.android.htccontacts/.DialerTabActivity%"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "intent like ?"

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v4

    const/4 v14, 0x0

    const v15, 0x7fffffff

    move-object v8, v3

    invoke-static/range {v8 .. v15}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 77
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 93
    .end local v22           #selArg:Ljava/lang/StringBuilder;
    :cond_0
    const v4, 0x7f020021

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_1

    .line 109
    .end local v3           #ctx:Landroid/content/Context;
    .end local v7           #missedNumber:I
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v20           #param:Lcom/android/phone/notification/PhoneNotification$NotifyMissedCallParams;
    .end local v21           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method
