@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forInventory'
@ObjectModel.semanticKey: [ 'InventoryID' ]
@Search.searchable: true
define root view entity ZC_RAP_Inventory_0005
  as projection on ZI_RAP_Inventory_0005
{
  key UUID,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  InventoryID,
  @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCE_RAP_PRODUCTS_0005', element: 'Product'  } }]
  ProductID,
  @Semantics.quantity.unitOfMeasure: 'QuantityUnit'
  Quantity,
  @Semantics.unitOfMeasure: true
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_UnitOfMeasure', 
      element: 'UnitOfMeasure'
    }
  } ]
  QuantityUnit,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  Price,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_Currency', 
      element: 'Currency'
    }
  } ]
  CurrencyCode,
  Remark,
  NotAvailable,
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt
  
}
