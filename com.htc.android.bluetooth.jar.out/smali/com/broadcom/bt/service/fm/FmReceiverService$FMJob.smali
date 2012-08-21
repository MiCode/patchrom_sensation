.class Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
.super Ljava/lang/Object;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FMJob"
.end annotation


# instance fields
.field arg1:I

.field arg2:I

.field arg3:I

.field arg4:I

.field b_arg1:Z

.field final command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field timeSent:J


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V
    .locals 2
    .parameter "command"
    .parameter "arg1"

    .prologue
    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 150
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 157
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    .line 158
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;III)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 165
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    .line 166
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    .line 167
    iput p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 174
    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    .line 175
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    .line 176
    iput p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    .line 177
    iput p5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;Z)V
    .locals 2
    .parameter "command"
    .parameter "b_arg1"

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 184
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;ZI)V
    .locals 2
    .parameter "command"
    .parameter "b_arg1"
    .parameter "arg2"

    .prologue
    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 191
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    .line 192
    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    .line 193
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, " TimeSent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-wide v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 202
    const-string v1, "not yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 204
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
