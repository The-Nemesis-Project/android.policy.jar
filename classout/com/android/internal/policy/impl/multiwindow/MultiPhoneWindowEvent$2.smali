.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->minimizeWindow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

.field final synthetic val$_windowMode:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)V
    .registers 3

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iput p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;->val$_windowMode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 729
    .local v0, "decor":Landroid/view/ViewGroup;
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 730
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;->val$_windowMode:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 731
    return-void
.end method
