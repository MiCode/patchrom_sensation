.class public Lcom/htc/music/util/HistoryManager$ActivityHistory;
.super Ljava/lang/Object;
.source "HistoryManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityHistory"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/util/HistoryManager$ActivityHistory;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x7e45f8b209c6de2eL


# instance fields
.field public final currentIntent:Landroid/content/Intent;

.field public final currentTag:Ljava/lang/String;

.field public previousIntent:Landroid/content/Intent;

.field public previousTag:Ljava/lang/String;

.field public final style:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/htc/music/util/HistoryManager$ActivityHistory$1;

    invoke-direct {v0}, Lcom/htc/music/util/HistoryManager$ActivityHistory$1;-><init>()V

    sput-object v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 6
    .parameter "_currentTag"
    .parameter "_currentIntent"
    .parameter "_style"

    .prologue
    .line 52
    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 2
    .parameter "_currentTag"
    .parameter "_currentIntent"
    .parameter "_previousTag"
    .parameter "_previousIntent"
    .parameter "_style"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_currentTag can\'t be null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    .line 64
    iput-object p3, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousTag:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    .line 66
    iput p5, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->style:I

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    .line 71
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 75
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    check-cast p1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .end local p1
    iget-object v2, p1, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->style:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    return-void
.end method
