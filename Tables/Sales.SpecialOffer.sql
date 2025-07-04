﻿SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SpecialOffer](
	[SpecialOfferID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DiscountPct] [smallmoney] NOT NULL,
	[Type] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Category] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[MinQty] [int] NOT NULL,
	[MaxQty] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SpecialOffer_SpecialOfferID] PRIMARY KEY CLUSTERED 
(
	[SpecialOfferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [Sales].[SpecialOffer] ADD  CONSTRAINT [DF_SpecialOffer_DiscountPct]  DEFAULT ((0.00)) FOR [DiscountPct]
GO
ALTER TABLE [Sales].[SpecialOffer] ADD  CONSTRAINT [DF_SpecialOffer_MinQty]  DEFAULT ((0)) FOR [MinQty]
GO
ALTER TABLE [Sales].[SpecialOffer] ADD  CONSTRAINT [DF_SpecialOffer_rowguid]  DEFAULT (newid()) FOR [rowguid]
GO
ALTER TABLE [Sales].[SpecialOffer] ADD  CONSTRAINT [DF_SpecialOffer_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key for SpecialOffer records.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'SpecialOfferID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount description.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount precentage.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'DiscountPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of 0.0' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'DF_SpecialOffer_DiscountPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount type category.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Group the discount applies to such as Reseller or Customer.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount start date.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount end date.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Minimum discount percent allowed.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'MinQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of 0.0' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'DF_SpecialOffer_MinQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maximum discount percent allowed.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'MaxQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'rowguid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of NEWID()' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'DF_SpecialOffer_rowguid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the record was last updated.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of GETDATE()' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'DF_SpecialOffer_ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key (clustered) constraint' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'PK_SpecialOffer_SpecialOfferID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sale discounts lookup table.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer'