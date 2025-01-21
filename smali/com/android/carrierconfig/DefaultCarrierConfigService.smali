.class public Lcom/android/carrierconfig/DefaultCarrierConfigService;
.super Landroid/service/carrier/CarrierService;
.source "DefaultCarrierConfigService.java"


# instance fields
.field private mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/service/carrier/CarrierService;-><init>()V

    const-string v0, "DefaultCarrierConfigService"

    const-string v1, "Service created"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    return-void
.end method

.method static checkFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "ro.boot.product.vendor.sku"

    const-string v1, ""

    .line 301
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.boot.product.hardware.sku"

    .line 303
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    .line 306
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v5, v7, :cond_17

    .line 307
    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 308
    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 309
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "iccid"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v9, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "name"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v9, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "imsi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v9, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "gid2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v9, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "gid1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "spn"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_6
    const-string v10, "sku"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_7
    const-string v10, "mnc"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_8
    const-string v10, "mcc"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_1

    :cond_8
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_9
    const-string v10, "cid"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_1

    :cond_9
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_a
    const-string v10, "hardwareSku"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_1

    :cond_a
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_b
    const-string v10, "vendorSku"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_1

    :cond_b
    move v9, v4

    goto :goto_1

    :sswitch_c
    const-string v10, "device"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_1

    :cond_c
    move v9, v3

    :goto_1
    const-string v10, ","

    const-string v11, "DefaultCarrierConfigService"

    packed-switch v9, :pswitch_data_0

    .line 413
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown attribute "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {v6, v7, v8, p1, p2}, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->checkMiuiFilters(ZLjava/lang/String;Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_8

    :pswitch_0
    if-eqz v6, :cond_e

    .line 395
    invoke-static {v8, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnIccid(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    :goto_2
    move v6, v4

    goto/16 :goto_8

    :cond_e
    move v6, v3

    goto/16 :goto_8

    :pswitch_1
    if-eqz v6, :cond_10

    if-eqz p1, :cond_f

    .line 375
    invoke-static {v8, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnImsi(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    move v6, v4

    goto :goto_3

    :cond_10
    move v6, v3

    .line 376
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkFilters imsi result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_2
    if-eqz v6, :cond_e

    if-eqz p1, :cond_d

    .line 364
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_2

    :pswitch_3
    if-eqz p1, :cond_16

    .line 354
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 355
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v9

    if-eqz v6, :cond_11

    if-eqz v9, :cond_11

    .line 356
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_11

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v4

    goto :goto_4

    :cond_11
    move v6, v3

    .line 357
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkFilters gid1: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " value:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_4
    if-eqz v6, :cond_13

    if-eqz p1, :cond_12

    .line 369
    invoke-static {v8, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnSP(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_12
    move v6, v4

    goto :goto_5

    :cond_13
    move v6, v3

    .line 370
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkFilters spn result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_5
    if-eqz v6, :cond_e

    .line 410
    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_2

    :pswitch_6
    if-eqz p1, :cond_16

    .line 334
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v7

    .line 335
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 337
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v9

    const-string v10, "checkFilters mncValue"

    .line 339
    invoke-static {v11, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    :goto_6
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_14
    if-eqz v6, :cond_e

    .line 346
    invoke-static {v8, v7, v6}, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->isAttributeContainsValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_2

    :pswitch_7
    if-eqz p1, :cond_16

    .line 314
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 317
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v9

    const-string v10, "checkFilters mccValue"

    .line 319
    invoke-static {v11, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :goto_7
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_15
    if-eqz v6, :cond_e

    .line 326
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_2

    :pswitch_8
    if-eqz v6, :cond_e

    if-eqz p1, :cond_d

    .line 401
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v7

    if-eq v6, v7, :cond_d

    .line 402
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getSpecificCarrierId()I

    move-result v7

    if-ne v6, v7, :cond_e

    goto/16 :goto_2

    :pswitch_9
    if-eqz v6, :cond_e

    .line 392
    invoke-static {v8, v2, v6}, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->isAttributeContainsValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_2

    :pswitch_a
    if-eqz v6, :cond_e

    .line 387
    invoke-static {v8, v0, v6}, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->isAttributeContainsValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_2

    :pswitch_b
    if-eqz v6, :cond_e

    .line 381
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v8, v7, v6}, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->isAttributeContainsValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_2

    :cond_16
    :goto_8
    :pswitch_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_17
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_c
        -0x40bac54b -> :sswitch_b
        -0x15d349eb -> :sswitch_a
        0x180be -> :sswitch_9
        0x1a58d -> :sswitch_8
        0x1a6e2 -> :sswitch_7
        0x1bd1d -> :sswitch_6
        0x1bdb1 -> :sswitch_5
        0x3068af -> :sswitch_4
        0x3068b0 -> :sswitch_3
        0x31627a -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5f62564 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_0
    .end packed-switch
.end method

.method static matchOnIccid(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 5

    .line 472
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getIccid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 473
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ","

    .line 478
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 479
    array-length v0, p0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 480
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v1
.end method

.method static matchOnImsi(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 1

    .line 436
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 439
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 440
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 441
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static matchOnSP(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 1

    .line 457
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 458
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 463
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 464
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 243
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 252
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 253
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-static {p0, p1, p2}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->checkFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method loadConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "_"

    const-string v3, "carrier_config_carrierid_"

    .line 113
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f010000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DefaultCarrierConfigService"

    const/4 v7, 0x0

    const-string v8, "utf-8"

    if-nez v1, :cond_0

    .line 120
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "carrier_config_no_sim.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    invoke-static {v0, v7, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 127
    invoke-static {v0, v7, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 128
    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to load config for no SIM"

    .line 131
    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v4

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    .line 139
    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 140
    new-instance v10, Landroid/os/PersistableBundle;

    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    .line 141
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Landroid/telephony/TelephonyManager;

    .line 143
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getCarrierIdFromMccMnc(Ljava/lang/String;)I

    move-result v12

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    aget-object v7, v13, v15

    move-object/from16 v16, v4

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v10

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getSpecificCarrierId()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 149
    invoke-static {v0, v2, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v10

    goto :goto_3

    .line 151
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 153
    invoke-static {v0, v4, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    move-object v9, v7

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 154
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 156
    invoke-static {v0, v4, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    move-object v11, v7

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object v7, v4

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    goto/16 :goto_1

    :cond_4
    move-object/from16 v16, v4

    move-object/from16 v17, v10

    .line 161
    :goto_3
    invoke-virtual {v10}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move-object v4, v10

    goto :goto_4

    .line 163
    :cond_5
    invoke-virtual {v9}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object v4, v9

    goto :goto_4

    .line 165
    :cond_6
    invoke-virtual {v11}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    move-object v4, v11

    goto :goto_4

    :cond_7
    move-object/from16 v16, v4

    :cond_8
    move-object/from16 v4, v16

    .line 169
    :goto_4
    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrier_config_mccmnc_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 173
    invoke-static {v0, v1, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 183
    :cond_9
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f020000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 185
    :try_start_2
    invoke-static {v0, v1, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 186
    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v1, v5}, Lcom/android/carrierconfig/MiuiCarrierConfigStub;->loadMiuiCarrierConfig(Landroid/content/Context;Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;Ljava/lang/String;)V

    return-object v4
.end method

.method public onLoadConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .locals 2

    const-string v0, "DefaultCarrierConfigService"

    const-string v1, "Config being fetched"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 100
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    iget-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->loadConfig(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 100
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "DefaultCarrierConfigService"

    const-string v0, "Failed to load config"

    .line 107
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    return-object p0
.end method
