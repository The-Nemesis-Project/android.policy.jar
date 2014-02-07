.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field final synthetic val$attemptsCount:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V
    .registers 3

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->val$attemptsCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;->val$attemptsCount:I

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->performWipeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V

    .line 1122
    return-void
.end method
