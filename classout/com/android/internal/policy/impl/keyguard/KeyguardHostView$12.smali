.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;


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
    .line 1946
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSliderHandleAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    .line 1967
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const v2, 0x10203ab

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 1969
    .local v0, "slider":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_10

    .line 1970
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 1972
    :cond_10
    return-void
.end method


# virtual methods
.method public onCameraLaunchedSuccessfully()V
    .registers 3

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1955
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->scrollLeft()V

    .line 1957
    :cond_1f
    const/high16 v0, 0x3f800000

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->setSliderHandleAlpha(F)V

    .line 1958
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 1959
    return-void
.end method

.method public onCameraLaunchedUnsuccessfully()V
    .registers 2

    .prologue
    .line 1963
    const/high16 v0, 0x3f800000

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->setSliderHandleAlpha(F)V

    .line 1964
    return-void
.end method

.method public onLaunchingCamera()V
    .registers 2

    .prologue
    .line 1949
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->setSliderHandleAlpha(F)V

    .line 1950
    return-void
.end method
