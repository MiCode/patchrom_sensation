.class Lcom/android/camera/widget/SwitchItemListView$1;
.super Ljava/lang/Object;
.source "SwitchItemListView.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SwitchItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SwitchItemListView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SwitchItemListView;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 67
    move-object v0, p1

    check-cast v0, Lcom/android/camera/TwoValuesEvent;

    .line 68
    .local v0, valuesEvent:Lcom/android/camera/TwoValuesEvent;,"Lcom/android/camera/TwoValuesEvent<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    invoke-virtual {v0}, Lcom/android/camera/TwoValuesEvent;->getValue1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/TwoValuesEvent;->getValue2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode(II)V
    invoke-static {v2, v3, v1}, Lcom/android/camera/widget/SwitchItemListView;->access$000(Lcom/android/camera/widget/SwitchItemListView;II)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    invoke-static {v1}, Lcom/android/camera/widget/SwitchItemListView;->access$100(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView$1;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    invoke-static {v1}, Lcom/android/camera/widget/SwitchItemListView;->access$100(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->notifyDataSetChanged()V

    .line 71
    :cond_0
    return-void
.end method
