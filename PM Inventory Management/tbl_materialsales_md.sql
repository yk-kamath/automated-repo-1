drop table o2c.tbl_materialsales_md;

/*==============================================================*/
/* Table: tbl_materialsales_md                                  */
/*==============================================================*/
create table if not exists o2c.tbl_materialsales_md (
   Kernel_Name          STRING,
   Client               STRING,
   Material_Number      STRING,
   Sales_Org            STRING,
   Distr_Channel        STRING,
   Df_Dchain_Level      STRING,
   Matl_Stats_Grp       STRING,
   Vol_Rebate_Grp       STRING,
   Commission_Grp       STRING,
   Cash_Discount        STRING,
   Dchain_Spec          STRING,
   Valid_From           DATE,
   Min_Order_Qty        DECIMAL(13,3),
   Min_Dely_Qty         DECIMAL(13,3),
   Maketoorder_Qty      DECIMAL(13,3),
   Delivery_Unit        DECIMAL(13,3),
   Unit_Of_Measure      STRING,
   Sales_Unit           STRING,
   Item_Cat_Group       STRING,
   Deliver_Plant        STRING,
   Prod_Hierarchy       STRING,
   Pr_Ref_Matl          STRING,
   Mat_Pricing_Grp      STRING,
   Acctassmtgrpmat      STRING,
   Materialgroup_1      STRING,
   Materialgroup_2      STRING,
   Materialgroup_3      STRING,
   Materialgroup_4      STRING,
   Material_Group5      STRING,
   Assortm_Grade        STRING,
   Ext_Asst_Prio        STRING,
   Lp_For_Stores        STRING,
   Lp_Distr_Ctrs        STRING,
   Listing_Active       STRING,
   Store_Listed_From    DATE,
   Storelisted_To       DATE,
   Dc_Listed_From       DATE,
   Dc_Listed_To         DATE,
   Store_For_Sale_From  DATE,
   Store_For_Sale_Till  DATE,
   Dc_For_Sale_From     DATE,
   Dc_For_Sale_Till     DATE,
   Product_Attr_1       STRING,
   Product_Attr_2       STRING,
   Product_Attr_3       STRING,
   Estore_Material      STRING,
   No_List_Price        STRING,
   Prod_Attribute6      STRING,
   Golden_Lane          STRING,
   Prod_Attribute8      STRING,
   Product_Attr_9       STRING,
   Prd_Attribute10      STRING,
   Max_Dely_Qty         DECIMAL(13,3),
   Rackjobberflag       STRING,
   Price_Fixing         STRING,
   Sun_Not_Var          STRING,
   Comp_Charactn        STRING,
   Pp_Sorting           INT,
   Price_Band_Cat       STRING,
   Rounding_Profile     STRING,
   change_type          STRING,
   "timeStamp"          TIMESTAMP,
   constraint FK_MATERIALSALES_ITEM foreign key (Kernel_Name, Prod_Hierarchy, Valid_From, change_type, "timeStamp") references o2c.tbl_item (Kernel_Name, Prod_Hierarchy, Valid_From, change_type, "timeStamp") disable novalidate
)
   USING delta
   LOCATION 'abfss://wb-o2c-commercial@az21q1datalakewe.dfs.core.windows.net/silver/silverl2/O2C_WPP_CDM_MaterialSales_MD'
   TBLPROPERTIES (
     'delta.autoOptimize.autoCompact' = 'true',
     'delta.autoOptimize.optimizeWrite' = 'true',
     'delta.enableChangeDataFeed' = 'true',
     'delta.minReaderVersion' = '1',
     'delta.minWriterVersion' = '4');