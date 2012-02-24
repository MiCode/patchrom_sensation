.class public Lcom/htc/urlshorten/BitlyParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BitlyParser.java"


# static fields
.field private static final BITLY_URL:Ljava/lang/String; = "http://api.bit.ly/shorten?"

.field private static final PARAM_API_KEY:Ljava/lang/String; = "apiKey"

.field private static final PARAM_API_KEY_VALUE:Ljava/lang/String; = "R_73181003c01f32ec9a87c8916e6e0cee"

.field private static final PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final PARAM_FORMAT:Ljava/lang/String; = "format"

.field private static final PARAM_FORMAT_VALUE:Ljava/lang/String; = "xml"

.field private static final PARAM_LOGIN:Ljava/lang/String; = "login"

.field private static final PARAM_LOGIN_VALUE:Ljava/lang/String; = "isatohon"

.field private static final PARAM_LONG_URL:Ljava/lang/String; = "longUrl"

.field private static final PARAM_SEPARATOR:Ljava/lang/String; = "&"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final PARAM_VERSION_VALUE:Ljava/lang/String; = "2.0.1"

.field private static final PREFIX_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final PREFIX_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final PREFIX_SHORT_URL:Ljava/lang/String; = "shortUrl"

.field private static final PREFIX_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final TIMEOUT:I = 0xfa0

.field public static final VALUE_SUCCESS:Ljava/lang/String; = "OK"

.field private static sHandler:Landroid/os/Handler;

.field private static sUrl:Ljava/lang/String;

.field private static sWhatError:I

.field private static sWhatSuccess:I

.field private static sWhatTimeout:I


# instance fields
.field private mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

.field private mInErrorCode:Z

.field private mInErrorMessage:Z

.field private mInShortUrl:Z

.field private mInStatusCode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    .line 97
    iput-boolean v0, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    .line 99
    iput-boolean v0, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    .line 101
    iput-boolean v0, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    .line 121
    new-instance v0, Lcom/htc/urlshorten/BitlyInfo;

    invoke-direct {v0}, Lcom/htc/urlshorten/BitlyInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    .line 123
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/urlshorten/BitlyParser;->sUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/htc/urlshorten/BitlyParser;->sWhatSuccess:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/urlshorten/BitlyParser;)Lcom/htc/urlshorten/BitlyInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/urlshorten/BitlyParser;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/htc/urlshorten/BitlyParser;->sWhatTimeout:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/htc/urlshorten/BitlyParser;->sWhatError:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/urlshorten/BitlyInfo;->setErrorCode(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/urlshorten/BitlyInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/urlshorten/BitlyInfo;->setShortUrl(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/urlshorten/BitlyInfo;->setStatusCode(Ljava/lang/String;)V

    .line 423
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    .line 425
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    .line 427
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    .line 429
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    .line 431
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "nStart"
    .parameter "nLength"

    .prologue
    .line 385
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    add-int v2, p2, p3

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, str:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    invoke-virtual {v1, v0}, Lcom/htc/urlshorten/BitlyInfo;->setErrorCode(Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-boolean v1, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    if-eqz v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    invoke-virtual {v1, v0}, Lcom/htc/urlshorten/BitlyInfo;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_2
    iget-boolean v1, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    if-eqz v1, :cond_3

    .line 399
    iget-object v1, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    invoke-virtual {v1, v0}, Lcom/htc/urlshorten/BitlyInfo;->setShortUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_3
    iget-boolean v1, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    invoke-virtual {v1, v0}, Lcom/htc/urlshorten/BitlyInfo;->setStatusCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "strURI"
    .parameter "strLocalName"
    .parameter "strQName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, str:Ljava/lang/String;
    :goto_0
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    .line 377
    :cond_0
    :goto_1
    return-void

    .line 355
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 363
    .restart local v0       #str:Ljava/lang/String;
    :cond_2
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    goto :goto_1

    .line 367
    :cond_3
    const-string v1, "shortUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 369
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    goto :goto_1

    .line 371
    :cond_4
    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    goto :goto_1
.end method

.method public shortenUrl(Ljava/lang/String;Landroid/os/Handler;III)V
    .locals 4
    .parameter "strUrl"
    .parameter "handler"
    .parameter "whatSuccess"
    .parameter "whatTimeout"
    .parameter "whatError"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 133
    :cond_0
    const-string v2, "KENLOG"

    const-string v3, "<BitlyParser.getShorterUrl> strUrl incorrect."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, msg:Landroid/os/Message;
    sget v2, Lcom/htc/urlshorten/BitlyParser;->sWhatError:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 139
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    sget-object v2, Lcom/htc/urlshorten/BitlyParser;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/htc/urlshorten/BitlyParser;->init()V

    .line 153
    sput-object p1, Lcom/htc/urlshorten/BitlyParser;->sUrl:Ljava/lang/String;

    .line 155
    sput-object p2, Lcom/htc/urlshorten/BitlyParser;->sHandler:Landroid/os/Handler;

    .line 159
    sput p3, Lcom/htc/urlshorten/BitlyParser;->sWhatSuccess:I

    .line 161
    sput p4, Lcom/htc/urlshorten/BitlyParser;->sWhatTimeout:I

    .line 163
    sput p5, Lcom/htc/urlshorten/BitlyParser;->sWhatError:I

    .line 167
    new-instance v1, Lcom/htc/urlshorten/BitlyParser$1;

    invoke-direct {v1, p0}, Lcom/htc/urlshorten/BitlyParser$1;-><init>(Lcom/htc/urlshorten/BitlyParser;)V

    .line 315
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "strURI"
    .parameter "strLocalName"
    .parameter "strQName"
    .parameter "atts"

    .prologue
    const/4 v2, 0x1

    .line 325
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, str:Ljava/lang/String;
    :goto_0
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    .line 347
    :cond_0
    :goto_1
    return-void

    .line 325
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    .restart local v0       #str:Ljava/lang/String;
    :cond_2
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    goto :goto_1

    .line 337
    :cond_3
    const-string v1, "shortUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    goto :goto_1

    .line 341
    :cond_4
    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    goto :goto_1
.end method
