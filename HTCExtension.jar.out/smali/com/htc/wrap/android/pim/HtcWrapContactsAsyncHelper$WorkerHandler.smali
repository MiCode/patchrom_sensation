.class Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "HtcWrapContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    .line 161
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 166
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;

    .line 168
    .local v0, args:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 194
    :goto_0
    iget-object v4, p0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 195
    .local v3, reply:Landroid/os/Message;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 196
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void

    .line 170
    .end local v3           #reply:Landroid/os/Message;
    :pswitch_0
    const/4 v2, 0x0

    .line 172
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 178
    :goto_1
    if-eqz v2, :cond_0

    .line 179
    iget-object v4, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "HtcWrapContactsAsyncHelper"

    const-string v5, "Error opening photo input stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 184
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
