.class public final Lcom/android/htcdialer/Dialer$ContactCardAdapter;
.super Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContactCardAdapter"
.end annotation


# instance fields
.field private mBitmapPhoto:Landroid/graphics/Bitmap;

.field private mCallLogId:J

.field private mCallLogType:I

.field private mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

.field private mContactCardView:Landroid/widget/ImageView;

.field private mDateTime:Ljava/lang/CharSequence;

.field private mForceRefreshing:Z

.field private mPersonName:Ljava/lang/CharSequence;

.field private mPhoneNumber:Ljava/lang/CharSequence;

.field mViewContactListener:Landroid/view/View$OnClickListener;

.field private mdata:Lcom/android/htcdialer/search/SearchableObject;

.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p5, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7120
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    .line 7121
    invoke-direct/range {p0 .. p5}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;-><init>(Lcom/android/htcdialer/BaseSmartSearchList;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 7092
    iput-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    .line 7093
    iput-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mBitmapPhoto:Landroid/graphics/Bitmap;

    .line 7094
    new-instance v0, Lcom/android/htcdialer/search/SearchableObject;

    invoke-direct {v0}, Lcom/android/htcdialer/search/SearchableObject;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;

    .line 7095
    iput v3, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mCallLogType:I

    .line 7096
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mCallLogId:J

    .line 7097
    iput-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPersonName:Ljava/lang/CharSequence;

    .line 7098
    iput-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;

    .line 7099
    iput-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mDateTime:Ljava/lang/CharSequence;

    .line 7100
    iput-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCardView:Landroid/widget/ImageView;

    .line 7101
    iput-boolean v3, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mForceRefreshing:Z

    .line 7103
    new-instance v0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter$1;-><init>(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mViewContactListener:Landroid/view/View$OnClickListener;

    .line 7122
    invoke-virtual {p1, p3}, Lcom/android/htcdialer/Dialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/widget/DialerContactCard;

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    .line 7123
    invoke-direct {p0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->initailize()V

    .line 7124
    return-void
.end method

.method static synthetic access$5400(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7090
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)Lcom/android/htcdialer/search/SearchableObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7090
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;

    return-object v0
.end method

.method private initailize()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7154
    invoke-virtual {p0, v0, v0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 7158
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v0}, Lcom/android/htcdialer/widget/DialerContactCard;->getContactCardView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCardView:Landroid/widget/ImageView;

    .line 7159
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCardView:Landroid/widget/ImageView;

    const-string v1, "phone_contact_background"

    invoke-static {v0, v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 7160
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    new-instance v1, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;-><init>(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/widget/DialerContactCard;->setOnClickListener(Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;)V

    .line 7176
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v1}, Lcom/android/htcdialer/widget/DialerContactCard;->getContactCardView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->registerForContextMenu(Landroid/view/View;)V

    .line 7178
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->refreshView(Lcom/android/htcdialer/search/SearchableObject;)V

    .line 7179
    return-void
.end method

.method private setCallLogType(Lcom/android/htcdialer/search/SearchableObject;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 7343
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getCallLogType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v0

    .line 7344
    .local v0, callLogType:I
    const/4 v1, 0x0

    .line 7346
    .local v1, callLogTypeDrawable:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mCallLogType:I

    if-ne v0, v2, :cond_1

    .line 7377
    :cond_0
    :goto_0
    return-void

    .line 7349
    :cond_1
    iput v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mCallLogType:I

    .line 7351
    packed-switch v0, :pswitch_data_0

    .line 7365
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$6000(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/util/PhotoUtils;->getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7370
    :goto_1
    if-eqz v1, :cond_2

    .line 7371
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v2, v1, v0}, Lcom/android/htcdialer/widget/DialerContactCard;->setCallTypeIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 7372
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/DialerContactCard;->getCallLogTypeIcon()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7373
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 7353
    :pswitch_0
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$5700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/util/PhotoUtils;->getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7355
    goto :goto_1

    .line 7357
    :pswitch_1
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$5800(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/util/PhotoUtils;->getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7359
    goto :goto_1

    .line 7361
    :pswitch_2
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$5900(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/util/PhotoUtils;->getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7363
    goto :goto_1

    .line 7374
    :cond_2
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/DialerContactCard;->getCallLogTypeIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7375
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/DialerContactCard;->getCallLogTypeIcon()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 7351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPhoto(Lcom/android/htcdialer/search/SearchableObject;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 7307
    const/4 v2, -0x1

    .line 7308
    .local v2, photoType:I
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v1

    .line 7310
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-nez v1, :cond_2

    .line 7311
    const/4 v2, 0x0

    .line 7318
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 7319
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    iget-object v4, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;
    invoke-static {v4}, Lcom/android/htcdialer/Dialer;->access$5600(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/htcdialer/util/PhotoUtils;->getPhotoDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/widget/DialerContactCard;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 7334
    :cond_1
    :goto_1
    return-void

    .line 7312
    :cond_2
    iget-boolean v3, v1, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    if-eqz v3, :cond_3

    .line 7313
    const/4 v2, 0x1

    goto :goto_0

    .line 7314
    :cond_3
    iget-wide v3, v1, Lcom/android/htcdialer/search/SearchableContact;->photoId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 7315
    const/4 v2, 0x0

    goto :goto_0

    .line 7322
    :cond_4
    iget-wide v3, v1, Lcom/android/htcdialer/search/SearchableContact;->photoId:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7324
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mBitmapPhoto:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_1

    .line 7327
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mBitmapPhoto:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 7328
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mBitmapPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 7330
    :cond_5
    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mBitmapPhoto:Landroid/graphics/Bitmap;

    .line 7331
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mBitmapPhoto:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/widget/DialerContactCard;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public forceRefreshingView()V
    .locals 1

    .prologue
    .line 7190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mForceRefreshing:Z

    .line 7191
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->refreshView(Lcom/android/htcdialer/search/SearchableObject;)V

    .line 7192
    return-void
.end method

.method public getContactCardView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 7145
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCardView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getData()Lcom/android/htcdialer/search/SearchableObject;
    .locals 1

    .prologue
    .line 7149
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;

    return-object v0
.end method

.method public getDateTimeUsingSystemFormat(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    .line 7273
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getCallLogDate(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v0

    .line 7274
    .local v0, callLogDate:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 7275
    const/4 v5, 0x0

    .line 7283
    :goto_0
    return-object v5

    .line 7277
    :cond_0
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 7278
    .local v4, systemTimeFormatter:Ljava/text/DateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 7280
    .local v5, time:Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "MM/dd"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7281
    .local v3, f:Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 7283
    .local v2, date:Ljava/lang/String;
    goto :goto_0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7133
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPersonName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 7134
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPersonName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7139
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 7140
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 7186
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v0}, Lcom/android/htcdialer/widget/DialerContactCard;->getVisibility()I

    move-result v0

    return v0
.end method

.method public refreshView()V
    .locals 1

    .prologue
    .line 7195
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->refreshView(Lcom/android/htcdialer/search/SearchableObject;)V

    .line 7196
    return-void
.end method

.method public refreshView(Lcom/android/htcdialer/search/SearchableObject;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 7200
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 7268
    :cond_0
    :goto_0
    return-void

    .line 7203
    :cond_1
    iget-wide v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mCallLogId:J

    .line 7204
    .local v2, oldCallLogId:J
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mCallLogId:J

    .line 7206
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mForceRefreshing:Z

    .line 7207
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mForceRefreshing:Z

    .line 7212
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPersonName:Ljava/lang/CharSequence;

    .line 7213
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;

    .line 7214
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getDateTimeUsingSystemFormat(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mDateTime:Ljava/lang/CharSequence;

    .line 7217
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPersonName:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7218
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v6, v6, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mEmergencyNumbers:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/htcdialer/Dialer;->access$4100(Lcom/android/htcdialer/Dialer;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 7219
    .local v1, numberType:I
    const/4 v5, 0x6

    if-ne v5, v1, :cond_2

    .line 7220
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const v6, 0x10402db

    invoke-virtual {v5, v6}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPersonName:Ljava/lang/CharSequence;

    .line 7224
    .end local v1           #numberType:I
    :cond_2
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    iget-object v6, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPersonName:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/htcdialer/widget/DialerContactCard;->setName(Ljava/lang/CharSequence;)V

    .line 7227
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    iget-object v6, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/htcdialer/widget/DialerContactCard;->setNumber(Ljava/lang/CharSequence;)V

    .line 7230
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    iget-object v6, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mDateTime:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/htcdialer/widget/DialerContactCard;->setTime(Ljava/lang/CharSequence;)V

    .line 7233
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->setPhoto(Lcom/android/htcdialer/search/SearchableObject;)V

    .line 7236
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->setCallLogType(Lcom/android/htcdialer/search/SearchableObject;)V

    .line 7239
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getNumberTypeString(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/htcdialer/widget/DialerContactCard;->setNumberType(Ljava/lang/CharSequence;)V

    .line 7241
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 7242
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    const v4, 0x20805da

    .line 7243
    .local v4, resId:I
    if-eqz v0, :cond_5

    iget-wide v5, v0, Lcom/android/htcdialer/search/SearchableContact;->id:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    .line 7249
    sget-boolean v5, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v5, :cond_4

    .line 7250
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "phone_icon_contactcard"

    const-string v7, "drawable"

    const-string v8, "com.android.htcdialer"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 7266
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v5, v4}, Lcom/android/htcdialer/widget/DialerContactCard;->setDetialButton(I)V

    goto/16 :goto_0

    .line 7252
    :cond_4
    const v4, 0x20805de

    goto :goto_1

    .line 7262
    :cond_5
    sget-boolean v5, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v5, :cond_3

    .line 7263
    iget-object v5, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v5}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "phone_icon_addcontact"

    const-string v7, "drawable"

    const-string v8, "com.android.htcdialer"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method public setContactCardView(Lcom/android/htcdialer/widget/DialerContactCard;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 7127
    if-eqz p1, :cond_0

    .line 7128
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    .line 7130
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 7182
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mContactCard:Lcom/android/htcdialer/widget/DialerContactCard;

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/widget/DialerContactCard;->setVisibility(I)V

    .line 7183
    return-void
.end method

.method public updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7293
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p2, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7294
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableObject;

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;

    .line 7299
    :goto_0
    return-void

    .line 7296
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    goto :goto_0
.end method
