.class public Lcom/android/internal/telephony/APNParam;
.super Ljava/lang/Object;
.source "APNParam.java"


# instance fields
.field public class_id:I

.field public id:I

.field public name:Ljava/lang/String;

.field public state:I

.field public timer:I

.field public type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;III)V
    .locals 0
    .parameter "n_id"
    .parameter "n_class"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    .line 40
    iput p2, p0, Lcom/android/internal/telephony/APNParam;->class_id:I

    .line 41
    iput-object p3, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/android/internal/telephony/APNParam;->type:I

    .line 43
    iput p5, p0, Lcom/android/internal/telephony/APNParam;->state:I

    .line 44
    iput p6, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->class_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
