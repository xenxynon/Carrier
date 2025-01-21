.class public Lcom/android/carrierconfig/MiuiCarrierConfigStub;
.super Ljava/lang/Object;
.source "MiuiCarrierConfigStub.java"


# static fields
.field private static volatile sInstance:Lcom/android/carrierconfig/IMiuiCarrierConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    :try_start_0
    const-class v0, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;

    sget v1, Lcom/android/carrierconfig/MiuiCarrierConfigStubImpl;->$r8$clinit:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carrierconfig/IMiuiCarrierConfig;

    sput-object v0, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->sInstance:Lcom/android/carrierconfig/IMiuiCarrierConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MiuiCarrierConfigStub"

    const-string v1, "failed to initialize miui instance ..."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static checkMiuiFilters(ZLjava/lang/String;Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z
    .locals 7

    .line 38
    sget-object v0, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->sInstance:Lcom/android/carrierconfig/IMiuiCarrierConfig;

    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->sInstance:Lcom/android/carrierconfig/IMiuiCarrierConfig;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/carrierconfig/IMiuiCarrierConfig;->checkMiuiFilters(ZLjava/lang/String;Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z

    move-result p0

    :cond_0
    return p0
.end method

.method public static isAttributeContainsValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 32
    sget-object v0, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->sInstance:Lcom/android/carrierconfig/IMiuiCarrierConfig;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->sInstance:Lcom/android/carrierconfig/IMiuiCarrierConfig;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/carrierconfig/IMiuiCarrierConfig;->isAttributeContainsValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static loadMiuiCarrierConfig(Landroid/content/Context;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->sInstance:Lcom/android/carrierconfig/IMiuiCarrierConfig;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->sInstance:Lcom/android/carrierconfig/IMiuiCarrierConfig;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/carrierconfig/IMiuiCarrierConfig;->loadMiuiCarrierConfig(Landroid/content/Context;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
