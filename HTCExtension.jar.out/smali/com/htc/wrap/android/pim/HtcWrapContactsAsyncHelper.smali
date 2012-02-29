.class public Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;
.super Landroid/os/Handler;
.source "HtcWrapContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$1;,
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;,
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$ImageTracker;,
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;,
        Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcWrapContactsAsyncHelper"

.field private static sInstance:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    invoke-direct {v0}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sInstance:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 205
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 207
    new-instance v1, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerHandler;-><init>(Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method public static final cancelUpdateImageView(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 333
    sget-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    :cond_0
    sget-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sInstance:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    if-eqz v0, :cond_1

    .line 337
    sget-object v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sInstance:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;

    invoke-virtual {v0, p0}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->removeMessages(I)V

    .line 339
    :cond_1
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v0, 0x0

    .line 216
    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 218
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 4
    .parameter "info"
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v3, 0x0

    .line 244
    if-nez p6, :cond_0

    .line 246
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;-><init>(Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$1;)V

    .line 256
    .local v0, args:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;
    iput-object p3, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 257
    iput-object p4, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 258
    iput-object p5, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 259
    iput-object p6, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 260
    iput p7, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 261
    iput-object p2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 262
    iput-object p0, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 265
    sget-object v2, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 266
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 267
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    const/4 v2, -0x1

    if-eq p7, v2, :cond_1

    .line 275
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    :goto_1
    sget-object v2, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 278
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "info"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v2, 0x0

    .line 227
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;

    .line 291
    .local v0, args:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 293
    :pswitch_0
    const/4 v1, 0x0

    .line 297
    .local v1, imagePresent:Z
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 298
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v3, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 302
    iget-object v3, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 304
    :cond_1
    const/4 v1, 0x1

    .line 311
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    .line 312
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 316
    :cond_3
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->listener:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 305
    :cond_4
    iget v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 306
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v2, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
