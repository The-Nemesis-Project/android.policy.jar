.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 261
    return-void
.end method
