.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .registers 9
    .param p0, "securityMessageDisplay"    # Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "bouncerFrame"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 71
    if-eqz p0, :cond_8

    .line 72
    invoke-interface {p0, p3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->hideBouncer(I)V

    .line 74
    :cond_8
    if-eqz p1, :cond_29

    .line 75
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    if-lez p3, :cond_41

    .line 77
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 78
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 79
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$2;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 99
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_29
    :goto_29
    if-eqz p2, :cond_40

    .line 100
    if-lez p3, :cond_45

    .line 101
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_4a

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 102
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 103
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 108
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_40
    :goto_40
    return-void

    .line 96
    :cond_41
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_29

    .line 105
    :cond_45
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_40

    .line 101
    nop

    :array_4a
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public static showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .registers 9
    .param p0, "securityMessageDisplay"    # Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "bouncerFrame"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 32
    if-eqz p0, :cond_6

    .line 33
    invoke-interface {p0, p3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    .line 35
    :cond_6
    if-eqz p1, :cond_25

    .line 36
    if-lez p3, :cond_3d

    .line 37
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 38
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 39
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 58
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_25
    :goto_25
    if-eqz p2, :cond_3c

    .line 59
    if-lez p3, :cond_45

    .line 60
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_4c

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 61
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 62
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 67
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3c
    :goto_3c
    return-void

    .line 54
    :cond_3d
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 55
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    .line 64
    :cond_45
    const/16 v1, 0xff

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3c

    .line 60
    nop

    :array_4c
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
