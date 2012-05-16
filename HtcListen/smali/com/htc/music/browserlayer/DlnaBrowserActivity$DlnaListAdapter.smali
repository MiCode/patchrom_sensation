.class Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DlnaBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mResources:Landroid/content/res/Resources;

.field private mServerIcon:Lcom/htc/widget/HtcListItemTileImage;

.field private mServerIconIndex:I

.field private mServerIndex:I

.field private mServerName:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 641
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 636
    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 637
    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mResources:Landroid/content/res/Resources;

    .line 642
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mResources:Landroid/content/res/Resources;

    .line 645
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x2080245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 647
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 653
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 661
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    int-to-long v0, p1

    .line 668
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 672
    if-nez p2, :cond_0

    .line 673
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$600(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 676
    :cond_0
    const v3, 0x7f080043

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mServerName:Lcom/htc/widget/HtcListItem2LineText;

    .line 677
    const v3, 0x7f080042

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mServerIcon:Lcom/htc/widget/HtcListItemTileImage;

    .line 679
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 682
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mServerName:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 683
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mServerName:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 684
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetImg()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 685
    .local v0, bmImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 686
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mServerIcon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 728
    .end local v0           #bmImage:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p2

    .line 690
    .restart local v0       #bmImage:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, filePath:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 693
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v3, v2, v4}, Lcom/htc/music/util/MusicUtils;->getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_3

    .line 695
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mServerIcon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 696
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->SetImg(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 701
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mServerIcon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 703
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 706
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    const-string v3, "DLNA"

    const-string v4, "getView()...(filePath != null)...mService is null..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 713
    :cond_5
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mServerIcon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 715
    :try_start_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 716
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 721
    :catch_1
    move-exception v1

    .line 722
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 719
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_3
    const-string v3, "DLNA"

    const-string v4, "getView()...(filePath == null)...mService is null..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
