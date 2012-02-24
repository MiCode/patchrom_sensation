.class Lcom/android/internal/policy/impl/DeviceUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "DeviceUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final ACTION_OMADM_PIN_CHECK:Ljava/lang/String; = "com.htc.android.omadm.pin.check"

.field private static final ACTION_OMADM_PIN_FAIL:Ljava/lang/String; = "com.htc.android.omadm.pin.fail"

.field private static final AWAKE_POKE_MILLIS:I = 0x3a98

.field private static final EXTRA_VALUE_PIN:Ljava/lang/String; = "dm.lawmo.pin"

.field private static final MSG_PIN_CHECK_FAIL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceUnlockScreen"


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInstructions:Landroid/widget/TextView;

.field private mOk:Landroid/widget/Button;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v4, Lcom/android/internal/policy/impl/DeviceUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v4, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 107
    iput-object p3, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 108
    iput-object p4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 111
    .local v2, htcContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x2090099

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2           #htcContext:Landroid/content/Context;
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 116
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPinEnable()Z

    move-result v3

    .line 117
    .local v3, pinEnabled:Z
    const v4, 0x202015b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    .line 118
    const v4, 0x2020158

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 119
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    if-eqz v3, :cond_0

    .line 122
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v5, 0x20c00ce

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 123
    const v4, 0x202015c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 124
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 125
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    const v4, 0x202015d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOk:Landroid/widget/Button;

    .line 128
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v4, Lcom/android/internal/policy/impl/DeviceUnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.android.omadm.pin.fail"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1, v9, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 150
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 112
    .end local v3           #pinEnabled:Z
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DeviceUnlockScreen"

    const-string v5, "Can\'t find HTC resource"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #pinEnabled:Z
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v5, 0x20c00d9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->handlePinCheckFail()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkPassword()V
    .locals 3

    .prologue
    .line 212
    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, password:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.android.omadm.pin.check"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "dm.lawmo.pin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method private handlePinCheckFail()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v1, 0x20c00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 222
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 153
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 156
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->checkPassword()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 209
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 171
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 160
    return-void
.end method
