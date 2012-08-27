.class public Lcom/android/vcard/VCardEntry$NameData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameData"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field private mFamily:Ljava/lang/String;

.field private mFormatted:Ljava/lang/String;

.field private mGiven:Ljava/lang/String;

.field private mMiddle:Ljava/lang/String;

.field private mPhoneticFamily:Ljava/lang/String;

.field private mPhoneticGiven:Ljava/lang/String;

.field private mPhoneticMiddle:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mSortString:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 164
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 165
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 167
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string v2, "data2"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    const-string v2, "data3"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    const-string v2, "data5"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 177
    const-string v2, "data4"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 179
    :cond_3
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 180
    const-string v2, "data6"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 183
    :cond_4
    const/4 v1, 0x0

    .line 185
    .local v1, phoneticNameSpecified:Z
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 186
    const-string v2, "data7"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 187
    const/4 v1, 0x1

    .line 189
    :cond_5
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 190
    const-string v2, "data9"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    const/4 v1, 0x1

    .line 193
    :cond_6
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 194
    const-string v2, "data8"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 195
    const/4 v1, 0x1

    .line 200
    :cond_7
    if-nez v1, :cond_8

    .line 201
    const-string v2, "data7"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 204
    :cond_8
    const-string v2, "data1"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 205
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public emptyPhoneticStructuredName()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public emptyStructuredName()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    if-ne p0, p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$NameData;

    if-nez v3, :cond_2

    move v1, v2

    .line 223
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 225
    check-cast v0, Lcom/android/vcard/VCardEntry$NameData;

    .line 227
    .local v0, nameData:Lcom/android/vcard/VCardEntry$NameData;
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getGiven()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 241
    const/16 v6, 0xa

    new-array v3, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v6, v3, v7

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x3

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x4

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x5

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x6

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x7

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    aput-object v8, v3, v6

    const/16 v6, 0x8

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    aput-object v8, v3, v6

    const/16 v6, 0x9

    iget-object v8, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    aput-object v8, v3, v6

    .line 244
    .local v3, hashTargets:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 245
    .local v1, hash:I
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 246
    .local v2, hashTarget:Ljava/lang/String;
    mul-int/lit8 v8, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    :goto_1
    add-int v1, v8, v6

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v6, v7

    .line 246
    goto :goto_1

    .line 248
    .end local v2           #hashTarget:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0
    .parameter "family"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-void
.end method

.method public setGiven(Ljava/lang/String;)V
    .locals 0
    .parameter "given"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-void
.end method

.method public setMiddle(Ljava/lang/String;)V
    .locals 0
    .parameter "middle"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .parameter "suffix"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    const-string v0, "family: %s, given: %s, middle: %s, prefix: %s, suffix: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
