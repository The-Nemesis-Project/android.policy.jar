.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
