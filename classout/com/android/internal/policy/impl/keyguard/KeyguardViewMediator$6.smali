.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 2

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 2285
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3602(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2286
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothHeadset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3600()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .param p1, "profile"    # I

    .prologue
    .line 2291
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3602(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2292
    return-void
.end method
