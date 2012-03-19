.class public Landroid/webkit/WebSettings$AutoFillProfile;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoFillProfile"
.end annotation


# instance fields
.field private mAddressLine1:Ljava/lang/String;

.field private mAddressLine2:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mUniqueId:I

.field private mZipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "fullName"
    .parameter "email"
    .parameter "companyName"
    .parameter "addressLine1"
    .parameter "addressLine2"
    .parameter "city"
    .parameter "state"
    .parameter "zipCode"
    .parameter "country"
    .parameter "phoneNumber"

    .prologue
    .line 278
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mUniqueId:I

    .line 280
    iput-object p2, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mFullName:Ljava/lang/String;

    .line 281
    iput-object p3, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mEmailAddress:Ljava/lang/String;

    .line 282
    iput-object p4, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCompanyName:Ljava/lang/String;

    .line 283
    iput-object p5, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine1:Ljava/lang/String;

    .line 284
    iput-object p6, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine2:Ljava/lang/String;

    .line 285
    iput-object p7, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCity:Ljava/lang/String;

    .line 286
    iput-object p8, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mState:Ljava/lang/String;

    .line 287
    iput-object p9, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mZipCode:Ljava/lang/String;

    .line 288
    iput-object p10, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCountry:Ljava/lang/String;

    .line 289
    iput-object p11, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mPhoneNumber:Ljava/lang/String;

    .line 290
    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mUniqueId:I

    return v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mZipCode:Ljava/lang/String;

    return-object v0
.end method
