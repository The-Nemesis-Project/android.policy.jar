.class Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$2;
.super Ljava/lang/Object;
.source "FlipboardWallpaperWidget.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V
    .registers 2

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 568
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->switchViewOrder()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    .line 565
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 560
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 557
    return-void
.end method
