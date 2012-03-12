.class public Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SwitchItemListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SwitchItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchItemAdapter"
.end annotation


# instance fields
.field private m_CameraSwitchItem:Lcom/android/camera/widget/SwitchItem;

.field private m_ModeSwitchItem:Lcom/android/camera/widget/SwitchItem;

.field final synthetic this$0:Lcom/android/camera/widget/SwitchItemListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/SwitchItemListView;)V
    .locals 3
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    new-instance v0, Lcom/android/camera/widget/SwitchItem;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {p1}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/widget/SwitchItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_CameraSwitchItem:Lcom/android/camera/widget/SwitchItem;

    .line 195
    new-instance v0, Lcom/android/camera/widget/SwitchItem;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {p1}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/widget/SwitchItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_ModeSwitchItem:Lcom/android/camera/widget/SwitchItem;

    .line 197
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_CameraSwitchItem:Lcom/android/camera/widget/SwitchItem;

    const v1, 0x7f0200c6

    const v2, 0x7f0200c4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/SwitchItem;->setImage(II)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_CameraSwitchItem:Lcom/android/camera/widget/SwitchItem;

    const v1, 0x7f0a01bb

    const v2, 0x7f0a01bc

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/SwitchItem;->setText(II)V

    .line 200
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_ModeSwitchItem:Lcom/android/camera/widget/SwitchItem;

    const v1, 0x7f0200c5

    const v2, 0x7f0200c7

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/SwitchItem;->setImage(II)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_ModeSwitchItem:Lcom/android/camera/widget/SwitchItem;

    const v1, 0x7f0a01bd

    const v2, 0x7f0a01be

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/SwitchItem;->setText(II)V

    .line 204
    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {p1}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {p1}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_ModeSwitchItem:Lcom/android/camera/widget/SwitchItem;

    invoke-virtual {v0}, Lcom/android/camera/widget/SwitchItem;->setDisable()V

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 263
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-object p2

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->isCameraMode:Z
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$600(Lcom/android/camera/widget/SwitchItemListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_ModeSwitchItem:Lcom/android/camera/widget/SwitchItem;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    .line 232
    :goto_1
    iget-object p2, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_ModeSwitchItem:Lcom/android/camera/widget/SwitchItem;

    .line 235
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_ModeSwitchItem:Lcom/android/camera/widget/SwitchItem;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    goto :goto_1

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->is2ndCam:Z
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$700(Lcom/android/camera/widget/SwitchItemListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_CameraSwitchItem:Lcom/android/camera/widget/SwitchItem;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    .line 246
    :goto_2
    iget-object p2, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_CameraSwitchItem:Lcom/android/camera/widget/SwitchItem;

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->m_CameraSwitchItem:Lcom/android/camera/widget/SwitchItem;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    goto :goto_2

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
