.class Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;
.super Ljava/lang/Object;
.source "ComposerBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z
    .locals 11
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 1133
    invoke-static {p3, p4}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v6

    .line 1134
    .local v6, position:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v8, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1135
    .local v4, info:Lcom/htc/music/browserlayer/HtcListNode;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-nez v8, :cond_1

    .line 1136
    :cond_0
    const-string v8, "[ComposerBrowserActivityExp]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "info is null in mOnChildClickListener. position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const/4 v8, 0x0

    .line 1201
    :goto_0
    return v8

    .line 1140
    :cond_1
    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v9, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1142
    iget v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v8, :pswitch_data_0

    .line 1201
    :cond_2
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1149
    :pswitch_0
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v7

    .line 1150
    .local v7, rootCursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 1151
    const/4 v8, 0x0

    goto :goto_0

    .line 1152
    :cond_3
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, composer:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1154
    const-string v2, "<unknown>"

    .line 1155
    :cond_4
    iget v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-nez v8, :cond_5

    .line 1157
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v2, v9, v10}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1158
    :cond_5
    iget v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 1160
    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1161
    .local v1, artistId:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v9, 0x0

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v2, v9, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1166
    .end local v1           #artistId:Ljava/lang/String;
    .end local v2           #composer:Ljava/lang/String;
    .end local v7           #rootCursor:Landroid/database/Cursor;
    :pswitch_1
    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1168
    .local v5, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    const/4 v2, 0x0

    .line 1170
    .restart local v2       #composer:Ljava/lang/String;
    iget v3, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 1171
    .local v3, cursorPosition:I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_8

    .line 1172
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v7

    .line 1173
    .restart local v7       #rootCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 1174
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1176
    :cond_6
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1177
    const-string v2, "<unknown>"

    .line 1178
    :cond_7
    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, albumId:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v9, 0x0

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v2, v0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1182
    .end local v0           #albumId:Ljava/lang/String;
    .end local v7           #rootCursor:Landroid/database/Cursor;
    :cond_8
    const/4 v8, 0x2

    if-ne v3, v8, :cond_2

    .line 1184
    iget-object v7, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1185
    .restart local v7       #rootCursor:Landroid/database/Cursor;
    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1187
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1188
    const-string v2, "<unknown>"

    .line 1190
    :cond_9
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1193
    .restart local v1       #artistId:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v8, v8, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v9, 0x0

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v2, v9, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
