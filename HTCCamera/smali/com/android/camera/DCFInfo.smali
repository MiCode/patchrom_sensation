.class public final Lcom/android/camera/DCFInfo;
.super Ljava/lang/Object;
.source "DCFInfo.java"


# instance fields
.field private final m_DirCounterPrefKey:Ljava/lang/String;

.field private final m_DirFreeChar:Ljava/lang/String;

.field private final m_FileCounterPrefKey:Ljava/lang/String;

.field private final m_FileTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dirFreeChar"
    .parameter "fileTag"
    .parameter "dirCounterPrefKey"
    .parameter "fileCounterPrefKey"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/DCFInfo;->m_DirFreeChar:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/android/camera/DCFInfo;->m_FileTag:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/android/camera/DCFInfo;->m_DirCounterPrefKey:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/android/camera/DCFInfo;->m_FileCounterPrefKey:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getDirCounterPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/DCFInfo;->m_DirCounterPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDirFreeChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/DCFInfo;->m_DirFreeChar:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCounterPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/DCFInfo;->m_FileCounterPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFileTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/DCFInfo;->m_FileTag:Ljava/lang/String;

    return-object v0
.end method
