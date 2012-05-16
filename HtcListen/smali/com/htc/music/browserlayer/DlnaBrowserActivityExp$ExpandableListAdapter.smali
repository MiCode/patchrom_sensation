.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandableListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    .line 1206
    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 1202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    .line 1208
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 1209
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    .line 1210
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1211
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x2080245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1214
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1252
    if-nez p4, :cond_0

    .line 1253
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000d

    invoke-virtual {v4, v5, p5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 1256
    :cond_0
    invoke-static {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v2

    .line 1257
    .local v2, position:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    .line 1259
    .local v1, info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    const v4, 0x7f080043

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 1260
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    const v4, 0x7f080042

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    .line 1261
    .local v0, icon:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1262
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1265
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 1266
    const-string v4, "DLNA"

    const-string v5, "music folder"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1268
    const v4, 0x7f020003

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 1279
    :goto_0
    return-object p4

    .line 1270
    :cond_1
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 1271
    const v4, 0x7f0700c7

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1272
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_0

    .line 1275
    :cond_2
    const v4, 0x208024f

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 1276
    const-string v4, "DLNA"

    const-string v5, "get child view, show default icon"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 1
    .parameter "groupPosition"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1245
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1247
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 1284
    if-nez p3, :cond_0

    .line 1285
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03000d

    invoke-virtual {v8, v9, p4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1288
    :cond_0
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    .line 1290
    .local v5, info:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    const v8, 0x7f080043

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    .line 1291
    .local v7, text:Lcom/htc/widget/HtcListItem2LineText;
    const v8, 0x7f080042

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 1292
    .local v4, icon:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1293
    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1295
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 1296
    .local v6, paddingRight:I
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v9

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v9, v6, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    .line 1299
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetParentID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1302
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1303
    const v8, 0x208024f

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 1305
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1306
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1307
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v6, v8

    .line 1308
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v9

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v9, v6, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    .line 1360
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-object p3

    .line 1313
    :cond_2
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetImg()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1317
    .local v0, bmImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 1318
    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1322
    :cond_3
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v3

    .line 1323
    .local v3, filePath:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1325
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v8, v3, v9}, Lcom/htc/music/util/MusicUtils;->getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1326
    if-eqz v0, :cond_4

    .line 1327
    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1328
    invoke-virtual {v5, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->SetImg(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1333
    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1334
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1335
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1340
    :catch_0
    move-exception v2

    .line 1341
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1338
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    const-string v8, "DLNA"

    const-string v9, "getView()...(filePath != null)...mService is null..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1345
    :cond_6
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1347
    :try_start_2
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1348
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1353
    :catch_1
    move-exception v2

    .line 1354
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1351
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_7
    :try_start_3
    const-string v8, "DLNA"

    const-string v9, "getView()...(filePath == null)...mService is null..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 1224
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1225
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-object v0

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1237
    int-to-long v0, p1

    .line 1239
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
