.class public Lcom/htc/util/calendar/FacebookImageAsyncHelper;
.super Landroid/os/Handler;
.source "FacebookImageAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/FacebookImageAsyncHelper$1;,
        Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerHandler;,
        Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;,
        Lcom/htc/util/calendar/FacebookImageAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookImageAsyncHelper"

.field private static sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

.field private static sDefaultAvatar:Landroid/graphics/Bitmap;

.field private static sInstance:Lcom/htc/util/calendar/FacebookImageAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sInstance:Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 4
    .parameter "defaultAvartaResId"
    .parameter "fbIndicatorResId"

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 124
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sDefaultAvatar:Landroid/graphics/Bitmap;

    .line 125
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    sput-object v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 126
    sget-object v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    sget-object v2, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    sget-object v3, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sDefaultAvatar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iput v3, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 127
    sget-object v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    sget-object v2, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sDefaultAvatar:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 128
    sget-object v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    const/16 v2, 0x11

    iput v2, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    .line 129
    sget-object v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FacebookImageAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerHandler;-><init>(Lcom/htc/util/calendar/FacebookImageAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method static synthetic access$000()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    return-object v0
.end method

.method public static declared-synchronized getInstance(II)Lcom/htc/util/calendar/FacebookImageAsyncHelper;
    .locals 2
    .parameter "defaultAvartaResId"
    .parameter "fbIndicatorResId"

    .prologue
    .line 57
    const-class v1, Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sInstance:Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;-><init>(II)V

    sput-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sInstance:Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    .line 60
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sInstance:Lcom/htc/util/calendar/FacebookImageAsyncHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getThumbnailWithSourceId(J)Landroid/database/Cursor;
    .locals 1
    .parameter "sourceId"

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final cancelUpdateImageView(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 255
    sget-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sInstance:Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    if-eqz v0, :cond_1

    .line 259
    sget-object v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sInstance:Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    invoke-virtual {v0, p1}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->removeMessages(I)V

    .line 261
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;

    .line 215
    .local v0, args:Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    const/4 v1, 0x0

    .line 221
    .local v1, imagePresent:Z
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 222
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v3, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 226
    iget-object v3, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 228
    :cond_1
    const/4 v1, 0x1

    .line 235
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    .line 236
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 240
    :cond_3
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/FacebookImageAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/FacebookImageAsyncHelper$OnImageLoadCompleteListener;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/htc/util/calendar/FacebookImageAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 229
    :cond_4
    iget v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 230
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v2, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateImageViewWithURLAsync(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v1, 0x0

    .line 143
    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->updateImageViewWithURLAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/FacebookImageAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method public final updateImageViewWithURLAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/FacebookImageAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 4
    .parameter "info"
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v3, 0x0

    .line 171
    if-nez p7, :cond_0

    .line 173
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    invoke-virtual {p6, p8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;-><init>(Lcom/htc/util/calendar/FacebookImageAsyncHelper$1;)V

    .line 183
    .local v0, args:Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;
    iput-object p4, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 184
    iput-object p5, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 185
    iput-object p6, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 186
    iput-object p7, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->url:Ljava/lang/String;

    .line 187
    iput p8, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->defaultResource:I

    .line 188
    iput-object p3, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->listener:Lcom/htc/util/calendar/FacebookImageAsyncHelper$OnImageLoadCompleteListener;

    .line 189
    iput-object p1, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 192
    sget-object v2, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 193
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 194
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    const/4 v2, -0x1

    if-eq p8, v2, :cond_1

    .line 202
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    invoke-virtual {p6, p8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :goto_1
    sget-object v2, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 205
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final updateImageViewWithURLAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 9
    .parameter "info"
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->updateImageViewWithURLAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/htc/util/calendar/FacebookImageAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 156
    return-void
.end method
