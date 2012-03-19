.class public Lcom/htc/shutdown/ConfigReader;
.super Ljava/lang/Object;
.source "ConfigReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigReader"


# instance fields
.field private mConfigData:Lcom/htc/shutdown/ConfigData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    .line 32
    new-instance v0, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v0}, Lcom/htc/shutdown/ConfigData;-><init>()V

    iput-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "Config"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    .line 38
    new-instance v0, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v0}, Lcom/htc/shutdown/ConfigData;-><init>()V

    iput-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    .line 39
    invoke-direct {p0, p1}, Lcom/htc/shutdown/ConfigReader;->fromXML(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private fromXML(Ljava/lang/String;)V
    .locals 7
    .parameter "filename"

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, reader:Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 56
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 58
    .local v4, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v2           #reader:Ljava/io/FileReader;
    .local v3, reader:Ljava/io/FileReader;
    const-wide/16 v5, 0x1

    :try_start_1
    invoke-virtual {v3, v5, v6}, Ljava/io/FileReader;->skip(J)J

    .line 63
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 64
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 66
    .local v0, eventType:I
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 78
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    move-object v2, v3

    .line 91
    .end local v0           #eventType:I
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #reader:Ljava/io/FileReader;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2       #reader:Ljava/io/FileReader;
    :goto_1
    return-void

    .line 71
    .end local v2           #reader:Ljava/io/FileReader;
    .restart local v0       #eventType:I
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #reader:Ljava/io/FileReader;
    .restart local v4       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/htc/shutdown/ConfigReader;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 80
    .end local v0           #eventType:I
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/FileReader;
    .restart local v2       #reader:Ljava/io/FileReader;
    goto :goto_1

    .line 87
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v2           #reader:Ljava/io/FileReader;
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #reader:Ljava/io/FileReader;
    .restart local v4       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/FileReader;
    .restart local v2       #reader:Ljava/io/FileReader;
    goto :goto_1

    .line 84
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v2           #reader:Ljava/io/FileReader;
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #reader:Ljava/io/FileReader;
    .restart local v4       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/FileReader;
    .restart local v2       #reader:Ljava/io/FileReader;
    goto :goto_1

    .line 80
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v5

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "xpp"

    .prologue
    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, tagName:Ljava/lang/String;
    const-string v1, "ShutdownAnimation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/htc/shutdown/ConfigReader;->parseShutdown(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    :cond_0
    return-void
.end method

.method private parseShutdown(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "xpp"

    .prologue
    const/4 v3, 0x1

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 103
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->audio:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/shutdown/ConfigData;->screenX:I

    goto :goto_1

    .line 109
    :cond_3
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/shutdown/ConfigData;->screenY:I

    goto :goto_1

    .line 111
    :cond_4
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_bg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->bgPath:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_5
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "useAudio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 115
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    iput-boolean v3, v1, Lcom/htc/shutdown/ConfigData;->useAudio:Z

    goto :goto_1

    .line 117
    :cond_6
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/shutdown/ConfigData;->useAudio:Z

    goto :goto_1

    .line 120
    :cond_7
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->pngPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 122
    :cond_8
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_png_land"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 124
    :cond_9
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/shutdown/ConfigData;->fps:I

    goto/16 :goto_1

    .line 129
    :cond_a
    return-void
.end method


# virtual methods
.method public getConfigData()Lcom/htc/shutdown/ConfigData;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    return-object v0
.end method

.method public parseConfigData(Ljava/lang/String;)V
    .locals 0
    .parameter "Config"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/shutdown/ConfigReader;->fromXML(Ljava/lang/String;)V

    .line 45
    return-void
.end method
