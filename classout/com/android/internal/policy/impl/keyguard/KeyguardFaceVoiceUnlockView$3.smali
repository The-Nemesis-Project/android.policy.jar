.class Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$3;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
