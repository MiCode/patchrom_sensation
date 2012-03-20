.class final Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "HtcIpDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/HtcIpDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/HtcIpDialActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/HtcIpDialActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    .line 106
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 107
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

    const/4 v9, 0x1

    .line 111
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 114
    .local v6, state:I
    sget-boolean v7, Lcom/android/htcdialer/HtcIpDialActivity;->sSupportSetting:Z

    if-eqz v7, :cond_0

    .line 115
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 118
    :cond_0
    iget-object v7, p0, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #getter for: Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/htcdialer/HtcIpDialActivity;->access$000(Lcom/android/htcdialer/HtcIpDialActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.EDIT"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-ne v6, v9, :cond_1

    iget-object v7, p0, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #getter for: Lcom/android/htcdialer/HtcIpDialActivity;->mDefaultNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/htcdialer/HtcIpDialActivity;->access$100(Lcom/android/htcdialer/HtcIpDialActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 120
    iget-object v7, p0, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #setter for: Lcom/android/htcdialer/HtcIpDialActivity;->mDefaultNumber:Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/android/htcdialer/HtcIpDialActivity;->access$102(Lcom/android/htcdialer/HtcIpDialActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v7, p0, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/android/htcdialer/HtcIpDialActivity;->access$200(Lcom/android/htcdialer/HtcIpDialActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 124
    :cond_1
    new-instance v7, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v8, "ip_dial_item"

    invoke-direct {v7, v8}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v7, p0, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #getter for: Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/htcdialer/HtcIpDialActivity;->access$000(Lcom/android/htcdialer/HtcIpDialActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 128
    const v7, 0x2020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 129
    .local v4, numberView:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 130
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_2
    const v7, 0x2020013

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 134
    .local v5, stamp:Landroid/widget/TextView;
    if-eqz v5, :cond_3

    .line 137
    if-ne v6, v9, :cond_4

    const-string v7, "default"

    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v4           #numberView:Landroid/widget/TextView;
    .end local v5           #stamp:Landroid/widget/TextView;
    :cond_3
    :goto_1
    return-void

    .line 137
    .restart local v4       #numberView:Landroid/widget/TextView;
    .restart local v5       #stamp:Landroid/widget/TextView;
    :cond_4
    const-string v7, ""

    goto :goto_0

    .line 140
    .end local v4           #numberView:Landroid/widget/TextView;
    .end local v5           #stamp:Landroid/widget/TextView;
    :cond_5
    const v7, 0x2020126

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 142
    .local v0, chk:Landroid/widget/CheckedTextView;
    if-eqz v0, :cond_3

    .line 143
    iget-object v7, p0, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #getter for: Lcom/android/htcdialer/HtcIpDialActivity;->mAction:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/htcdialer/HtcIpDialActivity;->access$000(Lcom/android/htcdialer/HtcIpDialActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.DELETE"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 144
    const-string v7, "common_delete"

    const-string v8, "drawable"

    const v9, 0x20801aa

    invoke-static {v7, v8, v9}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, d:I
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 148
    .end local v1           #d:I
    :cond_6
    iget-object v7, p0, Lcom/android/htcdialer/HtcIpDialActivity$ListItemAdapter;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    invoke-virtual {v7}, Lcom/android/htcdialer/HtcIpDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 150
    .local v2, gap:I
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v0, v2, v10, v2, v10}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    goto :goto_1
.end method
