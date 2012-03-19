.class public abstract Lcom/android/camera/debug/Debugger;
.super Ljava/lang/Object;
.source "Debugger.java"


# static fields
.field public static final DEBUG_LEVEL_HIGH:I = 0x3

.field public static final DEBUG_LEVEL_LOW:I = 0x1

.field public static final DEBUG_LEVEL_MEDIUM:I = 0x2

.field public static final DEBUG_LEVEL_NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GENERIC_DEBUG_LEVEL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final METHOD_DEBUG_LEVEL:I = 0x0

.field private static final STATIC_TAG:Ljava/lang/String; = "Debugger"

.field private static final m_MessageNames:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/debug/Debugger;->m_MessageNames:Ljava/util/Hashtable;

    .line 36
    sput v1, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    .line 37
    sput v1, Lcom/android/camera/debug/Debugger;->METHOD_DEBUG_LEVEL:I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterMethod()Lcom/android/camera/debug/MethodDebugInfo;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 46
    sget v3, Lcom/android/camera/debug/Debugger;->METHOD_DEBUG_LEVEL:I

    if-ge v3, v5, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 59
    .local v0, info:Lcom/android/camera/debug/MethodDebugInfo;
    .local v1, method:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 50
    .end local v0           #info:Lcom/android/camera/debug/MethodDebugInfo;
    .end local v1           #method:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/camera/debug/MethodDebugInfo;

    invoke-direct {v0}, Lcom/android/camera/debug/MethodDebugInfo;-><init>()V

    .line 51
    .restart local v0       #info:Lcom/android/camera/debug/MethodDebugInfo;
    invoke-virtual {v0}, Lcom/android/camera/debug/MethodDebugInfo;->getMethod()Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 52
    .restart local v1       #method:Ljava/lang/String;
    sget v3, Lcom/android/camera/debug/Debugger;->METHOD_DEBUG_LEVEL:I

    if-ne v3, v5, :cond_1

    .line 53
    const-string v3, "Debugger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/debug/MethodDebugInfo;->getMethodCaller()Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, methodCaller:Ljava/lang/String;
    const-string v3, "Debugger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMessageName(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 12
    .parameter "clazz"
    .parameter "msg"

    .prologue
    const/4 v11, 0x4

    .line 69
    if-nez p0, :cond_0

    .line 71
    const-string v8, "clazz"

    invoke-static {v8}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 118
    :goto_0
    return-object v8

    .line 77
    :cond_0
    sget-object v9, Lcom/android/camera/debug/Debugger;->m_MessageNames:Ljava/util/Hashtable;

    monitor-enter v9

    .line 79
    :try_start_0
    sget-object v8, Lcom/android/camera/debug/Debugger;->m_MessageNames:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 81
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 82
    .local v7, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    .local v1, fields:[Ljava/lang/reflect/Field;
    const/16 v4, 0x18

    .line 84
    .local v4, modifiers:I
    array-length v8, v1

    add-int/lit8 v2, v8, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 86
    aget-object v0, v1, v2

    .line 87
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/2addr v8, v4

    if-ne v8, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_1

    const/4 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v10, "MSG_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 94
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 101
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    :try_start_2
    sget-object v8, Lcom/android/camera/debug/Debugger;->m_MessageNames:Ljava/util/Hashtable;

    invoke-virtual {v8, p0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v1           #fields:[Ljava/lang/reflect/Field;
    .end local v2           #i:I
    .end local v4           #modifiers:I
    :goto_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 109
    .local v3, integer:Ljava/lang/Integer;
    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 110
    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    .line 104
    .end local v3           #integer:Ljava/lang/Integer;
    .end local v7           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    sget-object v8, Lcom/android/camera/debug/Debugger;->m_MessageNames:Ljava/util/Hashtable;

    invoke-virtual {v8, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Hashtable;

    .restart local v7       #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_3

    .line 105
    .end local v7           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 113
    .restart local v3       #integer:Ljava/lang/Integer;
    .restart local v7       #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 114
    .local v6, superClazz:Ljava/lang/Class;
    const-class v8, Ljava/lang/Object;

    if-eq v6, v8, :cond_5

    if-eqz v6, :cond_5

    .line 115
    invoke-static {v6, p1}, Lcom/android/camera/debug/Debugger;->getMessageName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 118
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 97
    .end local v3           #integer:Ljava/lang/Integer;
    .end local v6           #superClazz:Ljava/lang/Class;
    .restart local v0       #field:Ljava/lang/reflect/Field;
    .restart local v1       #fields:[Ljava/lang/reflect/Field;
    .restart local v2       #i:I
    .restart local v4       #modifiers:I
    .restart local v5       #name:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static getMethodCaller()Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->getMethodCaller(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodCaller(I)Ljava/lang/StackTraceElement;
    .locals 4
    .parameter "levels"

    .prologue
    const/4 v1, 0x0

    .line 131
    const/4 v2, 0x1

    if-ge p0, v2, :cond_1

    .line 133
    const-string v2, "Debugger"

    const-string v3, "levels < 1 in getMethodCaller()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    return-object v1

    .line 138
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 139
    invoke-static {p0}, Lcom/android/camera/debug/Debugger;->getMethodCallers(I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 140
    .local v0, callStack:[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, p0, :cond_0

    .line 141
    add-int/lit8 v1, p0, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public static getMethodCallers(I)[Ljava/lang/StackTraceElement;
    .locals 7
    .parameter "levels"

    .prologue
    const/4 v0, 0x0

    .line 147
    if-nez p0, :cond_0

    .line 149
    const-string v4, "Debugger"

    const-string v5, "levels is 0 in getMethodCallers()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 156
    .local v1, callStack:[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, startIndex:I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 158
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getMethodCallers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    add-int/lit8 v3, v3, 0x2

    .line 164
    :cond_1
    if-lez p0, :cond_3

    add-int v4, v3, p0

    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 165
    .local v2, endIndex:I
    :goto_2
    if-gt v2, v3, :cond_4

    .line 167
    const-string v4, "Debugger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size of stack trace is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v2           #endIndex:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    :cond_3
    array-length v2, v1

    goto :goto_2

    .line 172
    .restart local v2       #endIndex:I
    :cond_4
    sub-int v4, v2, v3

    new-array v0, v4, [Ljava/lang/StackTraceElement;

    .line 173
    .local v0, array:[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    sub-int v5, v2, v3

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static getStackTraceElementString(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1
    .parameter "element"

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-static {p0, v0, v0}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;
    .locals 5
    .parameter "element"
    .parameter "showFullClassName"
    .parameter "showFileName"

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 189
    const-string v3, "Debugger"

    const-string v4, "element = NULL in getStackTraceElementString()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v3, "Unknown"

    .line 219
    :goto_0
    return-object v3

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 203
    const-string v3, " (Native Method)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, fileName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 211
    .local v2, lineNumber:I
    if-lez v2, :cond_4

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_4
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static leaveMethod(Lcom/android/camera/debug/MethodDebugInfo;)V
    .locals 5
    .parameter "debugInfo"

    .prologue
    const/4 v3, 0x1

    .line 228
    sget v1, Lcom/android/camera/debug/Debugger;->METHOD_DEBUG_LEVEL:I

    if-ge v1, v3, :cond_0

    .line 252
    :goto_0
    return-void

    .line 232
    :cond_0
    if-nez p0, :cond_1

    .line 234
    const-string v1, "Debugger"

    const-string v2, "debugInfo = NULL in leaveMethod()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/debug/MethodDebugInfo;->getMethod()Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, method:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/debug/MethodDebugInfo;->isMethodLeaved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    const-string v1, "Debugger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leave "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() twice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/debug/MethodDebugInfo;->leaveMethod()V

    .line 248
    sget v1, Lcom/android/camera/debug/Debugger;->METHOD_DEBUG_LEVEL:I

    if-ne v1, v3, :cond_3

    .line 249
    const-string v1, "Debugger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leave "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_3
    const-string v1, "Debugger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leave "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(), cose time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/debug/MethodDebugInfo;->getElapsedMilliseconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static printArgumentNullLog(Ljava/lang/String;)V
    .locals 7
    .parameter "argName"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 260
    if-nez p0, :cond_1

    .line 262
    const-string v3, "Debugger"

    const-string v4, "argName = NULL in printArgumentNullLog()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    return-void

    .line 267
    :cond_1
    const/4 v3, -0x1

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->getMethodCallers(I)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 268
    .local v1, methodCallers:[Ljava/lang/StackTraceElement;
    aget-object v3, v1, v4

    invoke-static {v3, v6, v4}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, methodStr:Ljava/lang/String;
    const-string v3, "Debugger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is NULL in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 273
    const-string v3, "Debugger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-static {v5, v6, v6}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final printStackTrace(Ljava/lang/String;)V
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x1

    .line 282
    if-eqz p0, :cond_0

    .line 283
    const-string v3, "Debugger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 287
    .local v2, thread:Ljava/lang/Thread;
    const-string v3, "Debugger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ Thread : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v3, -0x1

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->getMethodCallers(I)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 291
    .local v1, methodCallers:[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 292
    const-string v3, "Debugger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-static {v5, v6, v6}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_1
    return-void
.end method
