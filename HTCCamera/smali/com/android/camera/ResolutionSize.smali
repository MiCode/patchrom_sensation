.class public final Lcom/android/camera/ResolutionSize;
.super Ljava/lang/Object;
.source "ResolutionSize.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static rsInstance:Lcom/android/camera/ResolutionSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    const-string v0, "ResolutionSize"

    sput-object v0, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    .line 8
    sput-object v1, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    .line 9
    sput-object v1, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v1, "ResolutionSize"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    .line 22
    invoke-static {}, Lcom/android/camera/ResolutionSize;->init()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/android/camera/ResolutionSize;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/camera/ResolutionSize;

    invoke-direct {v0}, Lcom/android/camera/ResolutionSize;-><init>()V

    sput-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    .line 15
    :cond_0
    sget-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    return-object v0
.end method

.method private static init()V
    .locals 11

    .prologue
    const v10, 0x147260

    const v9, 0xfb770

    const v8, 0x2bf20

    const v7, 0x61a80

    const v6, 0x3d090

    .line 27
    sget-object v4, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v5, "init"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v2, "_super"

    .line 30
    .local v2, high:Ljava/lang/String;
    const-string v1, "_fine"

    .line 31
    .local v1, fine:Ljava/lang/String;
    const-string v3, "_normal"

    .line 32
    .local v3, normal:Ljava/lang/String;
    const-string v0, "_basic"

    .line 37
    .local v0, basic:Ljava/lang/String;
    const v4, 0x7f0a00ee

    const v5, 0x1312d0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 38
    const v4, 0x7f0a00ee

    const v5, 0x9c400

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 39
    const v4, 0x7f0a00ee

    const v5, 0x5f370

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 40
    const v4, 0x7f0a00ee

    const v5, 0x30d40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 42
    const v4, 0x7f0a00ec

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 43
    const v4, 0x7f0a00ec

    const v5, 0x5cc60

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 44
    const v4, 0x7f0a00ec

    const v5, 0x35b60

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 45
    const v4, 0x7f0a00ec

    const v5, 0x1adb0

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 47
    const v4, 0x7f0a00ea

    const v5, 0x3f7a0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 48
    const v4, 0x7f0a00ea

    const v5, 0x249f0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 49
    const v4, 0x7f0a00ea

    const v5, 0x186a0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 50
    const v4, 0x7f0a00ea

    const v5, 0xea60

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 52
    const v4, 0x7f0a00e9

    const v5, 0x13c68

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 53
    const v4, 0x7f0a00e9

    const v5, 0xcf08

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 54
    const v4, 0x7f0a00e9

    const/16 v5, 0x7918

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 55
    const v4, 0x7f0a00e9

    const/16 v5, 0x4e20

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 78
    const v4, 0x7f0a00f4

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 79
    const v4, 0x7f0a00f4

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 80
    const v4, 0x7f0a00f4

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 82
    const v4, 0x7f0a00f3

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 83
    const v4, 0x7f0a00f3

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 84
    const v4, 0x7f0a00f3

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 85
    const v4, 0x7f0a00f3

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 87
    const v4, 0x7f0a0104

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 88
    const v4, 0x7f0a0104

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 89
    const v4, 0x7f0a0104

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 90
    const v4, 0x7f0a0104

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 92
    const v4, 0x7f0a00f2

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 93
    const v4, 0x7f0a00f2

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 94
    const v4, 0x7f0a00f2

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 95
    const v4, 0x7f0a00f2

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 97
    const v4, 0x7f0a00f1

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 98
    const v4, 0x7f0a00f1

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 99
    const v4, 0x7f0a00f1

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 100
    const v4, 0x7f0a00f1

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 102
    const v4, 0x7f0a00f0

    const v5, 0x1adb0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 103
    const v4, 0x7f0a00f0

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 104
    const v4, 0x7f0a00f0

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 105
    const v4, 0x7f0a00f0

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 129
    const v4, 0x7f0a00fa

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 130
    const v4, 0x7f0a00fa

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 131
    const v4, 0x7f0a00fa

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 133
    const v4, 0x7f0a00f9

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 134
    const v4, 0x7f0a00f9

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 135
    const v4, 0x7f0a00f9

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 136
    const v4, 0x7f0a00f9

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 138
    const v4, 0x7f0a0103

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 139
    const v4, 0x7f0a0103

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 140
    const v4, 0x7f0a0103

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 141
    const v4, 0x7f0a0103

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 143
    const v4, 0x7f0a00f8

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 144
    const v4, 0x7f0a00f8

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 145
    const v4, 0x7f0a00f8

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 146
    const v4, 0x7f0a00f8

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 149
    const v4, 0x7f0a00f7

    const v5, 0x7a120

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 150
    const v4, 0x7f0a00f7

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 151
    const v4, 0x7f0a00f7

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 152
    const v4, 0x7f0a00f7

    const v5, 0x222e0

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 154
    const v4, 0x7f0a00f6

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 155
    const v4, 0x7f0a00f6

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 156
    const v4, 0x7f0a00f6

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 157
    const v4, 0x7f0a00f6

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 159
    const v4, 0x7f0a00f5

    const v5, 0x1adb0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 160
    const v4, 0x7f0a00f5

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 161
    const v4, 0x7f0a00f5

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 162
    const v4, 0x7f0a00f5

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 165
    const v4, 0x7f0a00ff

    invoke-static {v4, v2, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 166
    const v4, 0x7f0a00ff

    invoke-static {v4, v1, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 167
    const v4, 0x7f0a00ff

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 168
    const v4, 0x7f0a00ff

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 170
    const v4, 0x7f0a00fe

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 171
    const v4, 0x7f0a00fe

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 172
    const v4, 0x7f0a00fe

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 173
    const v4, 0x7f0a00fe

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 175
    const v4, 0x7f0a00fc

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 176
    const v4, 0x7f0a00fc

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 177
    const v4, 0x7f0a00fc

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 178
    const v4, 0x7f0a00fc

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 182
    const v4, 0x7f0a00fd

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 184
    const v4, 0x7f0a00fd

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 186
    const v4, 0x7f0a00fd

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 188
    const v4, 0x7f0a00fd

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 190
    const v4, 0x7f0a00fb

    const v5, 0x1adb0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 191
    const v4, 0x7f0a00fb

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 192
    const v4, 0x7f0a00fb

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 193
    const v4, 0x7f0a00fb

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 198
    const v4, 0x7f0a00e6

    const v5, 0x1e8480

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 199
    const v4, 0x7f0a00e6

    const v5, 0x120160

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 200
    const v4, 0x7f0a00e6

    const v5, 0xad570

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 202
    const v4, 0x7f0a00e5

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 203
    const v4, 0x7f0a00e5

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 204
    const v4, 0x7f0a00e5

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 205
    const v4, 0x7f0a00e5

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 207
    const v4, 0x7f0a0102

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 208
    const v4, 0x7f0a0102

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 209
    const v4, 0x7f0a0102

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 210
    const v4, 0x7f0a0102

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 212
    const v4, 0x7f0a00e3

    const v5, 0xcaa30

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 213
    const v4, 0x7f0a00e3

    const v5, 0x8b290

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 214
    const v4, 0x7f0a00e3

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 215
    const v4, 0x7f0a00e3

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 218
    const v4, 0x7f0a00e2

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 219
    const v4, 0x7f0a00e2

    const v5, 0x7c830

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 220
    const v4, 0x7f0a00e2

    const v5, 0x5a550

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 221
    const v4, 0x7f0a00e2

    const v5, 0x1a1f8

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 223
    const v4, 0x7f0a00e1

    const v5, 0x900b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 224
    const v4, 0x7f0a00e1

    const v5, 0x64190

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 225
    const v4, 0x7f0a00e1

    const v5, 0x53020

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 226
    const v4, 0x7f0a00e1

    const v5, 0x14c08

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 228
    const v4, 0x7f0a00df

    invoke-static {v4, v2, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 229
    const v4, 0x7f0a00df

    const v5, 0x222e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 230
    const v4, 0x7f0a00df

    const v5, 0x1fbd0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 231
    const v4, 0x7f0a00df

    const v5, 0xbb80

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 254
    const v4, 0x7f0a0100

    const v5, 0x160c88

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 255
    const v4, 0x7f0a0100

    const v5, 0xeb988

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 256
    const v4, 0x7f0a0100

    const v5, 0x83d60

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 257
    const v4, 0x7f0a0100

    const v5, 0x4a768

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 260
    const v4, 0x7f0a00e8

    const v5, 0xa028

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 261
    const v4, 0x7f0a00e8

    const/16 v5, 0x5208

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 262
    const v4, 0x7f0a00e8

    const/16 v5, 0x32c8

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 263
    const v4, 0x7f0a00e8

    const/16 v5, 0x2328

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 264
    return-void
.end method

.method private static put(ILjava/lang/String;I)V
    .locals 4
    .parameter "resolutionID"
    .parameter "QualityKey"
    .parameter "nSize"

    .prologue
    .line 267
    sget-object v0, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method


# virtual methods
.method public getSize(ILjava/lang/String;)I
    .locals 4
    .parameter "resolutionID"
    .parameter "QualityKey"

    .prologue
    .line 274
    sget-object v2, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v3, "getSize"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, sb:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 277
    .local v0, nValue:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
