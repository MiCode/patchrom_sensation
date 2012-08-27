.class Lcom/android/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "8BIT"

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final STATE_GROUP_OR_PROPERTY_NAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2


# instance fields
.field private mCanceled:Z

.field protected mCurrentCharset:Ljava/lang/String;

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field private final mInterpreterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field

.field protected mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 161
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x0

    .line 749
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 751
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 752
    .local v2, pos:I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 761
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 763
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 765
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 766
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    .line 768
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 771
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 777
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    .end local p1
    :cond_4
    return-object p1
.end method

.method private handleNest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 349
    .local v1, interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_0

    .line 351
    .end local v1           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 352
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 353
    .restart local v1       #interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_1

    .line 355
    .end local v1           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_1
    return-void
.end method

.method private isAsciiLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 556
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 557
    :cond_1
    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 4
    .parameter "property"
    .parameter "propertyNameUpper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, propertyRawValue:Ljava/lang/String;
    const-string v1, "AGENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAgent(Lcom/android/vcard/VCardProperty;)V

    .line 345
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    const-string v1, "VERSION"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    new-instance v1, Lcom/android/vcard/exception/VCardVersionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    new-instance v1, Lcom/android/vcard/exception/VCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown property name: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseOneVCard()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 216
    const-string v3, "8BIT"

    iput-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 217
    const-string v3, "UTF-8"

    iput-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, allowGarbage:Z
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    const/4 v3, 0x0

    .line 230
    :goto_0
    return v3

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardInterpreter;

    .line 224
    .local v2, interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v2}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_1

    .line 226
    .end local v2           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 227
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardInterpreter;

    .line 228
    .restart local v2       #interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v2}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_2

    .line 230
    .end local v2           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 858
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    .line 859
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 861
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
    .locals 1
    .parameter "interpreter"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    return-void
.end method

.method public final declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 961
    monitor-enter p0

    :try_start_0
    const-string v0, "vCard"

    const-string v1, "ParserImpl received cancel operation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    monitor-exit p0

    return-void

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected constructPropertyData(Ljava/lang/String;)Lcom/android/vcard/VCardProperty;
    .locals 13
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3b

    const/16 v11, 0x3a

    const/16 v10, 0x22

    .line 364
    new-instance v5, Lcom/android/vcard/VCardProperty;

    invoke-direct {v5}, Lcom/android/vcard/VCardProperty;-><init>()V

    .line 366
    .local v5, propertyData:Lcom/android/vcard/VCardProperty;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 367
    .local v3, length:I
    if-lez v3, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_0

    .line 368
    new-instance v8, Lcom/android/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v8}, Lcom/android/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v8

    .line 371
    :cond_0
    const/4 v7, 0x0

    .line 372
    .local v7, state:I
    const/4 v4, 0x0

    .line 376
    .local v4, nameIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_b

    .line 377
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 378
    .local v0, ch:C
    packed-switch v7, :pswitch_data_0

    .line 376
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :pswitch_0
    if-ne v0, v11, :cond_3

    .line 381
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, propertyName:Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 383
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_2

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v5, v8}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 415
    .end local v6           #propertyName:Ljava/lang/String;
    :goto_3
    return-object v5

    .line 383
    .restart local v6       #propertyName:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_2

    .line 385
    .end local v6           #propertyName:Ljava/lang/String;
    :cond_3
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_5

    .line 386
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, groupName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 388
    const-string v8, "vCard"

    const-string v9, "Empty group found. Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_4
    add-int/lit8 v4, v2, 0x1

    .line 393
    goto :goto_1

    .line 390
    :cond_4
    invoke-virtual {v5, v1}, Lcom/android/vcard/VCardProperty;->addGroup(Ljava/lang/String;)V

    goto :goto_4

    .line 393
    .end local v1           #groupName:Ljava/lang/String;
    :cond_5
    if-ne v0, v12, :cond_1

    .line 394
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 395
    .restart local v6       #propertyName:Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 396
    add-int/lit8 v4, v2, 0x1

    .line 397
    const/4 v7, 0x1

    .line 398
    goto :goto_1

    .line 403
    .end local v6           #propertyName:Ljava/lang/String;
    :pswitch_1
    if-ne v0, v10, :cond_7

    .line 404
    const-string v8, "2.1"

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 405
    const-string v8, "vCard"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_6
    const/4 v7, 0x2

    goto :goto_1

    .line 409
    :cond_7
    if-ne v0, v12, :cond_8

    .line 410
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 411
    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    .line 412
    :cond_8
    if-ne v0, v11, :cond_1

    .line 413
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 414
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_9

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v5, v8}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v8, ""

    goto :goto_5

    .line 420
    :pswitch_2
    if-ne v0, v10, :cond_1

    .line 421
    const-string v8, "2.1"

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 422
    const-string v8, "vCard"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 432
    .end local v0           #ch:C
    :cond_b
    new-instance v8, Lcom/android/vcard/exception/VCardInvalidLineException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 892
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 788
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 795
    :cond_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 796
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 798
    const-string v2, "vCard"

    const-string v3, "Found a next property during parsing a BASE64 string, which must not contain semi-colon. Treat the line as next property."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v2, "vCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problematic line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 808
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getCurrentCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    const-string v0, "UTF-8"

    return-object v0
.end method

.method protected getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    const-string v0, "8BIT"

    return-object v0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 880
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 199
    new-instance v1, Lcom/android/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 201
    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Lcom/android/vcard/VCardProperty;)V
    .locals 4
    .parameter "property"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BEGIN:VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 829
    .local v1, interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_0

    .line 833
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_0
    new-instance v2, Lcom/android/vcard/exception/VCardAgentNotSupportedException;

    const-string v3, "AGENT Property is not supported now."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 831
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "propertyData"
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 567
    invoke-virtual {p1, p2, p3}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method protected handleCharset(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 1
    .parameter "propertyData"
    .parameter "charsetval"

    .prologue
    .line 525
    iput-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 526
    const-string v0, "CHARSET"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method protected handleEncoding(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3
    .parameter "propertyData"
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    const-string v0, "ENCODING"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iput-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 515
    return-void

    .line 513
    :cond_1
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 7
    .parameter "propertyData"
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 534
    const-string v4, "-"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 536
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 539
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 540
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 541
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 542
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_2
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 546
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 547
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 548
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 549
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 547
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_4
    const-string v4, "LANGUAGE"

    invoke-virtual {p1, v4, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method protected handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 0
    .parameter "propertyData"
    .parameter "paramValue"

    .prologue
    .line 472
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method protected handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 6
    .parameter "propertyData"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 444
    const-string v3, "="

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_6

    .line 446
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 466
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 450
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleEncoding(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleCharset(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleLanguage(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 459
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_5
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 464
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v4

    invoke-virtual {p0, p1, v3}, Lcom/android/vcard/VCardParserImpl_V21;->handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 30
    .parameter "property"
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 573
    .local v13, propertyNameUpper:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v14

    .line 574
    .local v14, propertyRawValue:Ljava/lang/String;
    const-string v21, "ISO-8859-1"

    .line 575
    .local v21, sourceCharset:Ljava/lang/String;
    const-string v25, "CHARSET"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    .line 577
    .local v5, charsetCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v22, v25

    .line 579
    .local v22, targetCharset:Ljava/lang/String;
    :goto_0
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 580
    const-string v22, "UTF-8"

    .line 584
    :cond_0
    const-string v25, "ADR"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    const-string v25, "ORG"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    const-string v25, "N"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 587
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v7, encodedValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "QUOTED-PRINTABLE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 594
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 598
    .local v16, quotedPrintablePart:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 604
    .local v18, quotedPrintableValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 605
    .local v17, quotedPrintableValue:Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "ISO-8859-1"

    move-object/from16 v0, v17

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 607
    .local v6, encoded:Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 577
    .end local v6           #encoded:Ljava/lang/String;
    .end local v7           #encodedValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v16           #quotedPrintablePart:Ljava/lang/String;
    .end local v17           #quotedPrintableValue:Ljava/lang/String;
    .end local v18           #quotedPrintableValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v22           #targetCharset:Ljava/lang/String;
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 610
    .restart local v7       #encodedValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22       #targetCharset:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 612
    .local v20, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 613
    .local v19, rawValue:Ljava/lang/String;
    const-string v25, "ISO-8859-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 618
    .end local v19           #rawValue:Ljava/lang/String;
    .end local v20           #rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 620
    .local v10, interpreter:Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_3

    .line 625
    .end local v7           #encodedValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 626
    .local v23, upperEncoding:Ljava/lang/String;
    const-string v25, "QUOTED-PRINTABLE"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 627
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 628
    .restart local v16       #quotedPrintablePart:Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "ISO-8859-1"

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 631
    .local v12, propertyEncodedValue:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 632
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v12, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setValues([Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 634
    .restart local v10       #interpreter:Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_4

    .line 636
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #interpreter:Lcom/android/vcard/VCardInterpreter;
    .end local v12           #propertyEncodedValue:Ljava/lang/String;
    .end local v16           #quotedPrintablePart:Ljava/lang/String;
    :cond_6
    const-string v25, "BASE64"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    const-string v25, "B"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 641
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setByteValue([B)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 643
    .restart local v10       #interpreter:Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 645
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :catch_0
    move-exception v8

    .line 646
    .local v8, error:Ljava/lang/OutOfMemoryError;
    const-string v25, "vCard"

    const-string v26, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 648
    .restart local v10       #interpreter:Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_6

    .line 652
    .end local v8           #error:Ljava/lang/OutOfMemoryError;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_8
    const-string v25, "7BIT"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    const-string v25, "8BIT"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    const-string v25, "X-"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 654
    const-string v25, "vCard"

    const-string v26, "The encoding \"%s\" is unsupported by vCard %s"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v25

    if-nez v25, :cond_c

    .line 682
    const/4 v4, 0x0

    .line 684
    .local v4, builder:Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v11

    .line 691
    .local v11, nextLine:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_b

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    const-string v25, "END:VCARD"

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 696
    if-nez v4, :cond_a

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_a
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 705
    :cond_b
    if-eqz v4, :cond_c

    .line 706
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 710
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v11           #nextLine:Ljava/lang/String;
    :cond_c
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v15, propertyValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "ISO-8859-1"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 713
    .local v24, value:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 716
    .restart local v10       #interpreter:Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_8

    .line 719
    .end local v10           #interpreter:Lcom/android/vcard/VCardInterpreter;
    .end local v15           #propertyValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23           #upperEncoding:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/String;
    :cond_d
    return-void
.end method

.method protected handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5
    .parameter "propertyData"
    .parameter "ptypeval"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    const-string v0, "vCard"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    const-string v0, "TYPE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method protected handleValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5
    .parameter "propertyData"
    .parameter "pvalueval"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v0, "vCard"

    const-string v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    const-string v0, "VALUE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v0, "vCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 850
    invoke-static {p1}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "text"

    .prologue
    .line 841
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 912
    if-nez p1, :cond_0

    .line 913
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "InputStream must not be null."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 916
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 917
    .local v4, tmpReader:Ljava/io/InputStreamReader;
    new-instance v5, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v5, v4}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 920
    .local v2, start:J
    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 921
    .local v1, interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    .line 926
    .end local v1           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_1
    monitor-enter p0

    .line 927
    :try_start_0
    iget-boolean v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz v5, :cond_2

    .line 928
    const-string v5, "vCard"

    const-string v6, "Cancel request has come. exitting parse operation."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :goto_1
    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 938
    .restart local v1       #interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_2

    .line 931
    .end local v1           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 931
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 940
    :cond_3
    return-void
.end method

.method protected parseItem()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 304
    const-string v4, "8BIT"

    iput-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 306
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, line:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->constructPropertyData(Ljava/lang/String;)Lcom/android/vcard/VCardProperty;

    move-result-object v1

    .line 309
    .local v1, propertyData:Lcom/android/vcard/VCardProperty;
    invoke-virtual {v1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, propertyNameUpper:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, propertyRawValue:Ljava/lang/String;
    const-string v4, "BEGIN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->handleNest()V

    .line 327
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 316
    :cond_0
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown BEGIN type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_1
    const-string v4, "END"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 319
    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    const/4 v4, 0x1

    goto :goto_1

    .line 322
    :cond_2
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown END type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 325
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/android/vcard/VCardParserImpl_V21;->parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected parseItems()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 282
    .local v1, ended:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    if-nez v1, :cond_0

    .line 289
    :try_start_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    const-string v2, "vCard"

    const-string v3, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v0           #e:Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    :catch_1
    move-exception v0

    .line 291
    .restart local v0       #e:Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    const-string v2, "vCard"

    const-string v3, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v0           #e:Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    :cond_0
    return-void
.end method

.method public parseOne(Ljava/io/InputStream;)V
    .locals 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 943
    if-nez p1, :cond_0

    .line 944
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "InputStream must not be null."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 947
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 948
    .local v4, tmpReader:Ljava/io/InputStreamReader;
    new-instance v5, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v5, v4}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 950
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 951
    .local v2, start:J
    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 952
    .local v1, interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    .line 954
    .end local v1           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_1
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    .line 955
    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 956
    .restart local v1       #interpreter:Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_1

    .line 958
    .end local v1           #interpreter:Lcom/android/vcard/VCardInterpreter;
    :cond_2
    return-void
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 259
    :goto_0
    return v3

    .line 246
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 250
    const-string v5, ":"

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 257
    .local v0, length:I
    if-ne v0, v7, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 259
    goto :goto_0

    .line 260
    :cond_2
    if-nez p1, :cond_3

    .line 261
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_3
    if-nez p1, :cond_0

    .line 266
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
