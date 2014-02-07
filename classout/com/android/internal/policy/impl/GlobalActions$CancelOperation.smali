.class Lcom/android/internal/policy/impl/GlobalActions$CancelOperation;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelOperation"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1908
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$CancelOperation;->mHandler:Landroid/os/Handler;

    .line 1910
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1936
    const v2, 0x1090056

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1938
    .local v1, "v":Landroid/view/View;
    const v2, 0x1020327

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1940
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1941
    return-object v1
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1912
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$CancelOperation;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1945
    return-void
.end method

.method public onLongPress()Z
    .registers 2

    .prologue
    .line 1920
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .registers 1

    .prologue
    .line 1917
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 1928
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 1932
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 1924
    const/4 v0, 0x1

    return v0
.end method
