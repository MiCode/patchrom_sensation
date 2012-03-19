.class public Lcom/android/camera/LocationHandler$LocationListener;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mValid:Z

    .line 172
    const-string v0, "LocationHandler"

    const-string v1, "new LocationListener"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/android/camera/LocationHandler$LocationListener;->mProvider:Ljava/lang/String;

    .line 174
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/LocationHandler$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 175
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mValid:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "newLocation"

    .prologue
    const-wide/16 v3, 0x0

    .line 179
    const-string v0, "LocationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/LocationHandler$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   onLocationChanged   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 194
    const-string v0, "LocationHandler"

    const-string v1, "ProviderDisabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mValid:Z

    .line 196
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 190
    const-string v0, "LocationHandler"

    const-string v1, "ProviderEnabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 199
    const-string v0, "LocationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-nez p2, :cond_1

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mValid:Z

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/LocationHandler$LocationListener;->mValid:Z

    goto :goto_0
.end method
