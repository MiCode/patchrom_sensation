.class Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2100(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2100(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2100(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$802(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 1029
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1700(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    monitor-enter v1

    .line 1031
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2100(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    .line 1032
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    .line 1050
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->stopScan()V

    .line 1051
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    const/4 v1, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1902(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView;

    .line 1052
    return-void

    .line 1032
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1800(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    monitor-enter v1

    .line 1037
    :try_start_2
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2100(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 1039
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    monitor-enter v1

    .line 1042
    :try_start_3
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2100(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 1044
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
