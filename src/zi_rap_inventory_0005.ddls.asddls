@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forInventory'
define root view entity ZI_RAP_Inventory_0005
  as select from ZRAP_INVEN_0005
{
  key UUID as UUID,
  INVENTORY_ID as InventoryID,
  PRODUCT_ID as ProductID,
  @Semantics.quantity.unitOfMeasure: 'QuantityUnit'
  QUANTITY as Quantity,
  QUANTITY_UNIT as QuantityUnit,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  PRICE as Price,
  CURRENCY_CODE as CurrencyCode,
  REMARK as Remark,
  NOT_AVAILABLE as NotAvailable,
  @Semantics.user.createdBy: true
  CREATED_BY as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  CREATED_AT as CreatedAt,
  @Semantics.user.lastChangedBy: true
  LAST_CHANGED_BY as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt
  
}
