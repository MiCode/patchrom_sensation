.class public Landroid/webkit/HTCQuickSearch;
.super Ljava/lang/Object;
.source "HTCQuickSearch.java"


# static fields
.field private static final DELAY_CENTER_SELECTION:I = 0x2bc

.field private static final MAX_SHARABLE_URL_LENGTH:I = 0x578

.field public static final QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri; = null

.field public static final QUICKLOOKUP_GET_SETTINGS_URI:Landroid/net/Uri; = null

.field public static final QUICKLOOKUP_TRANSLATE_URI:Landroid/net/Uri; = null

.field private static final SHAREID_CENTER_SELECTION:I = 0x0

.field private static final SHARE_LIST_ACTIVITY:Ljava/lang/String; = "com.htc.app.SHARE"

.field public static final SHARE_MAGIC_WORD:Ljava/lang/String; = "#*"

.field private static final SHARE_SEPERATOR:Ljava/lang/String; = "[ ,.;?!\uff0c\u3002\uff1b\uff1f\uff01]"


# instance fields
.field private mContext:Landroid/content/Context;

.field mLanguagePair:[Ljava/lang/String;

.field private mPageLoading:Z

.field mProvider:Landroid/content/IContentProvider;

.field private mQuickSearchShareHandler:Landroid/os/Handler;

.field public mQuickSearchShareMode:Z

.field private mTouchedBeforePageFinish:Z

.field mTranslateResult:Ljava/lang/String;

.field mTranslateThread:Ljava/lang/Thread;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "content://com.htc.android.quicklookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri;

    .line 210
    sget-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "translate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_TRANSLATE_URI:Landroid/net/Uri;

    .line 211
    sget-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_GET_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "webview"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Landroid/webkit/HTCQuickSearch;->mTouchedBeforePageFinish:Z

    .line 32
    iput-boolean v2, p0, Landroid/webkit/HTCQuickSearch;->mPageLoading:Z

    .line 37
    iput-boolean v2, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "en"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mLanguagePair:[Ljava/lang/String;

    .line 279
    new-instance v0, Landroid/webkit/HTCQuickSearch$2;

    invoke-direct {v0, p0}, Landroid/webkit/HTCQuickSearch$2;-><init>(Landroid/webkit/HTCQuickSearch;)V

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    .line 42
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static getDecodedShareContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dirty"

    .prologue
    .line 148
    const-string/jumbo v3, "x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, c:[Ljava/lang/String;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [C

    .line 150
    .local v2, tmp:[C
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 151
    add-int/lit8 v3, v1, -0x1

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private getLastIndexOfThese(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "content"
    .parameter "these"

    .prologue
    .line 197
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 198
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 200
    .local v1, matcher:Ljava/util/regex/Matcher;
    const/4 v0, -0x1

    .line 202
    .local v0, index:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    goto :goto_0

    .line 206
    :cond_0
    return v0
.end method

.method private getSharableUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "content"
    .parameter "max"

    .prologue
    const/4 v8, 0x0

    .line 158
    const-string v3, ""

    .line 159
    .local v3, encodedUrl:Ljava/lang/String;
    const-string v2, ""

    .line 160
    .local v2, encodedMagicWord:Ljava/lang/String;
    const-string v1, ""

    .line 162
    .local v1, encodedContent:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "utf-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 163
    :try_start_1
    const-string v6, "#*"

    const-string/jumbo v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-lt v6, p3, :cond_0

    .line 166
    const-string v6, ""

    .line 192
    :goto_0
    return-object v6

    .line 162
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, ""

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    const-string v6, ""

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v5, p3, v6

    .line 170
    .local v5, maxContent:I
    invoke-virtual {p0, p2}, Landroid/webkit/HTCQuickSearch;->getEncodedShareContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_2

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 186
    .local v4, index:I
    :cond_1
    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-virtual {p0, p2}, Landroid/webkit/HTCQuickSearch;->getEncodedShareContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .end local v4           #index:I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_3

    .line 178
    const-string v6, "[ ,.;?!\uff0c\u3002\uff1b\uff1f\uff01]"

    invoke-direct {p0, p2, v6}, Landroid/webkit/HTCQuickSearch;->getLastIndexOfThese(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 180
    .restart local v4       #index:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 181
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 182
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-virtual {p0, p2}, Landroid/webkit/HTCQuickSearch;->getEncodedShareContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 192
    .end local v4           #index:I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static removeSharedContentFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strURL"

    .prologue
    const/4 v4, -0x1

    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :cond_0
    const/4 p0, 0x0

    .line 131
    .local v0, nPos:I
    :cond_1
    :goto_0
    return-object p0

    .line 121
    .end local v0           #nPos:I
    :cond_2
    const-string v2, "#*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 123
    .restart local v0       #nPos:I
    if-eq v0, v4, :cond_1

    const-string v2, "#*"

    const-string v3, "#*"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 125
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, strTmp:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public enterQuickSearchShareMode(Ljava/lang/String;)V
    .locals 4
    .parameter "strSearchContent"

    .prologue
    const/4 v2, 0x1

    .line 77
    iget-boolean v1, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    if-nez v1, :cond_0

    .line 78
    iput-boolean v2, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    .line 79
    iget-object v1, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 80
    iget-object v1, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWillDrawFind(Z)V

    .line 82
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    iget-object v1, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v1, "KENLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot found \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" through findAll."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getEncodedShareContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 137
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getQuickLookupSettings()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchedBeforeFinish()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/webkit/HTCQuickSearch;->mTouchedBeforePageFinish:Z

    return v0
.end method

.method public leaveQuickSearchShareMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    iget-boolean v0, p0, Landroid/webkit/HTCQuickSearch;->mPageLoading:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v2}, Landroid/webkit/HTCQuickSearch;->setTouchedBeforeFinish(Z)V

    .line 96
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    if-eqz v0, :cond_1

    .line 97
    iput-boolean v1, p0, Landroid/webkit/HTCQuickSearch;->mQuickSearchShareMode:Z

    .line 98
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 99
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillDrawFind(Z)V

    .line 100
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 102
    :cond_1
    return-void
.end method

.method public setPageLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/webkit/HTCQuickSearch;->mPageLoading:Z

    .line 114
    return-void
.end method

.method public setTouchedBeforeFinish(Z)V
    .locals 0
    .parameter "touched"

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/webkit/HTCQuickSearch;->mTouchedBeforePageFinish:Z

    .line 110
    return-void
.end method

.method public shareContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "content"
    .parameter "url"

    .prologue
    const v6, 0x20c0197

    const/4 v5, 0x0

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 49
    iget-object v3, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 73
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v2, ""

    .line 55
    .local v2, longURL:Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 56
    invoke-static {p2}, Landroid/webkit/HTCQuickSearch;->removeSharedContentFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 57
    const/16 v3, 0x578

    invoke-direct {p0, p2, p1, v3}, Landroid/webkit/HTCQuickSearch;->getSharableUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 63
    :goto_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.app.SHARE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    const-string v3, "SHARED_CONTENT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "ORIGINAL_URL"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v3, "LONG_URL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v3, p0, Landroid/webkit/HTCQuickSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string p2, ""

    goto :goto_1
.end method

.method protected startTranslation(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "text"
    .parameter "selectionHandler"

    .prologue
    .line 217
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/webkit/HTCQuickSearch;->QUICKLOOKUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    .line 221
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mProvider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Landroid/webkit/HTCQuickSearch$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/HTCQuickSearch$1;-><init>(Landroid/webkit/HTCQuickSearch;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/webkit/HTCQuickSearch;->mTranslateThread:Ljava/lang/Thread;

    .line 244
    iget-object v0, p0, Landroid/webkit/HTCQuickSearch;->mTranslateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
