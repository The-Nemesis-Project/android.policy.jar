.class Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;
.super Ljava/lang/Object;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 73
    iget-object v4, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v0, v4, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v3, :cond_11

    aget-object v2, v0, v1

    .line 75
    .local v2, "icon":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 77
    .end local v2    # "icon":Landroid/view/View;
    :cond_11
    return-void
.end method
