.class public Landroid/drm/mobile1/DrmConstraintInfo;
.super Ljava/lang/Object;
.source "DrmConstraintInfo.java"


# instance fields
.field private count:I

.field private endDate:J

.field private interval:J

.field private noConstraint:I

.field private startDate:J


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/drm/mobile1/DrmConstraintInfo;->noConstraint:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Landroid/drm/mobile1/DrmConstraintInfo;->count:I

    .line 62
    iput-wide v1, p0, Landroid/drm/mobile1/DrmConstraintInfo;->startDate:J

    .line 63
    iput-wide v1, p0, Landroid/drm/mobile1/DrmConstraintInfo;->endDate:J

    .line 64
    iput-wide v1, p0, Landroid/drm/mobile1/DrmConstraintInfo;->interval:J

    .line 65
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/drm/mobile1/DrmConstraintInfo;->count:I

    return v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 106
    iget-wide v0, p0, Landroid/drm/mobile1/DrmConstraintInfo;->endDate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Landroid/drm/mobile1/DrmConstraintInfo;->endDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Landroid/drm/mobile1/DrmConstraintInfo;->interval:J

    return-wide v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Landroid/drm/mobile1/DrmConstraintInfo;->startDate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Landroid/drm/mobile1/DrmConstraintInfo;->startDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public isNoConstraint()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 75
    iget v1, p0, Landroid/drm/mobile1/DrmConstraintInfo;->noConstraint:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
