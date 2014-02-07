.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$2;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->setAdditionalPinButton()V
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
    .line 227
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 232
    return-void
.end method
