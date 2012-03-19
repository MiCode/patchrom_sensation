.class public Lcom/android/camera/HeadsetHelper;
.super Ljava/lang/Object;
.source "HeadsetHelper.java"


# static fields
.field public static final PATH_HEADSET_NAME:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field public static final PATH_HEADSET_STATE:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field public static mHeadSetPlugged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private static getHeadsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "/sys/class/switch/h2w/name"

    invoke-static {v0}, Lcom/android/camera/HeadsetHelper;->readLineEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeadsetState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/android/camera/HeadsetHelper;->readLineEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isHeadsetPlugged()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 18
    invoke-static {}, Lcom/android/camera/HeadsetHelper;->getHeadsetName()Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 21
    :cond_0
    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    .line 22
    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    .line 59
    :goto_0
    return v7

    .line 25
    :cond_1
    const/4 v6, 0x0

    .line 28
    .local v6, state:I
    :try_start_0
    invoke-static {}, Lcom/android/camera/HeadsetHelper;->getHeadsetState()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, bstate:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "headset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 37
    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    .line 38
    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0

    .line 29
    .end local v1           #bstate:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 30
    .local v2, e:Ljava/lang/NumberFormatException;
    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    .line 31
    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0

    .line 41
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #bstate:Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_3

    .line 42
    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    .line 43
    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 47
    .local v3, length:I
    const/16 v7, 0x8

    if-lt v3, v7, :cond_4

    .line 48
    add-int/lit8 v5, v3, -0x8

    .line 49
    .local v5, pos:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 50
    .local v0, bit7:C
    const/16 v7, 0x31

    if-ne v0, v7, :cond_4

    .line 51
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    .line 52
    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0

    .line 57
    .end local v0           #bit7:C
    .end local v5           #pos:I
    :cond_4
    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    .line 59
    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0
.end method

.method private static readLineEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 71
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 73
    const/4 v5, 0x0

    .line 93
    :goto_0
    return-object v5

    .line 75
    :cond_0
    const/4 v5, 0x0

    .line 80
    .local v5, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 82
    .local v4, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 85
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 86
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    :goto_1
    const/4 v2, 0x0

    .line 91
    .restart local v2       #fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 92
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 93
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 87
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v3

    .line 88
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
