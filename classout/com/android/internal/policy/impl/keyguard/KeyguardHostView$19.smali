.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 3040
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_1b

    .line 3045
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3702(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)I

    .line 3047
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->resetStateLocked(Landroid/os/Bundle;)V

    .line 3048
    const-string v0, "KeyguardHostView"

    const-string v1, "reset lockscreen by user action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    :cond_1b
    return-void
.end method
