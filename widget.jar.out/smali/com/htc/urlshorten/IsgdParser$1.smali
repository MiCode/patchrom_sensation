.class Lcom/htc/urlshorten/IsgdParser$1;
.super Ljava/lang/Thread;
.source "IsgdParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/urlshorten/IsgdParser;->shortenUrl(Ljava/lang/String;Landroid/os/Handler;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/urlshorten/IsgdParser;


# direct methods
.method constructor <init>(Lcom/htc/urlshorten/IsgdParser;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/urlshorten/IsgdParser$1;->this$0:Lcom/htc/urlshorten/IsgdParser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v7, "http://is.gd/api.php?longurl="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/htc/urlshorten/IsgdParser;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, strQueryUrl:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 57
    .local v0, conn:Ljava/net/URLConnection;
    const/16 v7, 0xfa0

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 58
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 61
    .local v2, in:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, inputLine:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 63
    iget-object v7, p0, Lcom/htc/urlshorten/IsgdParser$1;->this$0:Lcom/htc/urlshorten/IsgdParser;

    #getter for: Lcom/htc/urlshorten/IsgdParser;->mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;
    invoke-static {v7}, Lcom/htc/urlshorten/IsgdParser;->access$100(Lcom/htc/urlshorten/IsgdParser;)Lcom/htc/urlshorten/IsgdInfo;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/urlshorten/IsgdInfo;->setShortUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 72
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #inputLine:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/net/SocketTimeoutException;
    const-string v7, "KENLOG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<IsgdParser.getShorterUrl> e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 75
    .local v4, msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/urlshorten/IsgdParser;->access$500()I

    move-result v7

    iput v7, v4, Landroid/os/Message;->what:I

    .line 76
    iput-object v10, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/htc/urlshorten/IsgdParser;->access$400()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :goto_1
    return-void

    .line 65
    .end local v4           #msg:Landroid/os/Message;
    .restart local v0       #conn:Ljava/net/URLConnection;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #inputLine:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 67
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 68
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/urlshorten/IsgdParser$1;->this$0:Lcom/htc/urlshorten/IsgdParser;

    #getter for: Lcom/htc/urlshorten/IsgdParser;->mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;
    invoke-static {v7}, Lcom/htc/urlshorten/IsgdParser;->access$100(Lcom/htc/urlshorten/IsgdParser;)Lcom/htc/urlshorten/IsgdInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/urlshorten/IsgdInfo;->getShortUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/urlshorten/IsgdParser$1;->this$0:Lcom/htc/urlshorten/IsgdParser;

    #getter for: Lcom/htc/urlshorten/IsgdParser;->mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;
    invoke-static {v7}, Lcom/htc/urlshorten/IsgdParser;->access$100(Lcom/htc/urlshorten/IsgdParser;)Lcom/htc/urlshorten/IsgdInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/urlshorten/IsgdInfo;->getShortUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-static {}, Lcom/htc/urlshorten/IsgdParser;->access$200()I

    move-result v7

    :goto_2
    iput v7, v4, Landroid/os/Message;->what:I

    .line 69
    iget-object v7, p0, Lcom/htc/urlshorten/IsgdParser$1;->this$0:Lcom/htc/urlshorten/IsgdParser;

    #getter for: Lcom/htc/urlshorten/IsgdParser;->mIsgdInfo:Lcom/htc/urlshorten/IsgdInfo;
    invoke-static {v7}, Lcom/htc/urlshorten/IsgdParser;->access$100(Lcom/htc/urlshorten/IsgdParser;)Lcom/htc/urlshorten/IsgdInfo;

    move-result-object v7

    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    invoke-static {}, Lcom/htc/urlshorten/IsgdParser;->access$400()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 78
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #inputLine:Ljava/lang/String;
    .end local v4           #msg:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 79
    .local v1, e:Ljava/io/IOException;
    const-string v7, "KENLOG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<IsgdParser.getShorterUrl> e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 81
    .restart local v4       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/urlshorten/IsgdParser;->access$300()I

    move-result v7

    iput v7, v4, Landroid/os/Message;->what:I

    .line 82
    iput-object v10, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/htc/urlshorten/IsgdParser;->access$400()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 68
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #conn:Ljava/net/URLConnection;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #inputLine:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/htc/urlshorten/IsgdParser;->access$300()I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    goto :goto_2
.end method
