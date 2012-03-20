.class Lcom/android/htcdialer/Dialer$12;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Lcom/android/htcdialer/widget/OnItemScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->setupOnItemScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 2421
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$12;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollLeft(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$12;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->updateUserSelectionByPosition(I)V
    invoke-static {v0, p1}, Lcom/android/htcdialer/Dialer;->access$2200(Lcom/android/htcdialer/Dialer;I)V

    .line 2425
    return-void
.end method

.method public onScrollRight(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$12;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->updateUserSelectionByPosition(I)V
    invoke-static {v0, p1}, Lcom/android/htcdialer/Dialer;->access$2200(Lcom/android/htcdialer/Dialer;I)V

    .line 2429
    return-void
.end method
