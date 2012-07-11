.class Lcom/htc/app/FilePickerActivity$13;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1489
    const/4 v0, 0x0

    .line 1490
    .local v0, fileCount_listView:I
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1491
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 1495
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1558
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$1200(Lcom/htc/app/FilePickerActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1559
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1560
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mSortOrder:I
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$300(Lcom/htc/app/FilePickerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerFolderAdapter;->setSortOrder(I)V

    .line 1561
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mSortType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$200(Lcom/htc/app/FilePickerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerFolderAdapter;->setSortBy(I)V

    .line 1562
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter;->sort()V

    .line 1566
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortSelectedItem:I
    invoke-static {v1, p2}, Lcom/htc/app/FilePickerActivity;->access$3602(Lcom/htc/app/FilePickerActivity;I)I

    .line 1570
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mIsShowDialog:Z
    invoke-static {v1, v3}, Lcom/htc/app/FilePickerActivity;->access$3502(Lcom/htc/app/FilePickerActivity;Z)Z

    .line 1571
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1573
    return-void

    .line 1497
    :pswitch_0
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortType:I
    invoke-static {v1, v3}, Lcom/htc/app/FilePickerActivity;->access$202(Lcom/htc/app/FilePickerActivity;I)I

    .line 1498
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortOrder:I
    invoke-static {v1, v3}, Lcom/htc/app/FilePickerActivity;->access$302(Lcom/htc/app/FilePickerActivity;I)I

    .line 1499
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2700(Lcom/htc/app/FilePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 1502
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 1504
    if-lez v0, :cond_3

    .line 1505
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 1506
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    const-string v2, "GarbageMessage_LongVacation"

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActivity;->notifyTextChanged(Ljava/lang/String;)V

    .line 1507
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$1200(Lcom/htc/app/FilePickerActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1508
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActivity;->notifyTextChanged()V

    goto/16 :goto_0

    .line 1513
    :pswitch_1
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortType:I
    invoke-static {v1, v3}, Lcom/htc/app/FilePickerActivity;->access$202(Lcom/htc/app/FilePickerActivity;I)I

    .line 1514
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortOrder:I
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerActivity;->access$302(Lcom/htc/app/FilePickerActivity;I)I

    .line 1515
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2700(Lcom/htc/app/FilePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1516
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 1518
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 1520
    if-lez v0, :cond_4

    .line 1521
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 1522
    :cond_4
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    const-string v2, "GarbageMessage_LongVacation"

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActivity;->notifyTextChanged(Ljava/lang/String;)V

    .line 1523
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$1200(Lcom/htc/app/FilePickerActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1524
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActivity;->notifyTextChanged()V

    goto/16 :goto_0

    .line 1528
    :pswitch_2
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortType:I
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerActivity;->access$202(Lcom/htc/app/FilePickerActivity;I)I

    .line 1529
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortOrder:I
    invoke-static {v1, v3}, Lcom/htc/app/FilePickerActivity;->access$302(Lcom/htc/app/FilePickerActivity;I)I

    .line 1530
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2700(Lcom/htc/app/FilePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1531
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 1533
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 1535
    if-lez v0, :cond_5

    .line 1536
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 1537
    :cond_5
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    const-string v2, "GarbageMessage_LongVacation"

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActivity;->notifyTextChanged(Ljava/lang/String;)V

    .line 1538
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$1200(Lcom/htc/app/FilePickerActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1539
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActivity;->notifyTextChanged()V

    goto/16 :goto_0

    .line 1543
    :pswitch_3
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortType:I
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerActivity;->access$202(Lcom/htc/app/FilePickerActivity;I)I

    .line 1544
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mSortOrder:I
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerActivity;->access$302(Lcom/htc/app/FilePickerActivity;I)I

    .line 1545
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2700(Lcom/htc/app/FilePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 1548
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FileSorter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 1550
    if-lez v0, :cond_6

    .line 1551
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$2000(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 1552
    :cond_6
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    const-string v2, "GarbageMessage_LongVacation"

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActivity;->notifyTextChanged(Ljava/lang/String;)V

    .line 1553
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerActivity;->access$1200(Lcom/htc/app/FilePickerActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1554
    iget-object v1, p0, Lcom/htc/app/FilePickerActivity$13;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActivity;->notifyTextChanged()V

    goto/16 :goto_0

    .line 1495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
