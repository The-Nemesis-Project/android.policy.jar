.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hideIconAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 15
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000

    const/high16 v6, 0x3f000000

    const/4 v1, 0x0

    .line 750
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 751
    .local v0, "scaleAnimation2":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 752
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 754
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3e99999a

    invoke-direct {v9, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 755
    .local v9, "alphaAnimation2":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 756
    invoke-virtual {v9, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 758
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 759
    .local v10, "animationSet2":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 760
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 762
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 772
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 773
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 774
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 775
    return-void
.end method
