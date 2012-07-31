.class public Lcom/htc/album/helper/ThreeDFlattenManager;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;,
        Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;,
        Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;,
        Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;
    }
.end annotation


# static fields
.field public static final CLEAR_CACHE_BESIDES_IN_ONE_DAY:J = 0x15180L

.field private static final DEBUG:Z = false

.field public static final DIALOG_FLATTEN_PROGRESS:I = 0x330000

.field public static final DIALOG_SD_CARD_FULL_PROGRESS:I = 0x330001

.field private static final KILL_CACHE_BESIDES_ONE_DAY:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MIN_STORAGE_LIMITE:I = 0x500000

.field public static final TIME_OUT_IN_1_5_SEC:J = 0x5dcL


# instance fields
.field private featureID:I

.field private isSaveToTheSameFolder:Z

.field private isShareCancel:Z

.field private isSingle:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field private mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

.field private mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

.field private mNeedActivityFinish:Z

.field private mNoAdapter:Z

.field private mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

.field private mPictureSaveToAlbumPrompt:Ljava/lang/String;

.field private mProgressDlg:Lcom/htc/app/HtcProgressDialog;

.field private mSDCardRootFolderName:Ljava/lang/String;

.field private mShouldShow3DConverted2DHintToast:Z

.field private originalFolder:Ljava/lang/String;

.field private originalFolderOutputPath:Ljava/lang/String;

.field private pickerResult:Landroid/content/Intent;

.field private position:I

.field private resultDataPath:Ljava/lang/String;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field private resultMimeType:Ljava/lang/String;

.field private resultUri:Landroid/net/Uri;

.field private rootFolder:Ljava/lang/String;

.field private shareIntent:Landroid/content/Intent;

.field private targetIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;)V
    .locals 3
    .parameter "activity"
    .parameter "adapter"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isShareCancel:Z

    .line 72
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 73
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    .line 74
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 76
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNoAdapter:Z

    .line 78
    iput v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->position:I

    .line 80
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;

    .line 81
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSingle:Z

    .line 83
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    .line 84
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z

    .line 85
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNeedActivityFinish:Z

    .line 87
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    .line 88
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->pickerResult:Landroid/content/Intent;

    .line 90
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;

    .line 91
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;

    .line 94
    const-string v0, "/mnt/sdcard/.3DFlatten"

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    .line 100
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mSDCardRootFolderName:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    .line 127
    iput-object p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 128
    iput-object p3, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    .line 129
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mSDCardRootFolderName:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "noAdapter"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isShareCancel:Z

    .line 72
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 73
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    .line 74
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    .line 75
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 76
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNoAdapter:Z

    .line 78
    iput v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->position:I

    .line 80
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;

    .line 81
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSingle:Z

    .line 83
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    .line 84
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z

    .line 85
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNeedActivityFinish:Z

    .line 87
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    .line 88
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->pickerResult:Landroid/content/Intent;

    .line 90
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;

    .line 91
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;

    .line 94
    const-string v0, "/mnt/sdcard/.3DFlatten"

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    .line 100
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mSDCardRootFolderName:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    .line 118
    iput-boolean p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNoAdapter:Z

    .line 119
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mSDCardRootFolderName:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/ThreeDFlattenManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isShareCancel:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/album/helper/ThreeDFlattenManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isShareCancel:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolderOutputPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/album/helper/ThreeDFlattenManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSingle:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/album/helper/ThreeDFlattenManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->position:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->pickerResult:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/album/helper/ThreeDFlattenManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/album/helper/ThreeDFlattenManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/album/helper/ThreeDFlattenManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mSDCardRootFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/helper/ThreeDFlattenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDFlattenManager;->shareMultiFlattenedMedia()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/app/Activity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/ThreeDFlattenManager;->setKeepScreenOn(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/album/helper/ThreeDFlattenManager;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenSingleMedia(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/album/helper/ThreeDFlattenManager;ILandroid/content/Intent;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenMultiMedia(ILandroid/content/Intent;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/helper/ThreeDFlattenManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNeedActivityFinish:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/album/helper/ThreeDFlattenManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->originalFolder:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/helper/ThreeDFlattenManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNoAdapter:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private doFlattenMultiMedia(ILandroid/content/Intent;Landroid/content/Intent;I)V
    .locals 1
    .parameter "featureID"
    .parameter "shareIntent"
    .parameter "pickerResult"
    .parameter "flattenedCount"

    .prologue
    const/4 v0, 0x0

    .line 1734
    iput-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSingle:Z

    .line 1735
    iput p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I

    .line 1736
    iput-object p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    .line 1737
    iput-object p3, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->pickerResult:Landroid/content/Intent;

    .line 1738
    iput-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    .line 1740
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-nez v0, :cond_1

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1764
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDFlattenManager;->flattenMedias()V

    goto :goto_0
.end method

.method private doFlattenSingleMedia(IILandroid/content/Intent;)V
    .locals 1
    .parameter "featureID"
    .parameter "position"
    .parameter "targetIntent"

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-nez v0, :cond_0

    .line 1714
    :goto_0
    return-void

    .line 1713
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenSingleMedia(IILandroid/content/Intent;Z)V

    goto :goto_0
.end method

.method private flattenMedias()V
    .locals 3

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    :goto_0
    return-void

    .line 1675
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    if-eqz v0, :cond_2

    .line 1677
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNoAdapter:Z

    if-nez v0, :cond_1

    .line 1679
    new-instance v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    .line 1685
    :goto_1
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->start()V

    goto :goto_0

    .line 1683
    :cond_1
    new-instance v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    goto :goto_1

    .line 1689
    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private setKeepScreenOn(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "screenOn"

    .prologue
    .line 136
    new-instance v0, Lcom/htc/album/helper/ThreeDFlattenManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/album/helper/ThreeDFlattenManager$1;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;ZLandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method private shareMultiFlattenedMedia()V
    .locals 23

    .prologue
    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->pickerResult:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return-void

    .line 1821
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1822
    .local v2, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1823
    .local v16, sharedPkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->pickerResult:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    .line 1824
    .local v15, mime:Ljava/lang/String;
    const-string v21, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "com.htc.socialnetwork.flickr"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1827
    :cond_2
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1828
    .local v11, intentShare:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    .local v5, conpont:Landroid/content/ComponentName;
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1831
    const-string v21, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1832
    .local v12, isFacebook:Z
    if-eqz v12, :cond_4

    sget-object v21, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v19, v21, v22

    .line 1833
    .local v19, strServiceName:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 1835
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 1836
    .local v14, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 1838
    .local v20, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1840
    .local v9, i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v9, :cond_3

    .line 1841
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1842
    .local v4, bundle:Landroid/os/Bundle;
    const-string v21, "com.htc.opensense.upload.URI"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v21, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string v21, "com.htc.opensense.upload.TITLE"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v21, "com.htc.opensense.upload.DESCRIPTION"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1832
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v9           #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v19           #strServiceName:Ljava/lang/String;
    .end local v20           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_4
    sget-object v21, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v19, v21, v22

    goto :goto_1

    .line 1849
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v14       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v19       #strServiceName:Ljava/lang/String;
    .restart local v20       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1850
    const-string v21, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    const-string v21, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1852
    const-string v21, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1855
    .end local v5           #conpont:Landroid/content/ComponentName;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #intentShare:Landroid/content/Intent;
    .end local v12           #isFacebook:Z
    .end local v14           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v19           #strServiceName:Ljava/lang/String;
    .end local v20           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_6
    const-string v21, "com.htc.android.mail"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1859
    .local v17, start:J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    .local v13, mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1863
    .restart local v9       #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v9, :cond_7

    .line 1865
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1867
    .end local v9           #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1869
    .local v6, end:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "android.intent.action.SEND"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "multiple_files"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1873
    .end local v6           #end:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #start:J
    :cond_9
    const-string v21, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1876
    .restart local v17       #start:J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1878
    .local v8, htcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1880
    .restart local v9       #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v9, :cond_a

    .line 1882
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1883
    .restart local v4       #bundle:Landroid/os/Bundle;
    const-string v21, "uri"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1884
    const-string v21, "mimeType"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1887
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v9           #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1889
    .restart local v6       #end:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "data"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1894
    .end local v6           #end:J
    .end local v8           #htcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v17           #start:J
    :cond_c
    const-string v21, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1897
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    .local v3, andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1901
    .restart local v9       #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1903
    .end local v9           #i:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public OnMenuItemSelected(IILandroid/content/Intent;)V
    .locals 12
    .parameter "featureID"
    .parameter "pos"
    .parameter "targetIntent"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1912
    iput-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z

    .line 1913
    iput-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    .line 1914
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1915
    .local v9, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    if-eq v0, v1, :cond_1

    .line 1919
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1958
    :pswitch_0
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    .line 1959
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenSingleMedia(IILandroid/content/Intent;)V

    .line 1967
    :goto_0
    return-void

    .line 1922
    :pswitch_1
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1923
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "com.htc.album.actions.threedconvert"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1924
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1925
    const-string v0, "SharedAdapter.KEY_PACKAGE"

    const-string v1, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    const-string v0, "SharedAdapter.KEY_CLASS_NAME"

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1930
    .end local v11           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00cc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c013c

    new-instance v2, Lcom/htc/album/helper/ThreeDFlattenManager$8;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/htc/album/helper/ThreeDFlattenManager$8;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c013d

    new-instance v2, Lcom/htc/album/helper/ThreeDFlattenManager$7;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/ThreeDFlattenManager$7;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    .line 1948
    .local v10, flattenDlg2:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1949
    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 1953
    .end local v10           #flattenDlg2:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_3
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z

    .line 1955
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenSingleMedia(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1965
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v7

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/helper/ThreeDFlattenManager;->handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 1919
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V
    .locals 24
    .parameter "featureID"
    .parameter "shareIntent"
    .parameter "pickerResult"

    .prologue
    .line 1972
    const/16 v4, 0x9

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 1974
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    .line 1975
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z

    .line 1976
    const/16 v18, -0x1

    .line 1977
    .local v18, pos:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 1979
    .local v21, uri:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v17

    .line 1982
    .local v17, listCount:I
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1983
    .local v10, absFileType:Z
    if-eqz v10, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 1985
    .local v11, comparePath:Ljava/lang/String;
    :goto_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 1987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1988
    .local v16, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    .line 1990
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1992
    move/from16 v18, v14

    .line 2007
    .end local v10           #absFileType:Z
    .end local v11           #comparePath:Ljava/lang/String;
    .end local v14           #i:I
    .end local v16           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v17           #listCount:I
    :cond_0
    :goto_2
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_5

    .line 2091
    .end local v18           #pos:I
    .end local v21           #uri:Landroid/net/Uri;
    :cond_1
    :goto_3
    return-void

    .line 1983
    .restart local v10       #absFileType:Z
    .restart local v17       #listCount:I
    .restart local v18       #pos:I
    .restart local v21       #uri:Landroid/net/Uri;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 1998
    .restart local v11       #comparePath:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v16       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2000
    move/from16 v18, v14

    .line 2001
    goto :goto_2

    .line 1985
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2013
    .end local v10           #absFileType:Z
    .end local v11           #comparePath:Ljava/lang/String;
    .end local v14           #i:I
    .end local v16           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v17           #listCount:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2014
    .restart local v16       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v16, :cond_1

    .line 2020
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2022
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenSingleMedia(IILandroid/content/Intent;Z)V

    goto :goto_3

    .line 2029
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2033
    :cond_7
    sget-object v4, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ThreeDFlattenManager][OnMenuItemSelected][Single]pickerResult.getData() = null!"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2039
    .end local v16           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #pos:I
    .end local v21           #uri:Landroid/net/Uri;
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mShouldShow3DConverted2DHintToast:Z

    .line 2040
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSaveToTheSameFolder:Z

    .line 2041
    const/16 v19, 0x0

    .line 2042
    .local v19, shouldPopUpDialog:Z
    const/16 v20, 0x0

    .line 2043
    .local v20, toFlattenCount:I
    const-string v4, "3d_image_index_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2044
    .local v13, flattenedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v13, :cond_a

    .line 2046
    const/16 v20, 0x0

    .line 2063
    :cond_9
    :goto_4
    if-lez v20, :cond_c

    if-eqz v19, :cond_c

    .line 2065
    move/from16 v9, v20

    .line 2066
    .local v9, finalFlattenedCount:I
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b00d0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b00ce

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0b00d1

    new-instance v4, Lcom/htc/album/helper/ThreeDFlattenManager$10;

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/htc/album/helper/ThreeDFlattenManager$10;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;ILandroid/content/Intent;Landroid/content/Intent;I)V

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b00d2

    new-instance v6, Lcom/htc/album/helper/ThreeDFlattenManager$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager$9;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v12

    .line 2084
    .local v12, flattenDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2085
    invoke-virtual {v12}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_3

    .line 2050
    .end local v9           #finalFlattenedCount:I
    .end local v12           #flattenDlg:Lcom/htc/widget/HtcAlertDialog;
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2051
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 2053
    .local v18, pos:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2054
    .restart local v16       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2056
    const/16 v19, 0x1

    .line 2057
    goto/16 :goto_4

    .line 2089
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #pos:Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v4, v0, v1}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_3
.end method

.method public cancelFlattenMedias()V
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->cancel()V

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    .line 236
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public doFlattenImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "image"

    .prologue
    .line 1464
    instance-of v0, p1, Lcom/htc/sunny2/IMediaData;

    .line 1465
    .local v0, isIMediaData:Z
    if-eqz v0, :cond_0

    .line 1467
    check-cast p1, Lcom/htc/sunny2/IMediaData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenImage(Lcom/htc/sunny2/IMediaData;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1469
    :goto_0
    return-object v1

    .restart local p1
    :cond_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->doFlattenImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public doFlattenImage(Lcom/htc/sunny2/IMediaData;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "image"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1474
    const/4 v8, -0x1

    .line 1475
    .local v8, ret:I
    const/4 v9, 0x0

    .line 1476
    .local v9, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v2

    .line 1477
    .local v2, handle:I
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, filePath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v5

    .line 1479
    .local v5, mimeType:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v4

    .line 1480
    .local v4, mediaSourceType:I
    if-nez v4, :cond_4

    .line 1482
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]mediaSourceType == IMediaData.SOURCE_FILE_PATH"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1485
    if-eqz v5, :cond_0

    .line 1487
    const-string v10, "image/jps"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1489
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v2, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1490
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v2, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v8

    .line 1597
    :cond_0
    :goto_0
    if-nez v8, :cond_c

    .line 1599
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const-wide/16 v11, 0x7d0

    invoke-virtual {v10, v2, v11, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v8

    goto :goto_0

    .line 1492
    :cond_1
    const-string v10, "image/mpo"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1495
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v2, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v8

    .line 1496
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v6

    .line 1497
    .local v6, mpoPhotoCount:I
    if-lez v6, :cond_2

    .line 1499
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v2, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_0

    .line 1503
    :cond_2
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]mpo file contains no photos!"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1510
    .end local v6           #mpoPhotoCount:I
    :cond_3
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]FilePath is empty"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1513
    :cond_4
    if-ne v4, v13, :cond_9

    .line 1515
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]mediaSourceType == IMediaData.SOURCE_PARCEL_FILE_DESCRIPTOR"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 1517
    .local v7, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v7, :cond_8

    .line 1519
    if-eqz v5, :cond_7

    .line 1521
    const-string v10, "image/jps"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1523
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v2, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1526
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 1528
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1533
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    const-string v10, "image/mpo"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1538
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v8

    .line 1539
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v6

    .line 1540
    .restart local v6       #mpoPhotoCount:I
    if-lez v6, :cond_6

    .line 1542
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1549
    .end local v6           #mpoPhotoCount:I
    :catch_1
    move-exception v0

    .line 1551
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1546
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .restart local v6       #mpoPhotoCount:I
    :cond_6
    :try_start_2
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]mpo file contains no photos!"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1559
    .end local v6           #mpoPhotoCount:I
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    goto/16 :goto_0

    .line 1561
    :catch_2
    move-exception v0

    .line 1563
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1569
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_8
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]MediaData ParcelFileDescriptor is null"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1572
    .end local v7           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_9
    const/4 v10, 0x2

    if-ne v4, v10, :cond_b

    .line 1574
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]mediaSourceType == IMediaData.SOURCE_INPUT_STREAM"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1576
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_a

    .line 1580
    :try_start_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v3, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    move-result v8

    goto/16 :goto_0

    .line 1582
    :catch_3
    move-exception v0

    .line 1584
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1589
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_a
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]MediaData InputStream is null"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1594
    .end local v3           #is:Ljava/io/InputStream;
    :cond_b
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage IMediaData]Unknown source type"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1602
    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1603
    const/4 v2, 0x0

    .line 1604
    if-nez v9, :cond_d

    .line 1607
    sget-object v10, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HtcAlbum][ThreeDFlattenManager][doFlattenImage]ScaladoLib2 FINISH bmp == null"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    :cond_d
    return-object v9
.end method

.method public doFlattenImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1615
    const/4 v4, 0x0

    .line 1616
    .local v4, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    .line 1617
    .local v5, tempHandle:I
    const/4 v3, -0x1

    .line 1618
    .local v3, ret:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 1619
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v7, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 1620
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 1622
    move-object v0, p1

    .line 1623
    .local v0, filePath:Ljava/lang/String;
    move-object v1, p2

    .line 1625
    .local v1, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1627
    if-eqz v1, :cond_0

    .line 1629
    const-string v6, "image/jps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1631
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 1632
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 1655
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 1657
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v5, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v3

    goto :goto_0

    .line 1634
    :cond_1
    const-string v6, "image/mpo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1637
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    .line 1638
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v2

    .line 1639
    .local v2, mpoPhotoCount:I
    if-lez v2, :cond_2

    .line 1641
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_0

    .line 1645
    :cond_2
    sget-object v6, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage]mpo file contains no photos!"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1652
    .end local v2           #mpoPhotoCount:I
    :cond_3
    sget-object v6, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ThreeDFlattenManager][doFlattenImage]FilePath is empty"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1660
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1661
    const/4 v5, 0x0

    .line 1662
    if-nez v4, :cond_5

    .line 1665
    sget-object v6, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HtcAlbum][ThreeDFlattenManager][doFlattenImage]ScaladoLib2 FINISH bmp == null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    :cond_5
    return-object v4
.end method

.method public doFlattenSingleMedia(IILandroid/content/Intent;Z)V
    .locals 1
    .parameter "featureID"
    .parameter "position"
    .parameter "targetIntent"
    .parameter "noAdapter"

    .prologue
    .line 1718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->isSingle:Z

    .line 1719
    iput p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I

    .line 1720
    iput p2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->position:I

    .line 1721
    iput-object p3, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;

    .line 1723
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1729
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDFlattenManager;->flattenMedias()V

    goto :goto_0
.end method

.method public handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 10
    .parameter "featureID"
    .parameter "activity"
    .parameter "targetIntent"
    .parameter "imageUri"
    .parameter "mimeType"
    .parameter "dataPath"
    .parameter "isDrm"
    .parameter "degreesRotated"

    .prologue
    .line 1769
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1771
    new-instance v0, Lcom/htc/album/helper/ThreeDFlattenManager$6;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/htc/album/helper/ThreeDFlattenManager$6;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1812
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 161
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 163
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    new-instance v2, Lcom/htc/album/helper/ThreeDFlattenManager$2;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/ThreeDFlattenManager$2;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    new-instance v2, Lcom/htc/album/helper/ThreeDFlattenManager$3;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/ThreeDFlattenManager$3;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 180
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    .line 188
    :goto_1
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->start()V

    .line 189
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 186
    :cond_0
    new-instance v1, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    goto :goto_1

    .line 191
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0034

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c015f

    new-instance v3, Lcom/htc/album/helper/ThreeDFlattenManager$5;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/ThreeDFlattenManager$5;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/album/helper/ThreeDFlattenManager$4;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/ThreeDFlattenManager$4;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 210
    .local v0, errorDlg:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x330000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShowSDCardFullDialog(Z)V
    .locals 3
    .parameter "bNeedActivityFinish"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNeedActivityFinish:Z

    .line 151
    sget-object v0, Lcom/htc/album/helper/ThreeDFlattenManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ThreeDFlattenManager][onShowSDCardFullDialog]: pop SD Card Full Dialog, mNeedActivityFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mNeedActivityFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    const v1, 0x330001

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 153
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mActivity:Landroid/app/Activity;

    .line 241
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 242
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    .line 243
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 244
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenThread:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    .line 246
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;

    .line 247
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->shareIntent:Landroid/content/Intent;

    .line 248
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->pickerResult:Landroid/content/Intent;

    .line 249
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultUri:Landroid/net/Uri;

    .line 250
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultDataPath:Ljava/lang/String;

    .line 252
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->rootFolder:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager;->resultList:Ljava/util/ArrayList;

    .line 265
    :cond_0
    return-void
.end method
