.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mIdIdx:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTitleIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 1225
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1183
    iput-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    .line 1187
    iput-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 1226
    iput-object p2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    .line 1227
    invoke-direct {p0, p4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1228
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 1229
    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1232
    if-eqz p1, :cond_0

    .line 1233
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    .line 1234
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    .line 1236
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    .line 1260
    const v6, 0x7f080043

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 1261
    .local v5, tv:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1263
    iget v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1264
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    iget-object v6, v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1265
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    iget-object v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    iget-object v7, v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v6, v4, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1267
    .local v3, markedString:Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 1271
    .end local v3           #markedString:Ljava/lang/CharSequence;
    :goto_0
    iget v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1273
    .local v0, id:J
    const v6, 0x7f080045

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    .line 1274
    .local v2, iv:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v2, :cond_1

    .line 1275
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1277
    :cond_0
    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1278
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I
    invoke-static {v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1280
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    iget-object v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setCheckedView(Landroid/view/View;JZ)V

    .line 1287
    :cond_1
    :goto_1
    return-void

    .line 1269
    .end local v0           #id:J
    .end local v2           #iv:Lcom/htc/widget/HtcListItemImageButton;
    :cond_2
    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 1282
    .restart local v0       #id:J
    .restart local v2       #iv:Lcom/htc/widget/HtcListItemImageButton;
    :cond_3
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    iget-object v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v7

    invoke-virtual {v6, p1, v7, v8, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setCheckedView(Landroid/view/View;JZ)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$1202(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1305
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateOptionsMenu()V

    .line 1306
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1309
    :cond_0
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 0
    .parameter "section"

    .prologue
    .line 1335
    return p1
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1339
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1329
    const/4 v0, 0x0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1249
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1251
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$ItemViewHolder;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$ItemViewHolder;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;)V

    .line 1252
    .local v0, holder:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$ItemViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1253
    return-object v1
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    .line 1291
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    if-nez v1, :cond_0

    .line 1299
    :goto_0
    return-void

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v2, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1296
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 1298
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 1313
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1316
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1321
    :goto_0
    return-object v0

    .line 1318
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1319
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 1320
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    .line 1240
    return-void
.end method
