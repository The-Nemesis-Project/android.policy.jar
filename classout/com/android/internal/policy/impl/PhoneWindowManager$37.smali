.class Lcom/android/internal/policy/impl/PhoneWindowManager$37;
.super Landroid/os/IRemoteCallback$Stub;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForCocktailWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3

    .prologue
    .line 8551
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 8554
    const-string v0, "WindowManager"

    const-string v1, "CocktailBar displayed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 8556
    return-void
.end method
