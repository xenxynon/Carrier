.class public Lcom/android/carrierconfig/OnlineCarrierConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnlineCarrierConfigReceiver.java"


# instance fields
.field private final ACTION_ONLINE_CARRIER_CONFIG_CHANGED:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "android.carrier.action.ONLINE_CARRIER_CONFIG_CHANGED"

    .line 11
    iput-object v0, p0, Lcom/android/carrierconfig/OnlineCarrierConfigReceiver;->ACTION_ONLINE_CARRIER_CONFIG_CHANGED:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.carrier.action.ONLINE_CARRIER_CONFIG_CHANGED"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "url"

    .line 21
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "version"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_ONLINE_CARRIER_CONFIG_CHANGED, version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnlineCarrierConfigReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p1, p0, p2}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->onlineCarrierConfigChanged(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
