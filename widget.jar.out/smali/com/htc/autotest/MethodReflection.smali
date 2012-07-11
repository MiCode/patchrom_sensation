.class Lcom/htc/autotest/MethodReflection;
.super Ljava/lang/Object;
.source "Recorder.java"


# instance fields
.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, param:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/autotest/MethodReflection;->mMethod:Ljava/lang/reflect/Method;

    .line 156
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/autotest/MethodReflection;->mMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ATRecorder"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "clsInstance"
    .parameter "param"

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 167
    .local v1, obj:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/htc/autotest/MethodReflection;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/htc/autotest/MethodReflection;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    .end local v1           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 169
    .restart local v1       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 172
    const-string v2, "ATRecorder"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_1
    const-string v2, "ATRecorder"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
