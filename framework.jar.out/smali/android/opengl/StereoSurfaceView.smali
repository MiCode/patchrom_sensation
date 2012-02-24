.class public Landroid/opengl/StereoSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "StereoSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# static fields
.field private static CenterX:F = 0.0f

.field private static CenterY:F = 0.0f

.field private static Height:F = 0.0f

.field private static LTAG:Ljava/lang/String; = null

.field public static final METAMAN_SCENE_RUN_STATE_START:I = 0x1

.field public static final METAMAN_SCENE_RUN_STATE_STOP:I = 0x0

.field public static final METAMAN_SCENE_TYPE_IMAGE:I = 0x0

.field public static final METAMAN_SCENE_TYPE_ISURFACE:I = 0x2

.field private static Shift:F

.field private static Width:F

.field private static bitmap_input:Landroid/graphics/Bitmap;


# instance fields
.field firstDrawFrame:Z

.field firstTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 27
    const-string v1, "StereoSurfaceView"

    sput-object v1, Landroid/opengl/StereoSurfaceView;->LTAG:Ljava/lang/String;

    .line 29
    sput v2, Landroid/opengl/StereoSurfaceView;->Width:F

    .line 30
    sput v2, Landroid/opengl/StereoSurfaceView;->Height:F

    .line 31
    sput v2, Landroid/opengl/StereoSurfaceView;->CenterX:F

    .line 32
    sput v2, Landroid/opengl/StereoSurfaceView;->CenterY:F

    .line 33
    sput v2, Landroid/opengl/StereoSurfaceView;->Shift:F

    .line 62
    :try_start_0
    const-string v1, "/system/lib/egl/libEGL_adreno200.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 63
    const-string v1, "/system/lib/egl/libGLESv2_adreno200.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 64
    const-string v1, "/system/lib/libmeta_man_album_jni.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Landroid/opengl/StereoSurfaceView;->native_init()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 67
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 68
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Landroid/opengl/StereoSurfaceView;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "format"

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 104
    iput-boolean v1, p0, Landroid/opengl/StereoSurfaceView;->firstDrawFrame:Z

    .line 146
    iput-boolean v1, p0, Landroid/opengl/StereoSurfaceView;->firstTime:Z

    .line 84
    invoke-virtual {p0}, Landroid/opengl/StereoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 93
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 98
    invoke-virtual {p0, p0}, Landroid/opengl/StereoSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 100
    invoke-virtual {p0, p0}, Landroid/opengl/StereoSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 101
    return-void
.end method

.method private static final native native_init()V
.end method

.method private static native native_initializeScene(I)V
.end method

.method private static native native_renderScene()Z
.end method

.method private static native native_setImage(Landroid/graphics/Bitmap;)Z
.end method

.method private static native native_setImageShiftOffset(F)V
.end method

.method private native native_setMediaPlayer()V
.end method

.method private static native native_setSceneDimension(II)V
.end method

.method private static native native_setScenePosition(FFFF)V
.end method

.method private static native native_setSceneRunState(I)V
.end method

.method private static native native_terminateScene()V
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .parameter "egl"
    .parameter "display"
    .parameter "eglConfig"

    .prologue
    .line 183
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 184
    .local v0, attrib_list:[I
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 185
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    return-object v1

    .line 183
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .parameter "egl"
    .parameter "display"
    .parameter "context"

    .prologue
    .line 188
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 189
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 214
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-boolean v0, p0, Landroid/opengl/StereoSurfaceView;->firstDrawFrame:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/StereoSurfaceView;->native_setSceneRunState(I)V

    .line 114
    sget-object v0, Landroid/opengl/StereoSurfaceView;->bitmap_input:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/opengl/StereoSurfaceView;->native_setImage(Landroid/graphics/Bitmap;)Z

    .line 115
    sget v0, Landroid/opengl/StereoSurfaceView;->CenterX:F

    sget v1, Landroid/opengl/StereoSurfaceView;->CenterY:F

    sget v2, Landroid/opengl/StereoSurfaceView;->Width:F

    sget v3, Landroid/opengl/StereoSurfaceView;->Height:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/StereoSurfaceView;->native_setScenePosition(FFFF)V

    .line 116
    sget v0, Landroid/opengl/StereoSurfaceView;->Shift:F

    invoke-static {v0}, Landroid/opengl/StereoSurfaceView;->native_setImageShiftOffset(F)V

    .line 118
    iput-boolean v4, p0, Landroid/opengl/StereoSurfaceView;->firstDrawFrame:Z

    .line 120
    :cond_0
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 122
    invoke-static {}, Landroid/opengl/StereoSurfaceView;->native_renderScene()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-static {}, Landroid/opengl/StereoSurfaceView;->native_terminateScene()V

    .line 125
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 128
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-boolean v0, p0, Landroid/opengl/StereoSurfaceView;->firstTime:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {v1}, Landroid/opengl/StereoSurfaceView;->native_initializeScene(I)V

    .line 152
    iput-boolean v1, p0, Landroid/opengl/StereoSurfaceView;->firstTime:Z

    .line 154
    :cond_0
    invoke-static {p2, p3}, Landroid/opengl/StereoSurfaceView;->native_setSceneDimension(II)V

    .line 155
    if-le p2, p3, :cond_1

    .line 157
    sget v0, Landroid/opengl/StereoSurfaceView;->CenterX:F

    sget v1, Landroid/opengl/StereoSurfaceView;->CenterY:F

    sget v2, Landroid/opengl/StereoSurfaceView;->Width:F

    sget v3, Landroid/opengl/StereoSurfaceView;->Height:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/StereoSurfaceView;->native_setScenePosition(FFFF)V

    .line 163
    sget-object v0, Landroid/opengl/StereoSurfaceView;->bitmap_input:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/opengl/StereoSurfaceView;->native_setImage(Landroid/graphics/Bitmap;)Z

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_1
    sget v0, Landroid/opengl/StereoSurfaceView;->CenterX:F

    sget v1, Landroid/opengl/StereoSurfaceView;->CenterY:F

    sget v2, Landroid/opengl/StereoSurfaceView;->Width:F

    sget v3, Landroid/opengl/StereoSurfaceView;->Height:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/StereoSurfaceView;->native_setScenePosition(FFFF)V

    .line 173
    sget-object v0, Landroid/opengl/StereoSurfaceView;->bitmap_input:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/opengl/StereoSurfaceView;->native_setImage(Landroid/graphics/Bitmap;)Z

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 178
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;FFFF)V
    .locals 0
    .parameter "bitmap_in"
    .parameter "iCenterX"
    .parameter "iCenterY"
    .parameter "iWidth"
    .parameter "iHeight"

    .prologue
    .line 139
    sput p2, Landroid/opengl/StereoSurfaceView;->CenterX:F

    .line 140
    sput p3, Landroid/opengl/StereoSurfaceView;->CenterY:F

    .line 141
    sput-object p1, Landroid/opengl/StereoSurfaceView;->bitmap_input:Landroid/graphics/Bitmap;

    .line 142
    sput p4, Landroid/opengl/StereoSurfaceView;->Width:F

    .line 143
    sput p5, Landroid/opengl/StereoSurfaceView;->Height:F

    .line 144
    return-void
.end method

.method public setImageShiftOffset(F)V
    .locals 0
    .parameter "fOffset"

    .prologue
    .line 132
    sput p1, Landroid/opengl/StereoSurfaceView;->Shift:F

    .line 133
    invoke-static {p1}, Landroid/opengl/StereoSurfaceView;->native_setImageShiftOffset(F)V

    .line 135
    return-void
.end method
