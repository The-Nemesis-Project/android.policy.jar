.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


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
    .line 1452
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2
    .param p1, "securityVerified"    # Z

    .prologue
    .line 1486
    return-void
.end method

.method public getFailedAttempts()I
    .registers 2

    .prologue
    .line 1481
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .registers 2

    .prologue
    .line 1476
    const/4 v0, 0x0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .registers 1

    .prologue
    .line 1472
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .registers 1

    .prologue
    .line 1468
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .registers 2
    .param p1, "action"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 1464
    return-void
.end method

.method public showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 2
    .param p1, "mode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 1460
    return-void
.end method

.method public showWipeDialog(I)V
    .registers 2
    .param p1, "attempts"    # I

    .prologue
    .line 1490
    return-void
.end method

.method public userActivity(J)V
    .registers 3
    .param p1, "timeout"    # J

    .prologue
    .line 1456
    return-void
.end method
