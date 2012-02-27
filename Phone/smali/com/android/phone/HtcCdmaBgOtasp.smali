.class public Lcom/android/phone/HtcCdmaBgOtasp;
.super Landroid/app/Activity;
.source "HtcCdmaBgOtasp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final DIALOG_TYPE_FAIL:I = 0x2

.field public static final DIALOG_TYPE_NONE:I = 0x0

.field public static final DIALOG_TYPE_PROGRESSING:I = 0x1

.field public static final DIALOG_TYPE_SUCCESS:I = 0x3

.field private static final DIALOG_TYPE_UI_OTA_CALL_FAIL__BASE:I = 0x4

.field public static final DIALOG_TYPE_UI_OTA_CALL_FAIL__NO_SIM:I = 0x5

.field public static final DIALOG_TYPE_UI_OTA_CALL_FAIL__SIM_PROVISIONED:I = 0x6

.field public static final DIALOG_TYPE_UI_OTA_CALL_FAIL__SIM_UNPROVISIONED:I = 0x7

.field private static final EVENT_SIMPLE_DIALOG_TIMEOUT:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final FEATURE_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaBgOtasp"


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDialogDiaplyed:Z

.field private mDialogIndex:I

.field private mDialogTimeout:I

.field private mDialogType:I

.field private mDisplayingDialog:Landroid/content/DialogInterface;

.field private mHandler:Landroid/os/Handler;

.field private mProgressingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    sput-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaBgOtasp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCdmaBgOtasp;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/HtcCdmaBgOtasp;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/phone/HtcCdmaBgOtasp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaBgOtasp$1;-><init>(Lcom/android/phone/HtcCdmaBgOtasp;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mHandler:Landroid/os/Handler;

    .line 106
    :cond_0
    return-void
.end method

.method private updateDialog(II)V
    .locals 13
    .parameter "prevDialogType"
    .parameter "dialogType"

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 111
    sget-boolean v9, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v9, :cond_0

    .line 112
    const/4 v5, 0x0

    .line 113
    .local v5, mPreviousDialog:Lcom/htc/widget/HtcAlertDialog;
    const-string v9, "HtcCdmaBgOtasp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", curr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-lez p1, :cond_2

    if-eq p1, p2, :cond_2

    .line 115
    const/4 v9, 0x4

    if-lt p2, v9, :cond_1

    if-ne p1, v8, :cond_1

    .line 218
    .end local v5           #mPreviousDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v5       #mPreviousDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    iget-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v9, :cond_2

    .line 120
    iput-object v12, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDisplayingDialog:Landroid/content/DialogInterface;

    .line 121
    iget-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 122
    iget-object v5, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 123
    iput-object v12, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 126
    :cond_2
    const/4 v4, -0x1

    .line 127
    .local v4, idTitle:I
    const/4 v2, -0x1

    .line 128
    .local v2, idDialogString:I
    const/4 v1, -0x1

    .line 129
    .local v1, idButton:I
    const/4 v3, -0x1

    .line 130
    .local v3, idIcon:I
    iput-object v12, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mProgressingView:Landroid/view/View;

    .line 131
    packed-switch p2, :pswitch_data_0

    .line 171
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_6

    .line 172
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 173
    iput-object v12, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 133
    :pswitch_1
    const v4, 0x7f0e019a

    .line 134
    const v3, 0x108009b

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030021

    invoke-virtual {v9, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mProgressingView:Landroid/view/View;

    .line 180
    :goto_1
    iget v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    .local v0, context:Landroid/content/Context;
    iget-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v9, :cond_3

    .line 184
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    if-eqz v10, :cond_7

    :goto_2
    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 189
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 191
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 194
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 195
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 196
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 198
    :cond_3
    if-gez v2, :cond_8

    .line 199
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 204
    :goto_3
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mProgressingView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    .line 206
    const/4 v7, 0x0

    .line 207
    .local v7, positiveText:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 208
    .local v6, negativeText:Ljava/lang/CharSequence;
    if-ltz v1, :cond_4

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 211
    :cond_4
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v7, p0}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 212
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v9, -0x2

    invoke-virtual {v8, v9, v6, p0}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 213
    if-ltz v3, :cond_5

    .line 214
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, v3}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 216
    :cond_5
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 139
    .end local v0           #context:Landroid/content/Context;
    .end local v6           #negativeText:Ljava/lang/CharSequence;
    .end local v7           #positiveText:Ljava/lang/CharSequence;
    :pswitch_2
    const v4, 0x7f0e019a

    .line 140
    const v2, 0x7f0e019c

    .line 141
    const v1, 0x104000a

    .line 142
    const v3, 0x1080027

    .line 143
    const/16 v9, 0x2710

    iput v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    goto/16 :goto_1

    .line 146
    :pswitch_3
    const v4, 0x7f0e019a

    .line 147
    const v2, 0x7f0e019d

    .line 148
    const v1, 0x104000a

    .line 149
    const v3, 0x108009b

    .line 150
    const/16 v9, 0x1388

    iput v9, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    goto/16 :goto_1

    .line 153
    :pswitch_4
    const v4, 0x7f0e019a

    .line 154
    const v2, 0x7f0e019e

    .line 155
    const v1, 0x104000a

    .line 156
    const v3, 0x1080027

    .line 157
    goto/16 :goto_1

    .line 159
    :pswitch_5
    const v4, 0x7f0e019a

    .line 160
    const v2, 0x7f0e019f

    .line 161
    const v1, 0x104000a

    .line 162
    const v3, 0x108009b

    .line 163
    goto/16 :goto_1

    .line 165
    :pswitch_6
    const v4, 0x7f0e019a

    .line 166
    const v2, 0x7f0e01a0

    .line 167
    const v1, 0x104000a

    .line 168
    const v3, 0x1080027

    .line 169
    goto/16 :goto_1

    .line 176
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->finish()V

    goto/16 :goto_0

    .line 184
    .restart local v0       #context:Landroid/content/Context;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 202
    :cond_8
    iget-object v8, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 81
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 83
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 251
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 242
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-boolean v1, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 49
    if-eqz p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 254
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDisplayingDialog:Landroid/content/DialogInterface;

    if-ne v0, p1, :cond_1

    .line 256
    const-string v0, "HtcCdmaBgOtasp"

    const-string v1, "dismiss and finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->finish()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string v0, "HtcCdmaBgOtasp"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 59
    sget-boolean v1, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 60
    iget v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    add-int/lit8 v0, v1, -0x1

    .line 61
    .local v0, prevDialogType:I
    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    .line 62
    iget v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcCdmaBgOtasp;->updateDialog(II)V

    .line 64
    .end local v0           #prevDialogType:I
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 70
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogDiaplyed:Z

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaBgOtasp;->createHandler()V

    .line 72
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogType:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcCdmaBgOtasp;->updateDialog(II)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogDiaplyed:Z

    .line 76
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 222
    sget-boolean v0, Lcom/android/phone/HtcCdmaBgOtasp;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_2

    .line 223
    iget v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    if-lez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogIndex:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 229
    :cond_0
    iput v4, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDialogTimeout:I

    .line 231
    :cond_1
    iput-object p1, p0, Lcom/android/phone/HtcCdmaBgOtasp;->mDisplayingDialog:Landroid/content/DialogInterface;

    .line 233
    :cond_2
    return-void
.end method
