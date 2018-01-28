USE [OSACA]
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Outgoings', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Outgoings'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Outgoings', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Outgoings'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Invoices', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Invoices'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Invoices', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Invoices'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transportation', N'COLUMN',N'TransporterID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transportation', @level2type=N'COLUMN',@level2name=N'TransporterID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transportation', N'COLUMN',N'ConsigneeID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transportation', @level2type=N'COLUMN',@level2name=N'ConsigneeID'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MediaFiles', N'COLUMN',N'Priority'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MediaFiles', @level2type=N'COLUMN',@level2name=N'Priority'
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectRow]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_SelectRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Users_Select2]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Select2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_Select2]
GO
/****** Object:  StoredProcedure [dbo].[Users_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_Save]
GO
/****** Object:  StoredProcedure [dbo].[Users_Login]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Login]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_Login]
GO
/****** Object:  StoredProcedure [dbo].[Users_DeleteRow]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_DeleteRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_DeleteRow]
GO
/****** Object:  StoredProcedure [dbo].[TransporterPayments_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TransporterPayments_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[TransporterPayments_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TransporterPayments_Save]
GO
/****** Object:  StoredProcedure [dbo].[TransporterPayments_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments_Properties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TransporterPayments_Properties]
GO
/****** Object:  StoredProcedure [dbo].[TransporterPayments_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TransporterPayments_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_SaveAfterInvoice]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_SaveAfterInvoice]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_SaveAfterInvoice]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_Save]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Row]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Row]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_Row]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Properties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_Properties]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Outgoings_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Outgoings_Save]
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_One]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_One]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Outgoings_One]
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Outgoings_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_SelectRow]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_SelectRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_Save]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Properties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_Properties]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Images_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Images_Save]
GO
/****** Object:  StoredProcedure [dbo].[Images_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images_Properties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Images_Properties]
GO
/****** Object:  StoredProcedure [dbo].[Images_Main]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images_Main]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Images_Main]
GO
/****** Object:  StoredProcedure [dbo].[Images_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Images_Delete]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SelectRow]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SelectRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Select2]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Select2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_Select2]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_Save]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Names]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Names]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_Names]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_SelectRow]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_SelectRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Expenses_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Expenses_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Expenses_Save]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Expenses_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Docs_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Docs_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Docs_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Docs_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Docs_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Docs_Delete]
GO
/****** Object:  StoredProcedure [dbo].[ClientStatement_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientStatement_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientStatement_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Clients_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Clients_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_Save]
GO
/****** Object:  StoredProcedure [dbo].[Clients_Profit]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Profit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_Profit]
GO
/****** Object:  StoredProcedure [dbo].[Clients_GetNames]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_GetNames]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Clients_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_Delete]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientPayments_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientPayments_Save]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Properties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientPayments_Properties]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientPayments_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Client_GetSummary]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client_GetSummary]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Client_GetSummary]
GO
/****** Object:  StoredProcedure [dbo].[Banks_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Banks_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Banks_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Banks_Save]
GO
/****** Object:  StoredProcedure [dbo].[Banks_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Banks_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Balances_Select]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Balances_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Balances_Select]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [FK_Transportation_Users]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [FK_Transportation_Clients]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MediaFiles_MediaTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[MediaFiles]'))
ALTER TABLE [dbo].[MediaFiles] DROP CONSTRAINT [FK_MediaFiles_MediaTypes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [FK_Invoices_Clients]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails] DROP CONSTRAINT [FK_InvoiceDetails_Invoices]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Expenses]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails] DROP CONSTRAINT [FK_InvoiceDetails_Expenses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_IsDeleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_IsActive]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_TransporterPayments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TransporterPayments] DROP CONSTRAINT [DF_TransporterPayments_Deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_TransporterPayments_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TransporterPayments] DROP CONSTRAINT [DF_TransporterPayments_AddDate]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Transport__Credi__04AFB25B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [DF__Transport__Credi__04AFB25B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Transport__Debit__03BB8E22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [DF__Transport__Debit__03BB8E22]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [DF_Transportation_Deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_TotalAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [DF_Transportation_TotalAmount]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_CarageCharge]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [DF_Transportation_CarageCharge]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_TransportCharge]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [DF_Transportation_TransportCharge]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_TransportDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [DF_Transportation_TransportDate]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Outgoings__Total__32767D0B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Outgoings] DROP CONSTRAINT [DF__Outgoings__Total__32767D0B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Outgoings__VAT__318258D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Outgoings] DROP CONSTRAINT [DF__Outgoings__VAT__318258D2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Outgoings_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Outgoings] DROP CONSTRAINT [DF_Outgoings_Deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Outgoings_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Outgoings] DROP CONSTRAINT [DF_Outgoings_AddDate]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_MediaFiles_IsMain]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MediaFiles] DROP CONSTRAINT [DF_MediaFiles_IsMain]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_MediaFiles_MediaTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MediaFiles] DROP CONSTRAINT [DF_MediaFiles_MediaTypeID]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PropertyMedia_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MediaFiles] DROP CONSTRAINT [DF_PropertyMedia_Active]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Invoices__DocVer__719CDDE7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [DF__Invoices__DocVer__719CDDE7]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Invoices__VatVer__70A8B9AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [DF__Invoices__VatVer__70A8B9AE]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Invoices__TotalA__693CA210]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [DF__Invoices__TotalA__693CA210]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Invoices__Profit__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [DF__Invoices__Profit__68487DD7]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Invoices_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [DF_Invoices_Deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Invoices_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [DF_Invoices_AddDate]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__InvoiceDet__Cost__6A30C649]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[InvoiceDetails] DROP CONSTRAINT [DF__InvoiceDet__Cost__6A30C649]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Expenses_Deleed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expenses] DROP CONSTRAINT [DF_Expenses_Deleed]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Expenses_Priority]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expenses] DROP CONSTRAINT [DF_Expenses_Priority]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Expenses_DefaultValue]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expenses] DROP CONSTRAINT [DF_Expenses_DefaultValue]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Clients_Credit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [DF_Clients_Credit]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Clients_Debit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [DF_Clients_Debit]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClientPayments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ClientPayments] DROP CONSTRAINT [DF_ClientPayments_Deleted]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClientPayments_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ClientPayments] DROP CONSTRAINT [DF_ClientPayments_AddDate]
END
GO
/****** Object:  View [w_OSAKASys].[View_ExpensesParentsVatMaps]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[w_OSAKASys].[View_ExpensesParentsVatMaps]'))
DROP VIEW [w_OSAKASys].[View_ExpensesParentsVatMaps]
GO
/****** Object:  View [dbo].[View_TransporterPayments]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_TransporterPayments]'))
DROP VIEW [dbo].[View_TransporterPayments]
GO
/****** Object:  View [dbo].[View_Transportation]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Transportation]'))
DROP VIEW [dbo].[View_Transportation]
GO
/****** Object:  View [dbo].[View_Outgoings]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Outgoings]'))
DROP VIEW [dbo].[View_Outgoings]
GO
/****** Object:  View [dbo].[View_Invoices]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Invoices]'))
DROP VIEW [dbo].[View_Invoices]
GO
/****** Object:  View [dbo].[View_ExpensesParentsVatMaps]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesParentsVatMaps]'))
DROP VIEW [dbo].[View_ExpensesParentsVatMaps]
GO
/****** Object:  View [dbo].[View_ClientPayments]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientPayments]'))
DROP VIEW [dbo].[View_ClientPayments]
GO
/****** Object:  View [dbo].[View_ClientStatementsFinal]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientStatementsFinal]'))
DROP VIEW [dbo].[View_ClientStatementsFinal]
GO
/****** Object:  View [dbo].[View_ClientStatements]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientStatements]'))
DROP VIEW [dbo].[View_ClientStatements]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserTypes]') AND type in (N'U'))
DROP TABLE [dbo].[UserTypes]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[TransporterPayments]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments]') AND type in (N'U'))
DROP TABLE [dbo].[TransporterPayments]
GO
/****** Object:  Table [dbo].[Transportation]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation]') AND type in (N'U'))
DROP TABLE [dbo].[Transportation]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
DROP TABLE [dbo].[Settings]
GO
/****** Object:  Table [dbo].[Outgoings]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings]') AND type in (N'U'))
DROP TABLE [dbo].[Outgoings]
GO
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaTypes]') AND type in (N'U'))
DROP TABLE [dbo].[MediaTypes]
GO
/****** Object:  Table [dbo].[MediaFiles]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaFiles]') AND type in (N'U'))
DROP TABLE [dbo].[MediaFiles]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type in (N'U'))
DROP TABLE [dbo].[Invoices]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]') AND type in (N'U'))
DROP TABLE [dbo].[InvoiceDetails]
GO
/****** Object:  Table [dbo].[ExpenseTypes]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes]') AND type in (N'U'))
DROP TABLE [dbo].[ExpenseTypes]
GO
/****** Object:  Table [dbo].[ExpensesMap]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpensesMap]') AND type in (N'U'))
DROP TABLE [dbo].[ExpensesMap]
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses]') AND type in (N'U'))
DROP TABLE [dbo].[Expenses]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
DROP TABLE [dbo].[Clients]
GO
/****** Object:  Table [dbo].[ClientPayments]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments]') AND type in (N'U'))
DROP TABLE [dbo].[ClientPayments]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 1/28/2018 9:51:26 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks]') AND type in (N'U'))
DROP TABLE [dbo].[Banks]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Banks](
	[BankID] [tinyint] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ClientPayments]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientPayments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[AddDate] [date] NULL,
	[PaymentAmount] [money] NULL,
	[Deleted] [bit] NULL,
	[BankID] [tinyint] NULL,
	[CheckNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClientPayments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](150) NULL,
	[Debit] [money] NULL,
	[Credit] [money] NULL,
	[ClientTRN] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expenses](
	[ExpenseID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseName] [nvarchar](50) NOT NULL,
	[DefaultValue] [money] NOT NULL,
	[Active] [bit] NULL,
	[Priority] [int] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Expenses] PRIMARY KEY CLUSTERED 
(
	[ExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExpensesMap]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpensesMap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExpensesMap](
	[ExpenseID] [int] NOT NULL,
	[ParentExpenseID] [int] NOT NULL,
	[SettingID] [int] NULL,
 CONSTRAINT [PK_ExpensesMap] PRIMARY KEY CLUSTERED 
(
	[ExpenseID] ASC,
	[ParentExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExpenseTypes]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExpenseTypes](
	[ExpenseTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExpenseTypes] PRIMARY KEY CLUSTERED 
(
	[ExpenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvoiceDetails](
	[InvoiceDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NULL,
	[ExpenseID] [int] NULL,
	[Amount] [money] NULL,
	[Cost] [money] NOT NULL,
 CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[InvoiceDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Invoices](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[AddDate] [date] NULL,
	[Deleted] [bit] NULL,
	[Profit] [money] NOT NULL,
	[TotalAmount] [money] NOT NULL,
	[ContainerNo] [nvarchar](50) NULL,
	[DeclarationNo] [nvarchar](50) NULL,
	[Notes] [nvarchar](1000) NULL,
	[BillOfEntryDate] [date] NULL,
	[VatVerified] [bit] NULL,
	[VatVerifiedDate] [datetime] NULL,
	[DocVerified] [bit] NULL,
	[DocVerifiedDate] [datetime] NULL,
	[TransporterID] [int] NULL,
	[CraneDriverID] [int] NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MediaFiles]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaFiles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MediaFiles](
	[MediaID] [bigint] IDENTITY(1,1) NOT NULL,
	[MasterID] [bigint] NULL,
	[MediaUrl] [nvarchar](150) NULL,
	[Active] [bit] NULL,
	[Priority] [tinyint] NULL,
	[MediaTypeID] [tinyint] NULL,
	[IsMain] [bit] NULL,
 CONSTRAINT [PK_PropertyMedia] PRIMARY KEY CLUSTERED 
(
	[MediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MediaTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MediaTypes](
	[MediaTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MediaTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MediaTypes] PRIMARY KEY CLUSTERED 
(
	[MediaTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Outgoings]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Outgoings](
	[OutgoingID] [bigint] IDENTITY(1,1) NOT NULL,
	[AddDate] [datetime] NULL,
	[ExpenseTypeID] [int] NULL,
	[Amount] [money] NULL,
	[RefID] [nvarchar](50) NULL,
	[Notes] [nvarchar](3000) NULL,
	[Deleted] [bit] NULL,
	[UserID] [int] NULL,
	[VAT] [money] NULL,
	[TotalAmount] [money] NULL,
 CONSTRAINT [PK_Outgoings] PRIMARY KEY CLUSTERED 
(
	[OutgoingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Settings](
	[ID] [int] NOT NULL,
	[Attr] [nvarchar](50) NOT NULL,
	[Val] [nvarchar](50) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Transportation]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transportation](
	[TransportID] [bigint] IDENTITY(1,1) NOT NULL,
	[TransportDate] [date] NOT NULL,
	[ConsigneeID] [int] NOT NULL,
	[TransporterID] [int] NOT NULL,
	[ContainerNo] [nvarchar](50) NOT NULL,
	[TransportCharge] [money] NOT NULL,
	[CarageCharge] [money] NOT NULL,
	[TotalAmount] [money] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Debit] [money] NULL,
	[Credit] [money] NULL,
	[DInvoiceID] [bigint] NULL,
	[InvoiceID] [bigint] NULL,
	[Serial] [bigint] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Transportation] PRIMARY KEY CLUSTERED 
(
	[TransportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TransporterPayments]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TransporterPayments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[TransporterID] [int] NULL,
	[AddDate] [date] NULL,
	[PaymentAmount] [money] NULL,
	[Deleted] [bit] NULL,
	[BankID] [tinyint] NULL,
	[CheckNo] [nvarchar](50) NULL,
	[Serial] [bigint] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_TransporterPayments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserFullName] [nvarchar](150) NOT NULL,
	[Phone] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Username] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[Mobile] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserTypes](
	[TypeID] [int] NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[View_ClientStatements]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientStatements]'))
EXEC dbo.sp_executesql @statement = N'





CREATE VIEW [dbo].[View_ClientStatements]
AS
	SELECT        InvoiceID AS ID, AddDate AS Date, TotalAmount AS Amount, TotalAmount AS InAmount, 0 AS OutAmount, N''Invoice'' AS Note, ClientID, DeclarationNo, ContainerNo, Profit
FROM            Invoices WITH (NOLOCK)
WHERE        (Deleted = 0) AND (TotalAmount > 0)
UNION ALL
SELECT        PaymentID, AddDate, - PaymentAmount AS Amount, 0 AS InAmount, PaymentAmount AS OutAmount, N''Payment'' AS Note, ClientID, '''' AS Expr1, '''' AS Expr2, 0 AS Expr3
FROM            ClientPayments WITH (NOLOCK)
WHERE        (Deleted = 0) AND (PaymentAmount > 0)
' 
GO
/****** Object:  View [dbo].[View_ClientStatementsFinal]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientStatementsFinal]'))
EXEC dbo.sp_executesql @statement = N'


CREATE view [dbo].[View_ClientStatementsFinal]
AS
	WITH Stm
		AS
		(
		   SELECT ID, [Date], Amount, InAmount, OutAmount, Note, Amount AS Balance, ClientID
			   FROM View_ClientStatements
			   GROUP BY [Date], ID, Amount, InAmount, OutAmount, Note, ClientID		  
		), StmRanked AS
		(
		   SELECT ID, [Date], Amount, Note, InAmount, OutAmount, Balance, ClientID, ROW_NUMBER() OVER(ORDER BY [Date] ASC) RowNo
			FROM Stm
		) 
	SELECT ClientID, ID, Balance, InAmount, OutAmount, [Date], Note, c1.RowNo
	FROM StmRanked c1
' 
GO
/****** Object:  View [dbo].[View_ClientPayments]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientPayments]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[View_ClientPayments]
AS
SELECT        dbo.ClientPayments.PaymentID, dbo.ClientPayments.ClientID, dbo.ClientPayments.AddDate, dbo.ClientPayments.PaymentAmount, dbo.Clients.ClientName, dbo.Banks.BankName, dbo.ClientPayments.BankID, 
                         dbo.ClientPayments.CheckNo
FROM            dbo.ClientPayments INNER JOIN
                         dbo.Clients ON dbo.ClientPayments.ClientID = dbo.Clients.ClientID LEFT OUTER JOIN
                         dbo.Banks ON dbo.ClientPayments.BankID = dbo.Banks.BankID
WHERE        (dbo.ClientPayments.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_ExpensesParentsVatMaps]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesParentsVatMaps]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[View_ExpensesParentsVatMaps]
AS
SELECT        InvoiceDetails.InvoiceID, Expenses.ExpenseName AS VatName, InvoiceDetails.Amount AS VATAmount, InvoiceDetails_1.Amount AS ServiceChargeAmount, Expenses_1.ExpenseName AS ServiceChargeName, 
                         Settings.Val AS VatRate
FROM            InvoiceDetails INNER JOIN
                         ExpensesMap ON InvoiceDetails.ExpenseID = ExpensesMap.ExpenseID INNER JOIN
                         InvoiceDetails AS InvoiceDetails_1 ON InvoiceDetails.InvoiceID = InvoiceDetails_1.InvoiceID AND ExpensesMap.ParentExpenseID = InvoiceDetails_1.ExpenseID INNER JOIN
                         Expenses ON ExpensesMap.ExpenseID = Expenses.ExpenseID INNER JOIN
                         Expenses AS Expenses_1 ON InvoiceDetails_1.ExpenseID = Expenses_1.ExpenseID INNER JOIN
                         Settings ON ExpensesMap.SettingID = Settings.ID
' 
GO
/****** Object:  View [dbo].[View_Invoices]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Invoices]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[View_Invoices]
AS
SELECT dbo.Invoices.InvoiceID, dbo.Invoices.AddDate, dbo.Clients.ClientName, SUM(dbo.InvoiceDetails.Amount) AS TotalAmount, dbo.Invoices.ClientID, dbo.Invoices.ContainerNo, dbo.Invoices.DeclarationNo, dbo.Invoices.Notes, 
                  dbo.Invoices.BillOfEntryDate, dbo.Invoices.VatVerified, dbo.Invoices.TransporterID, dbo.Invoices.CraneDriverID, dbo.Clients.ClientTRN
FROM     dbo.Clients INNER JOIN
                  dbo.Invoices ON dbo.Clients.ClientID = dbo.Invoices.ClientID INNER JOIN
                  dbo.InvoiceDetails ON dbo.Invoices.InvoiceID = dbo.InvoiceDetails.InvoiceID
WHERE  (dbo.Invoices.Deleted = 0)
GROUP BY dbo.Invoices.InvoiceID, dbo.Invoices.AddDate, dbo.Clients.ClientName, dbo.Invoices.ClientID, dbo.Invoices.ContainerNo, dbo.Invoices.DeclarationNo, dbo.Invoices.Notes, dbo.Invoices.BillOfEntryDate, dbo.Invoices.VatVerified, 
                  dbo.Invoices.TransporterID, dbo.Invoices.CraneDriverID, dbo.Clients.ClientTRN
' 
GO
/****** Object:  View [dbo].[View_Outgoings]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Outgoings]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[View_Outgoings]
AS
SELECT        dbo.ExpenseTypes.ExpenseTypeName, dbo.Outgoings.OutgoingID, dbo.Outgoings.AddDate, dbo.Outgoings.ExpenseTypeID, dbo.Outgoings.Amount, dbo.Outgoings.RefID, dbo.Outgoings.Notes, dbo.Outgoings.VAT, 
                         dbo.Outgoings.TotalAmount
FROM            dbo.ExpenseTypes INNER JOIN
                         dbo.Outgoings ON dbo.ExpenseTypes.ExpenseTypeID = dbo.Outgoings.ExpenseTypeID
WHERE        (dbo.Outgoings.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_Transportation]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Transportation]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[View_Transportation]
AS
SELECT        dbo.Transportation.TransportID, dbo.Transportation.TransportDate, dbo.Transportation.ConsigneeID, dbo.Transportation.TransporterID, dbo.Transportation.ContainerNo, dbo.Transportation.TransportCharge, 
                         dbo.Transportation.CarageCharge, dbo.Transportation.TotalAmount, dbo.Transportation.Deleted, dbo.Users.UserFullName, dbo.Clients.ClientName, dbo.Transportation.Serial, dbo.Transportation.TypeID, 
                         dbo.UserTypes.TypeName
FROM            dbo.Transportation INNER JOIN
                         dbo.Users ON dbo.Transportation.TransporterID = dbo.Users.UserID INNER JOIN
                         dbo.Clients ON dbo.Transportation.ConsigneeID = dbo.Clients.ClientID INNER JOIN
                         dbo.UserTypes ON dbo.Transportation.TypeID = dbo.UserTypes.TypeID
WHERE        (dbo.Transportation.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_TransporterPayments]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_TransporterPayments]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[View_TransporterPayments]
AS
SELECT        dbo.TransporterPayments.PaymentID, dbo.TransporterPayments.TransporterID, dbo.TransporterPayments.AddDate, dbo.TransporterPayments.PaymentAmount, dbo.Users.UserFullName AS TransporterName, 
                         dbo.Banks.BankName, dbo.TransporterPayments.BankID, dbo.TransporterPayments.CheckNo, dbo.TransporterPayments.Serial, dbo.TransporterPayments.TypeID, dbo.UserTypes.TypeName
FROM            dbo.TransporterPayments INNER JOIN
                         dbo.Users ON dbo.TransporterPayments.TransporterID = dbo.Users.UserID INNER JOIN
                         dbo.UserTypes ON dbo.TransporterPayments.TypeID = dbo.UserTypes.TypeID LEFT OUTER JOIN
                         dbo.Banks ON dbo.TransporterPayments.BankID = dbo.Banks.BankID
WHERE        (dbo.TransporterPayments.Deleted = 0)
' 
GO
/****** Object:  View [w_OSAKASys].[View_ExpensesParentsVatMaps]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[w_OSAKASys].[View_ExpensesParentsVatMaps]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [w_OSAKASys].[View_ExpensesParentsVatMaps]
AS
SELECT        InvoiceDetails.InvoiceID, Expenses.ExpenseName AS VatName, InvoiceDetails.Amount AS VATAmount, InvoiceDetails_1.Amount AS ServiceChargeAmount, Expenses_1.ExpenseName AS ServiceChargeName, 
                         Settings.Val AS VatRate
FROM            InvoiceDetails INNER JOIN
                         ExpensesMap ON InvoiceDetails.ExpenseID = ExpensesMap.ExpenseID INNER JOIN
                         InvoiceDetails AS InvoiceDetails_1 ON InvoiceDetails.InvoiceID = InvoiceDetails_1.InvoiceID AND ExpensesMap.ParentExpenseID = InvoiceDetails_1.ExpenseID INNER JOIN
                         Expenses ON ExpensesMap.ExpenseID = Expenses.ExpenseID INNER JOIN
                         Expenses AS Expenses_1 ON InvoiceDetails_1.ExpenseID = Expenses_1.ExpenseID INNER JOIN
                         Settings ON ExpensesMap.SettingID = Settings.ID
' 
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClientPayments_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ClientPayments] ADD  CONSTRAINT [DF_ClientPayments_AddDate]  DEFAULT (getdate()) FOR [AddDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClientPayments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ClientPayments] ADD  CONSTRAINT [DF_ClientPayments_Deleted]  DEFAULT ((0)) FOR [Deleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Clients_Debit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Debit]  DEFAULT ((0)) FOR [Debit]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Clients_Credit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Credit]  DEFAULT ((0)) FOR [Credit]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Expenses_DefaultValue]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expenses] ADD  CONSTRAINT [DF_Expenses_DefaultValue]  DEFAULT ((0)) FOR [DefaultValue]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Expenses_Priority]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expenses] ADD  CONSTRAINT [DF_Expenses_Priority]  DEFAULT ((0)) FOR [Priority]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Expenses_Deleed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expenses] ADD  CONSTRAINT [DF_Expenses_Deleed]  DEFAULT ((0)) FOR [Deleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__InvoiceDet__Cost__6A30C649]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[InvoiceDetails] ADD  DEFAULT ((0)) FOR [Cost]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Invoices_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoices_AddDate]  DEFAULT (getdate()) FOR [AddDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Invoices_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoices_Deleted]  DEFAULT ((0)) FOR [Deleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Invoices__Profit__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [Profit]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Invoices__TotalA__693CA210]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [TotalAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Invoices__VatVer__70A8B9AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [VatVerified]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Invoices__DocVer__719CDDE7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [DocVerified]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PropertyMedia_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MediaFiles] ADD  CONSTRAINT [DF_PropertyMedia_Active]  DEFAULT ((0)) FOR [Active]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_MediaFiles_MediaTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MediaFiles] ADD  CONSTRAINT [DF_MediaFiles_MediaTypeID]  DEFAULT ((1)) FOR [MediaTypeID]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_MediaFiles_IsMain]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MediaFiles] ADD  CONSTRAINT [DF_MediaFiles_IsMain]  DEFAULT ((0)) FOR [IsMain]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Outgoings_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Outgoings] ADD  CONSTRAINT [DF_Outgoings_AddDate]  DEFAULT (getdate()) FOR [AddDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Outgoings_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Outgoings] ADD  CONSTRAINT [DF_Outgoings_Deleted]  DEFAULT ((0)) FOR [Deleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Outgoings__VAT__318258D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Outgoings] ADD  DEFAULT ((0)) FOR [VAT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Outgoings__Total__32767D0B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Outgoings] ADD  DEFAULT ((0)) FOR [TotalAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_TransportDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] ADD  CONSTRAINT [DF_Transportation_TransportDate]  DEFAULT (getdate()) FOR [TransportDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_TransportCharge]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] ADD  CONSTRAINT [DF_Transportation_TransportCharge]  DEFAULT ((0)) FOR [TransportCharge]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_CarageCharge]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] ADD  CONSTRAINT [DF_Transportation_CarageCharge]  DEFAULT ((0)) FOR [CarageCharge]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_TotalAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] ADD  CONSTRAINT [DF_Transportation_TotalAmount]  DEFAULT ((0)) FOR [TotalAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transportation_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] ADD  CONSTRAINT [DF_Transportation_Deleted]  DEFAULT ((0)) FOR [Deleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Transport__Debit__03BB8E22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] ADD  DEFAULT ((0)) FOR [Debit]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Transport__Credi__04AFB25B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transportation] ADD  DEFAULT ((0)) FOR [Credit]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_TransporterPayments_AddDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TransporterPayments] ADD  CONSTRAINT [DF_TransporterPayments_AddDate]  DEFAULT (getdate()) FOR [AddDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_TransporterPayments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TransporterPayments] ADD  CONSTRAINT [DF_TransporterPayments_Deleted]  DEFAULT ((0)) FOR [Deleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Expenses]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Expenses] FOREIGN KEY([ExpenseID])
REFERENCES [dbo].[Expenses] ([ExpenseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Expenses]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Expenses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Invoices] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoices] ([InvoiceID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Invoices]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Clients]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MediaFiles_MediaTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[MediaFiles]'))
ALTER TABLE [dbo].[MediaFiles]  WITH CHECK ADD  CONSTRAINT [FK_MediaFiles_MediaTypes] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([MediaTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MediaFiles_MediaTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[MediaFiles]'))
ALTER TABLE [dbo].[MediaFiles] CHECK CONSTRAINT [FK_MediaFiles_MediaTypes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation]  WITH CHECK ADD  CONSTRAINT [FK_Transportation_Clients] FOREIGN KEY([ConsigneeID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation] CHECK CONSTRAINT [FK_Transportation_Clients]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation]  WITH CHECK ADD  CONSTRAINT [FK_Transportation_Users] FOREIGN KEY([TransporterID])
REFERENCES [dbo].[Users] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation] CHECK CONSTRAINT [FK_Transportation_Users]
GO
/****** Object:  StoredProcedure [dbo].[Balances_Select]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Balances_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Balances_Select] AS' 
END
GO

-- ==========================================================================================
-- Entity Name:	Balances_Select
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Balances_Select]	
As
Begin	
	SELECT (SELECT SUM(TotalAmount) FROM View_Invoices) AS TotalInvoices,
			ISNULL((SELECT SUM(PaymentAmount) FROM ClientPayments WITH(NOLOCK) Where Deleted=0), 0) AS TotalPayments,
			(SELECT SUM(Profit) FROM Invoices WITH(NOLOCK) Where Deleted=0) AS Profit,
			(SELECT SUM(Amount) FROM Outgoings WITH(NOLOCK) Where Deleted=0) AS Outgoings,
			(SELECT SUM(TransportCharge) FROM Transportation WITH(NOLOCK) Where Deleted=0) AS TransFees,
			ISNULL((SELECT SUM(PaymentAmount) FROM TransporterPayments WITH(NOLOCK) Where Deleted=0), 0) AS TransPayments;
End
GO
/****** Object:  StoredProcedure [dbo].[Banks_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Banks_Delete] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Banks_Delete]
	@BankID tinyint
AS
BEGIN
	Delete from Banks Where BankID=@BankID;
	RETURN @@IDENTITY;
END
GO
/****** Object:  StoredProcedure [dbo].[Banks_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Banks_Save] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Banks_Save]
	@BankID tinyint
	,@BankName nvarchar(50)
AS
BEGIN	
	IF EXISTS(SELECT NULL FROM Banks Where BankID=@BankID)
	BEGIN
		UPDATE [dbo].[Banks] SET [BankName] = @BankName WHERE BankID=@BankID
		RETURN @BankID;
	END
	ELSE
	BEGIN
		INSERT into [Banks] ([BankName]) VALUES(@BankName);
		RETURN @@IDENTITY;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Banks_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Banks_SelectList] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Banks_SelectList]
	@DisplayStart tinyint = 0,
	@DisplayLength tinyint = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	SET NOCOUNT ON

	SELECT BankID, BankName  
		FROM (SELECT  BankID, BankName, (ROW_NUMBER() OVER(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN Banks.BankID END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN Banks.BankID END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN Banks.[BankName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN Banks.[BankName] END desc)) AS RowNo 
		FROM Banks 
		Where (@SearchParam IS NULL OR [BankName] LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount FROM Banks  Where (@SearchParam IS NULL OR [BankName] LIKE '%'+ @SearchParam + '%')
END
GO
/****** Object:  StoredProcedure [dbo].[Client_GetSummary]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client_GetSummary]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Client_GetSummary] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Balances_Select
-- ALTER date:	7-1-2017 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Client_GetSummary]	
	@ID int -- ClientID
As
Begin	
	SELECT (SELECT SUM(TotalAmount) FROM View_Invoices WHERE ClientID = @ID) AS TotalInvoices,
			(SELECT SUM(PaymentAmount) FROM ClientPayments Where Deleted=0 AND  ClientID = @ID) AS TotalPayments,
			(SELECT TOP 1 ClientName FROM Clients Where ClientID=@ID) ClientName;
End
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_Delete] AS' 
END
GO
-- =============================================
-- Author:		<Mohamed Salah>
-- ALTER date: <1-2-2017>
-- Description:	<Delete payment and update client balance>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_Delete]
	@PaymentID int
AS
BEGIN

DECLARE @Count int;

BEGIN TRAN DeletePayment
	UPDATE ClientPayments SET Deleted=1 Where PaymentID=@PaymentID;
	SET @Count = @@ROWCOUNT;

	IF @Count > 0 -- update client debits and balances
		Update Clients SET Debit = (Debit - PaymentAmount)
			FROM View_ClientPayments JOIN Clients ON Clients.ClientID=View_ClientPayments.ClientID
			Where PaymentID=@PaymentID
COMMIT Tran

	RETURN @Count;
END
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Properties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_Properties] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_Properties]
	
AS
BEGIN
	SELECT ClientID,ClientName FROM Clients;
	SELECT BankID,BankName FROM Banks;
END
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_Save] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_Save]
	@PaymentID int,
	@ClientID int,
	@AddDate date,
	@PaymentAmount money=0,
	@BankID tinyint=NULL,
	@CheckNo nvarchar(50) = NULL
AS
BEGIN
--BEGIN TRAN SavePayment	
	IF EXISTS(SELECT NULL FROM ClientPayments Where PaymentID=@PaymentID)
	BEGIN
		UPDATE [ClientPayments]
	   SET [ClientID] = @ClientID
		  ,[AddDate] = @AddDate
		  ,[PaymentAmount] = @PaymentAmount
		  ,BankID = @BankID
		  ,CheckNo = @CheckNo
		WHERE PaymentID=@PaymentID;

		----------------------Update client debit
		DECLARE @LatestDebit money=0;
		SET @LatestDebit=(SELECT TOP 1 ISNULL([PaymentAmount],0) FROM [ClientPayments] WHERE PaymentID=@PaymentID);
		
		Update Clients SET Debit =(Debit +(@PaymentAmount - @LatestDebit)) Where  [ClientID] = @ClientID;
		-----------------------------------------

		RETURN @PaymentID;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[ClientPayments] ([ClientID] ,[AddDate] ,[PaymentAmount],[Deleted],BankID, CheckNo)
			VALUES (@ClientID ,@AddDate ,@PaymentAmount,0,@BankID, @CheckNo);

		IF @@IDENTITY > 0 --------------------------------Update client debit
			Update Clients SET Debit =(Debit + @PaymentAmount) Where  [ClientID] = @ClientID
		---------------------------------------------
		
		RETURN @@IDENTITY;
	END

--Commit Tran
END
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_SelectList] AS' 
END
GO






-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc',
	@ID int = NULL,-- ClientID
	@From datetime = NULL,
	@To datetime = NULL
AS
BEGIN
	SET NOCOUNT ON
	-- list
	SELECT PaymentID, ClientID, AddDate, PaymentAmount, ClientName, BankID, BankName, CheckNo  
		FROM (SELECT  PaymentID, ClientID, AddDate, PaymentAmount, ClientName,BankID, BankName, CheckNo 
		,(row_number() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [PaymentID] END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [PaymentID] END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN [ClientName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN [ClientName] END desc,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [AddDate] END ASC,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [AddDate] END desc)) AS RowNo 
		FROM View_ClientPayments 
		Where (@ID IS NULL OR ClientID = @ID) AND (@From IS NULL OR AddDate >= @From) AND (@To IS NULL OR AddDate <= @To) AND (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount, SUM(PaymentAmount) AS TotalPayments FROM View_ClientPayments 
		Where (@ID IS NULL OR ClientID = @ID) AND (@From IS NULL OR AddDate >= @From) AND (@To IS NULL OR AddDate <= @To) AND (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%')
END
GO
/****** Object:  StoredProcedure [dbo].[Clients_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_Delete] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_Delete]
	@ClientID int
AS
BEGIN
	Delete from Clients Where ClientID=@ClientID;
	RETURN @@IDENTITY;
END
GO
/****** Object:  StoredProcedure [dbo].[Clients_GetNames]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_GetNames] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Clients_GetNames
-- Author:	Mohamed Salah
-- ALTER date:	7/1/2017 9:27:39 AM
-- Description:	This stored procedure is intended for selecting a specific rows from clients table
-- ==========================================================================================
ALTER Procedure [dbo].[Clients_GetNames]
	@pageNum int = 1,
	@pageSize int= 10,
	@key nvarchar(50) = NULL
As
Begin
	-- get list
	SELECT [ClientID] as id, ClientName as [text1] FROM (
		Select distinct [ClientID],ClientName,(row_number() over(ORDER BY ClientName ASC)) As RowNo From Clients Where (@key IS NULL) OR (ClientName LIKE @key +'%')
		) List
	Where RowNo > ((@pageNum - 1) * @pageSize)  AND RowNo <= (@pageNum * @pageSize);
	
	-- get count
	SELECT Count(*) AS CNT FROM Clients Where (@key IS NULL) OR (ClientName LIKE @key +'%');
End
GO
/****** Object:  StoredProcedure [dbo].[Clients_Profit]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Profit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_Profit] AS' 
END
GO
-- =============================================
-- Author:	    <Author,,Name>
-- ALTER date:  <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_Profit]
	@From date= NULL,
	@To date = NULL
AS
BEGIN
	SET NOCOUNT ON
	SELECT dbo.Clients.ClientName, SUM(dbo.Invoices.Profit) AS Profit
		FROM dbo.Clients INNER JOIN dbo.Invoices ON dbo.Clients.ClientID = dbo.Invoices.ClientID
		WHERE Invoices.AddDate >= @From AND Invoices.AddDate <= @To
		GROUP BY dbo.Clients.ClientName;
END
GO
/****** Object:  StoredProcedure [dbo].[Clients_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_Save] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_Save]
	@ClientID int
	,@ClientName nvarchar(50)
    ,@Phone nvarchar(50)
    ,@Mobile nvarchar(50)
    ,@Address nvarchar(150)
	,@ClientTRN nvarchar(150) = NULL
AS
BEGIN	
	IF EXISTS(SELECT NULL FROM Clients Where ClientID=@ClientID)
	BEGIN
		UPDATE [dbo].[Clients]
	   SET [ClientName] = @ClientName
		  ,[Phone] = @Phone
		  ,[Mobile] = @Mobile
		  ,[Address] = @Address
		  ,ClientTRN=@ClientTRN
		WHERE ClientID=@ClientID
		RETURN @ClientID;
	END
	ELSE
	BEGIN
		INSERT INTO Clients (ClientName, Phone, Mobile, Address, ClientTRN)
			VALUES (@ClientName,@Phone,@Mobile,@Address,@ClientTRN)
		RETURN @@IDENTITY;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Clients_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_SelectList] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = '',
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	SET NOCOUNT ON

	SELECT ClientID, ClientName, Phone, Mobile, [Address], Debit, Credit ,ClientTRN  
		FROM (SELECT  ClientID, ClientName, Phone, Mobile, [Address], ClientTRN,
		(SELECT SUM(VCP.PaymentAmount) FROM View_ClientPayments VCP Where VCP.ClientID=Clients.ClientID) AS Debit, 
		(SELECT SUM(VIP.TotalAmount) FROM View_Invoices VIP Where VIP.ClientID=Clients.ClientID) AS Credit
		,(row_number() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN Clients.ClientID END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN Clients.ClientID END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN Clients.[ClientName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN Clients.[ClientName] END desc)) AS RowNo 
		FROM Clients 
		Where (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount FROM Clients 
		Where (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%')
END
GO
/****** Object:  StoredProcedure [dbo].[ClientStatement_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientStatement_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientStatement_SelectList] AS' 
END
GO


-- ================================================
-- Author:		<Mohamed Salah>
-- ALTER date:  <16-5-2017>
-- Description:	<Select client invoices and payments in statement>
-- ================================================
ALTER PROCEDURE [dbo].[ClientStatement_SelectList]
	@ID int = NULL,	-- ClientID
	@From date = NULL,
	@To date = NULL
AS
BEGIN
	SET NOCOUNT ON
	-- client name
	SELECT ClientName FROM Clients Where ClientID = @ID;
	
	-- client statement
	WITH Stm
		AS
		(
		   SELECT ID, [Date], Amount, InAmount, OutAmount, Note, Amount AS Balance, ClientID, DeclarationNo, ContainerNo
			   FROM View_ClientStatements
			   WHERE ClientID = @ID
			   GROUP BY [Date], ID, Amount, InAmount, OutAmount, Note, ClientID, DeclarationNo, ContainerNo
		), StmRanked AS
		(
		   SELECT ID, [Date], Amount, Note, InAmount, OutAmount, Balance, ClientID, ROW_NUMBER() OVER(ORDER BY [Date] ASC) RowNo, DeclarationNo, ContainerNo
			FROM Stm
		)
		 
	SELECT ClientID, ID, Note, InAmount, OutAmount, [Date], 
	(SELECT SUM(Balance) FROM StmRanked c2 WHERE c2.RowNo <= c1.RowNo) AS Balance, c1.RowNo, c1.DeclarationNo, c1.ContainerNo
		FROM StmRanked c1
		WHERE (@From IS NULL OR [Date] >= @From) AND (@To IS NULL OR [Date] <= @To);

	-- period profit
	SELECT SUM(Profit) AS Profit FROM Invoices WHERE (@From IS NULL OR [AddDate] >= @From) AND (@To IS NULL OR [AddDate] <= @To);
END

GO
/****** Object:  StoredProcedure [dbo].[Docs_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Docs_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Docs_Delete] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Docs_Delete
-- ALTER date:	11/01/2018 08:19:03 PM
-- Description:	This stored procedure is intended for VERIFYING DOCUMENT SUBMISSION IN Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Docs_Delete]
	@InvoiceID int
As
Begin
	Update Invoices SET DocVerified = 1, DocVerifiedDate = GETDATE() Where [InvoiceID] = @InvoiceID;
	RETURN @@ROWCOUNT;
End
GO
/****** Object:  StoredProcedure [dbo].[Docs_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Docs_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Docs_SelectList] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Docs_SelectList
-- ALTER date:	10/01/2018 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Docs_SelectList]
	@DisplayStart int,
	@DisplayLength int,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn varchar(3) = '0',
	@SortDirection varchar(4) = 'desc',
	@SubmissionStatus int = 0, -- Document Verified
	@ClientID INT = NULL,
	@DateFrom date = NULL,
	@DateTo date = NULL
As
Begin
	SELECT InvoiceID, BillOfEntryDate, ContainerNo,DeclarationNo, DocVerified, DocVerifiedDate
	FROM (SELECT InvoiceID, BillOfEntryDate, ContainerNo,DeclarationNo, DocVerified, DocVerifiedDate
		,(ROW_NUMBER() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [InvoiceID] END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [InvoiceID] END desc,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [BillOfEntryDate] END ASC,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [BillOfEntryDate] END desc)) AS RowNo 
		FROM Invoices WITH(NOLOCK)
		Where BillOfEntryDate IS NOT NULL AND
		 (@SubmissionStatus IS NULL OR DocVerified = @SubmissionStatus) 
		 AND (@ClientID IS NULL OR ClientID = @ClientID)	
		 AND (@DateFrom IS NULL OR BillOfEntryDate >= @DateFrom)
		 AND (@DateTo IS NULL OR BillOfEntryDate <= @DateTo)
		 AND (@SearchParam IS NULL OR ContainerNo LIKE '%'+ @SearchParam + '%' OR DeclarationNo LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	SELECT Count(*) AS TableCount FROM Invoices WITH(NOLOCK)
		WHERE BillOfEntryDate IS NOT NULL
		 AND (@SubmissionStatus IS NULL OR DocVerified = @SubmissionStatus)
		 AND (@ClientID IS NULL OR ClientID = @ClientID)	
		 AND (@DateFrom IS NULL OR BillOfEntryDate >= @DateFrom)
		 AND (@DateTo IS NULL OR BillOfEntryDate <= @DateTo)
		 AND (@SearchParam IS NULL OR ContainerNo LIKE '%'+ @SearchParam + '%' OR DeclarationNo LIKE '%'+ @SearchParam + '%')
End
GO
/****** Object:  StoredProcedure [dbo].[Expenses_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_Delete] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_Delete]
	@ExpenseID int
AS
BEGIN
	Update Expenses SET Deleted = 1 Where ExpenseID=@ExpenseID;
	RETURN @@IDENTITY;
END
GO
/****** Object:  StoredProcedure [dbo].[Expenses_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_Save] AS' 
END
GO




-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_Save]
	@ExpenseID int
	,@ExpenseName nvarchar(50)
    ,@DefaultValue money = 0,
	@Active	bit = 1,
	@Priority int = 0
AS
BEGIN
	IF EXISTS(SELECT NULL FROM Expenses Where ExpenseID=@ExpenseID)
	BEGIN
		UPDATE Expenses
			SET ExpenseName = @ExpenseName, DefaultValue = ISNULL(@DefaultValue, 0),
			Active=@Active, Priority = @Priority, Deleted = 0
			WHERE (ExpenseID = @ExpenseID);
		RETURN @ExpenseID;
	END
	ELSE
	BEGIN
		INSERT INTO Expenses (ExpenseName, DefaultValue, Active, Priority, Deleted)
			VALUES (@ExpenseName,ISNULL(@DefaultValue, 0), @Active, @Priority, 0);
		RETURN @@IDENTITY;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Expenses_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_SelectList] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = '',
	@SortColumn nvarchar(2) = '3',
	@SortDirection nvarchar(4) = 'asc'
AS
BEGIN
	SELECT ExpenseID, ExpenseName, DefaultValue, Active, Priority, Deleted
	FROM Expenses
	Where (Deleted=0) AND (@SearchParam = '' OR ExpenseName LIKE '%'+ @SearchParam + '%')
	ORDER BY 
			CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN ExpenseID END ASC,
			CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN ExpenseID END DESC,
			CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN ExpenseName END ASC,
			CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN ExpenseName END DESC,
			CASE WHEN @SortColumn = '3' AND @SortDirection = 'asc' THEN [Priority] END ASC,
			CASE WHEN @SortColumn = '3' AND @SortDirection = 'desc' THEN [Priority] END DESC	 
		OFFSET  @DisplayStart ROWS 
		FETCH NEXT @DisplayLength ROWS ONLY;
	select COUNT(*) from Expenses Where (Deleted=0) AND (@SearchParam = '' OR ExpenseName LIKE '%'+ @SearchParam + '%');
END
GO
/****** Object:  StoredProcedure [dbo].[Expenses_SelectRow]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_SelectRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_SelectRow] AS' 
END
GO
ALTER PROCEDURE [dbo].[Expenses_SelectRow]
	@Id int = 0
AS
BEGIN
	SET NOCOUNT ON
    SELECT * from Expenses WHERE ExpenseID=@Id;
END
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_Delete] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_Delete]
	@ExpenseTypeID int
AS
BEGIN
	Delete from ExpenseTypes Where ExpenseTypeID=@ExpenseTypeID;
	RETURN @@IDENTITY;
END
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Names]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Names]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_Names] AS' 
END
GO
-- =============================================
-- Author:	<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_Names]
AS
BEGIN
	SET NOCOUNT ON
	SELECT ExpenseTypeID, ExpenseTypeName FROM ExpenseTypes;
END
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_Save] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_Save]
	@ExpenseTypeID int
	,@ExpenseTypeName nvarchar(50)
AS
BEGIN
	
	IF EXISTS(SELECT NULL FROM ExpenseTypes Where ExpenseTypeID=@ExpenseTypeID)
	BEGIN
		UPDATE [dbo].[ExpenseTypes]
			SET [ExpenseTypeName] = @ExpenseTypeName
		WHERE ExpenseTypeID=@ExpenseTypeID;
		RETURN @ExpenseTypeID;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[ExpenseTypes] ([ExpenseTypeName])
			VALUES (@ExpenseTypeName)
		RETURN @@IDENTITY;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Select2]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Select2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_Select2] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	ExpenseTypes_GetNames
-- Author:	Mohamed Salah
-- ALTER date:	5/1/2018 9:27:39 AM
-- Description:	This stored procedure is intended for selecting a specific rows from ExpenseTypes table
-- ==========================================================================================
ALTER Procedure [dbo].[ExpenseTypes_Select2]
	@pageNum int = 1,
	@pageSize int= 10,
	@key nvarchar(50) = NULL
As
Begin
	-- get list
	SELECT [ExpenseTypeID] as id, ExpenseTypeName as [text1] FROM (
		Select distinct [ExpenseTypeID],ExpenseTypeName,(row_number() over(ORDER BY ExpenseTypeName ASC)) As RowNo 
		From ExpenseTypes Where (@key IS NULL) OR (ExpenseTypeName LIKE @key +'%')
		) List
	Where RowNo > ((@pageNum - 1) * @pageSize)  AND RowNo <= (@pageNum * @pageSize);
	
	-- get count
	SELECT Count(*) AS CNT FROM ExpenseTypes Where (@key IS NULL) OR (ExpenseTypeName LIKE @key +'%');
End
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_SelectList] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	SET NOCOUNT ON
    -- Insert statements for procedure here
	   SELECT ExpenseTypeID, ExpenseTypeName FROM ExpenseTypes WHERE (@SearchParam IS NULL) OR (ExpenseTypeName LIKE @SearchParam + '%');
	   select COUNT(*) FROM ExpenseTypes WHERE (@SearchParam IS NULL) OR (ExpenseTypeName LIKE @SearchParam + '%');
END
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SelectRow]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SelectRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_SelectRow] AS' 
END
GO
ALTER PROCEDURE [dbo].[ExpenseTypes_SelectRow]
	@Id int = 0
AS
BEGIN
	SET NOCOUNT ON
    SELECT * from ExpenseTypes WHERE ExpenseTypeID=@Id;
END
GO
/****** Object:  StoredProcedure [dbo].[Images_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Images_Delete] AS' 
END
GO


-- ==========================================================================================
-- Entity Name:	Images_DELETE
-- ALTER date:	5/25/2017 5:48:46 AM
-- Description:	This stored procedure is intended for selecting all rows from Images table
-- ==========================================================================================
ALTER Procedure [dbo].[Images_Delete]
	@ID nvarchar(500) -- image url
As
Begin	
	DELETE MediaFiles Where (MediaUrl = @ID);
	RETURN @@ROWCOUNT; 
End





GO
/****** Object:  StoredProcedure [dbo].[Images_Main]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images_Main]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Images_Main] AS' 
END
GO


-- ==========================================================================================
-- Entity Name:	Images_Main
-- ALTER date:	5/25/2017 5:48:46 AM
-- Description:	This stored procedure is intended for selecting all rows from Images table
-- ==========================================================================================
ALTER Procedure [dbo].[Images_Main]
	@ID nvarchar(500) -- image url
As
Begin
	DECLARE @PropID	bigint;
	SET @PropID = (SELECT TOP 1 MasterID FROM MediaFiles Where (MediaUrl = @ID));

	Update MediaFiles SET IsMain = 0 Where (MasterID = @PropID); -- reset old
	Update MediaFiles SET IsMain = 1 Where (MediaUrl = @ID);
	RETURN @@ROWCOUNT; 
End





GO
/****** Object:  StoredProcedure [dbo].[Images_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images_Properties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Images_Properties] AS' 
END
GO


-- ==========================================================================================
-- Entity Name:	Images_Properties
-- ALTER date:	5/25/2017 5:48:46 AM
-- Description:	This stored procedure is intended for selecting all rows from Images table
-- ==========================================================================================
ALTER Procedure [dbo].[Images_Properties]
	@ID bigint -- property id
As
Begin
	SELECT        TOP (1) ExpenseTypes.ExpenseTypeName + ' ' + Outgoings.Notes AS Notes
	FROM            Outgoings INNER JOIN
							 ExpenseTypes ON Outgoings.ExpenseTypeID = ExpenseTypes.ExpenseTypeID
	WHERE        (Outgoings.OutgoingID = @ID);
	SELECT MediaFiles.MediaID,MediaFiles.IsMain, MediaFiles.MediaUrl, MediaFiles.Active, MediaFiles.[Priority], MediaFiles.MediaTypeID, MediaTypes.MediaTypeName
		FROM MediaFiles INNER JOIN MediaTypes ON MediaFiles.MediaTypeID = MediaTypes.MediaTypeID
		WHERE (MediaFiles.MasterID = @ID)
End





GO
/****** Object:  StoredProcedure [dbo].[Images_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Images_Save] AS' 
END
GO

ALTER Procedure [dbo].[Images_Save]
	@doc xml
As
Begin

BEGIN TRAN SaveMasterDetails

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[#tbl]') AND OBJECTPROPERTY(id, N'IsTable') = 1) DROP Table [dbo].[#tbl] 

SELECT 
	MasterID=XTbl.XCol.value('@MasterID[1]','bigint'),
	MediaUrl=XTbl.XCol.value('@MediaUrl[1]','nvarchar(150)') ,
	[Priority]=XTbl.XCol.value('@Index[1]','int') 
 INTO #tbl FROM  @doc.nodes('//Pictures') AS XTbl(XCol) 
 
 
 INSERT INTO MediaFiles (MasterID, MediaUrl, [Priority], MediaTypeID)
	SELECT temp.MasterID, temp.MediaUrl, temp.[Priority], 1
	FROM [#tbl] AS temp;


Drop table #tbl;

COMMIT TRAN

IF @@ERROR <> 0 
  RETURN 0
ELSE	
  RETURN 1
END

GO
/****** Object:  StoredProcedure [dbo].[Invoices_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_Delete] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Invoices_Delete
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for deleting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Invoices_Delete]
	@InvoiceID int
As
Begin	

DECLARE @Count int;

BEGIN TRAN DeleteInvoice
	Update Invoices SET Deleted = 1 Where [InvoiceID] = @InvoiceID;
	SET @Count = @@ROWCOUNT;

	IF @Count > 0 -- update clients credit and balances
		UPDATE Clients SET Credit = (Credit - TotalAmount)
			FROM View_Invoices Join Clients ON View_Invoices.ClientID=Clients.ClientID
			Where [InvoiceID] = @InvoiceID;
COMMIT TRAN

	RETURN @Count;
End
GO
/****** Object:  StoredProcedure [dbo].[Invoices_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Properties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_Properties] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Invoices_Properties
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for deleting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Invoices_Properties]
	@ID int=NULL -- for edit invoice
As
Begin
	SELECT Expenses.ExpenseID, Expenses.ExpenseName, Expenses.DefaultValue, ExpensesMap.ParentExpenseID
		FROM Expenses WITH (NOLOCK) LEFT OUTER JOIN ExpensesMap ON Expenses.ExpenseID = ExpensesMap.ExpenseID
		WHERE (Expenses.Deleted = 0) AND (Expenses.Active = 1) 
		ORDER BY Expenses.[Priority], Expenses.ExpenseName;
	SELECT ClientID, ClientName FROM Clients WITH(NOLOCK);

	IF @ID IS NOT NULL -- for edit
	BEGIN		
		-- bill master
		SELECT Invoices.InvoiceID, Invoices.ClientID, Invoices.ContainerNo, Invoices.DeclarationNo, CONVERT(VARCHAR(10), Invoices.AddDate, 105) AS AddDate, Invoices.Notes, CONVERT(VARCHAR(10), Invoices.BillOfEntryDate, 105) 
                         AS BillOfEntryDate, Users.UserFullName AS TransporterName, Users_1.UserFullName AS CraneDriverName, Invoices.TransporterID, Invoices.CraneDriverID
		FROM Users RIGHT OUTER JOIN Invoices WITH (NOLOCK) ON Users.UserID = Invoices.TransporterID LEFT OUTER JOIN Users AS Users_1 ON Invoices.CraneDriverID = Users_1.UserID
		WHERE (Invoices.InvoiceID = @ID);

		-- bill details
		SELECT InvoiceDetails.InvoiceDetailsID, InvoiceDetails.InvoiceID, InvoiceDetails.ExpenseID, InvoiceDetails.Amount, Expenses.ExpenseName, Expenses.DefaultValue, 
			InvoiceDetails.Cost, ExpensesMap.ParentExpenseID
			FROM InvoiceDetails WITH (NOLOCK) INNER JOIN Expenses WITH (NOLOCK) ON InvoiceDetails.ExpenseID = Expenses.ExpenseID LEFT OUTER JOIN
									 ExpensesMap ON InvoiceDetails.ExpenseID = ExpensesMap.ExpenseID
			WHERE (InvoiceDetails.InvoiceID = @ID);
	END
End
GO
/****** Object:  StoredProcedure [dbo].[Invoices_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_Save] AS' 
END
GO

-- ==========================================================================================
-- Entity Name:	Invoices_Save
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for updating Invoices table
-- ==========================================================================================

ALTER Procedure [dbo].[Invoices_Save]
	@doc xml
As
Begin

BEGIN TRAN SaveMasterDetails

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[#tbl]') AND OBJECTPROPERTY(id, N'IsTable') = 1) DROP Table [dbo].[#tbl] 
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[#tbl2]') AND OBJECTPROPERTY(id, N'IsTable') = 1) DROP Table [dbo].[#tbl2]

SELECT 
	InvoiceID=XTbl.XCol.value('@InvoiceID[1]','int'),
	ClientID=XTbl.XCol.value('@ClientID[1]','int'),
	AddDate=XTbl.XCol.value('@AddDate[1]','datetime'),
	BillOfEntryDate=XTbl.XCol.value('@BillOfEntryDate[1]','datetime'),
	Profit=XTbl.XCol.value('@Profit[1]','money'),
	TotalAmount=XTbl.XCol.value('@TotalAmount[1]','money'),
	ContainerNo=XTbl.XCol.value('@ContainerNo[1]','nvarchar(50)'),
	DeclarationNo=XTbl.XCol.value('@DeclarationNo[1]','nvarchar(50)'),
	Notes=XTbl.XCol.value('@Notes[1]','nvarchar(1000)'),
	TransporterID=XTbl.XCol.value('@TransporterID[1]','int'),
	CraneDriverID=XTbl.XCol.value('@CraneDriverID[1]','int')
 INTO #tbl FROM  @doc.nodes('//Master') AS XTbl(XCol) 
 
 Update Invoices
	Set
		[ClientID] = #tbl.ClientID,
		[AddDate] = #tbl.AddDate,
		[Deleted] = 0,
		Profit = #tbl.Profit,
		TotalAmount = #tbl.TotalAmount,
		DeclarationNo=#tbl.DeclarationNo,
		ContainerNo=#tbl.ContainerNo,
		Notes=#tbl.Notes,
		BillOfEntryDate = #tbl.BillOfEntryDate,
		TransporterID= #tbl.TransporterID,
		CraneDriverID= #tbl.CraneDriverID
 FROM #tbl INNER JOIN Invoices ON Invoices.[InvoiceID] = #tbl.InvoiceID

 INSERT INTO Invoices([ClientID],[AddDate],[Deleted],Profit,TotalAmount,ContainerNo,DeclarationNo,Notes, BillOfEntryDate,TransporterID,CraneDriverID)
	 SELECT temp.[ClientID],temp.[AddDate],0,temp.Profit,temp.TotalAmount,temp.ContainerNo,temp.DeclarationNo, temp.Notes,temp.BillOfEntryDate,temp.TransporterID,temp.CraneDriverID
	 FROM  #tbl temp LEFT OUTER JOIN DBO.Invoices AS c ON c.DeclarationNo = temp.DeclarationNo AND c.ContainerNo = temp.ContainerNo
	 WHERE (c.[InvoiceID] IS NULL)

------------------------------------------------------------------Details
 DECLARE @MasterID int
 IF @@IDENTITY > 0
	SET @MasterID = @@IDENTITY;
 ELSE
	SET @MasterID = (SELECT TOP 1 InvoiceID FROM [#tbl]);
------------------------------------------------------------------

SELECT 
	InvoiceDetailsID=XTbl.XCol.value('@InvoiceDetailsID[1]','int') ,
	InvoiceID=@MasterID,
	ExpenseID=XTbl.XCol.value('@ExpenseID[1]','int'),
	Amount=XTbl.XCol.value('@Amount[1]','money'),
	Cost=XTbl.XCol.value('@Cost[1]','money')
 INTO #tbl2 FROM  @doc.nodes('//Details') AS XTbl(XCol) 


 DELETE FROM InvoiceDetails FROM #tbl2 RIGHT OUTER JOIN InvoiceDetails ON InvoiceDetails.[InvoiceDetailsID] = #tbl2.InvoiceDetailsID
	WHERE (#tbl2.[InvoiceDetailsID] IS NULL) AND InvoiceDetails.InvoiceID=@MasterID

 Update InvoiceDetails
	Set [InvoiceID] = #tbl2.InvoiceID,
		[ExpenseID] = #tbl2.ExpenseID,
		[Amount] = #tbl2.Amount,Cost=#tbl2.Cost
	FROM #tbl2 INNER JOIN InvoiceDetails ON InvoiceDetails.[InvoiceDetailsID] = #tbl2.InvoiceDetailsID
	WHERE #tbl2.Amount > 0 OR #tbl2.Cost > 0
 
 INSERT INTO InvoiceDetails([InvoiceID],[ExpenseID],[Amount],Cost)
	 SELECT temp.[InvoiceID],temp.[ExpenseID],temp.[Amount],temp.Cost
	 FROM  #tbl2 temp LEFT OUTER JOIN DBO.InvoiceDetails AS D ON D.[InvoiceDetailsID] = temp.InvoiceDetailsID
	 WHERE (D.[InvoiceDetailsID] IS NULL) AND (temp.Amount > 0 OR temp.Cost > 0)


 ------------------------------------------------------------------Update client balance
 DECLARE @Client_ID int;
 SET @Client_ID = (SELECT TOP 1 ClientID From #tbl);

 UPDATE Clients Set Clients.Credit = (SELECT SUM(TotalAmount) FROM View_Invoices Where View_Invoices.ClientID=@Client_ID)
 Where Clients.ClientID = @Client_ID;
------------------------------------------------------------------

-- add/transporter based on this invoice
EXEC [dbo].[Transportation_SaveAfterInvoice] @MasterID;

Drop table #tbl;
Drop table #tbl2;

COMMIT TRAN

IF @@ERROR <> 0 
	RETURN 0
ELSE	-- Return 1 to the calling program to indicate success. 	
	RETURN @MasterID;

END
GO
/****** Object:  StoredProcedure [dbo].[Invoices_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_SelectList] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Invoices_SelectList
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Invoices_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(3) = '0',
	@SortDirection nvarchar(4) = 'desc',
	@ID int = NULL,-- ClientID
	@From datetime = NULL,
	@To datetime = NULL
As
Begin
	SELECT InvoiceID, AddDate, ClientName, TotalAmount,ContainerNo,DeclarationNo, VATAmount, ServiceChargeAmount
	 FROM (SELECT  View_Invoices.InvoiceID, AddDate, ClientName, TotalAmount,ContainerNo,DeclarationNo, View_ExpensesParentsVatMaps.VATAmount, View_ExpensesParentsVatMaps.ServiceChargeAmount
		,(ROW_NUMBER() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN View_Invoices.[InvoiceID] END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN View_Invoices.[InvoiceID] END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN [ClientName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN [ClientName] END desc,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [AddDate] END ASC,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [AddDate] END desc)) AS RowNo 
		FROM View_Invoices LEFT OUTER JOIN View_ExpensesParentsVatMaps ON View_Invoices.InvoiceID = View_ExpensesParentsVatMaps.InvoiceID
		Where (@ID IS NULL OR ClientID = @ID) 
			 AND (@From IS NULL OR AddDate >= @From) AND (@To IS NULL OR AddDate <= @To) 
			 AND (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%' OR ContainerNo LIKE '%'+ @SearchParam + '%' OR DeclarationNo LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 Select Count(*) AS TableCount, SUM(TotalAmount) AS TotalInvoices, -- total
			(SELECT SUM(PaymentAmount) FROM View_ClientPayments Where ClientId = @ID) AS TotalPayments -- payments
		FROM View_Invoices 
		Where (@ID IS NULL OR ClientID = @ID) AND (@From IS NULL OR AddDate >= @From)
			 AND (@To IS NULL OR AddDate <= @To) AND (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%' OR ContainerNo LIKE '%'+ @SearchParam + '%' OR DeclarationNo LIKE '%'+ @SearchParam + '%')

End

GO
/****** Object:  StoredProcedure [dbo].[Invoices_SelectRow]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_SelectRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_SelectRow] AS' 
END
GO

-- ==========================================================================================
-- Entity Name:	Invoices_SelectrOW
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Invoices_SelectRow]
	@Id int = NULL,
	@key nvarchar(50) = NULL,
	@no  nvarchar(50) = NULL
As
Begin
	IF @Id IS NOT NULL
	BEGIN
		-- Master
		SELECT TOP (1) View_Invoices.InvoiceID, View_Invoices.AddDate, View_Invoices.ClientName, View_Invoices.TotalAmount, View_Invoices.ContainerNo, View_Invoices.DeclarationNo, View_Invoices.Notes, View_Invoices.BillOfEntryDate,
              (SELECT TOP (1) Val FROM Settings WHERE (Attr = 'TRN')) AS Val, View_Invoices.TransporterID, View_Invoices.CraneDriverID, Users.UserFullName AS TransporterName, Users_1.UserFullName AS CraneDriverName, View_Invoices.ClientTRN
			FROM Users RIGHT OUTER JOIN Users AS Users_1 RIGHT OUTER JOIN View_Invoices ON Users_1.UserID = View_Invoices.CraneDriverID ON Users.UserID = View_Invoices.TransporterID
			WHERE  (View_Invoices.InvoiceID = @Id); -- Tax Registration Number ==> in Settings table.
		-- Details
		SELECT InvoiceDetails.InvoiceDetailsID, InvoiceDetails.Amount, Expenses.ExpenseName, ExpensesMap.ParentExpenseID
			FROM InvoiceDetails INNER JOIN Expenses ON InvoiceDetails.ExpenseID = Expenses.ExpenseID LEFT OUTER JOIN ExpensesMap ON InvoiceDetails.ExpenseID = ExpensesMap.ExpenseID
			WHERE (InvoiceDetails.InvoiceID = @Id);
	END
	ELSE
	BEGIN
		DECLARE @sql nvarchar(MAX);
		SELECT @sql = 'SELECT TOP (1) View_Invoices.InvoiceID, View_Invoices.AddDate, View_Invoices.ClientName, View_Invoices.TotalAmount, View_Invoices.ContainerNo, View_Invoices.DeclarationNo, View_Invoices.Notes, View_Invoices.BillOfEntryDate,
						  (SELECT TOP (1) Val FROM Settings WHERE (Attr = ''TRN'')) AS Val, View_Invoices.TransporterID, View_Invoices.CraneDriverID, Users.UserFullName AS TransporterName, Users_1.UserFullName AS CraneDriverName, View_Invoices.ClientTRN
						FROM Users RIGHT OUTER JOIN Users AS Users_1 RIGHT OUTER JOIN View_Invoices ON Users_1.UserID = View_Invoices.CraneDriverID ON Users.UserID = View_Invoices.TransporterID WHERE (View_Invoices.'+ @key +'=N'''+ @no +''');'+
					  'SELECT InvoiceDetails.InvoiceDetailsID, InvoiceDetails.Amount, Expenses.ExpenseName, ExpensesMap.ParentExpenseID
						   FROM InvoiceDetails INNER JOIN Expenses ON InvoiceDetails.ExpenseID = Expenses.ExpenseID INNER JOIN
							  Invoices ON InvoiceDetails.InvoiceID = Invoices.InvoiceID LEFT OUTER JOIN
							  ExpensesMap ON InvoiceDetails.ExpenseID = ExpensesMap.ExpenseID
						   WHERE (Invoices.'+ @key +'=N'''+ @no +''');'
		EXEC sp_executesql @sql;
	END
End
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Outgoings_Delete] AS' 
END
GO

-- =============================================
-- Author:		<Mohamed Salah>
-- ALTER date: <1-2-2017>
-- Description:	<Delete payment and update client balance>
-- =============================================
ALTER PROCEDURE [dbo].[Outgoings_Delete]
	@OutgoingID int
AS
BEGIN

DECLARE @Count int;
BEGIN TRAN DeletePayment
	UPDATE Outgoings SET Deleted=1 Where OutgoingID=@OutgoingID;
	SET @Count = @@ROWCOUNT;
COMMIT Tran
	RETURN @Count;
END
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_One]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_One]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Outgoings_One] AS' 
END
GO

-- =============================================
-- Author:		<Author,,Name>
-- ALTER date:  <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Outgoings_One]
	@ID bigint -- @OutgoingID 
AS
BEGIN
	SELECT TOP (1) ExpenseTypeName, OutgoingID, AddDate, ExpenseTypeID, Amount, RefID, Notes,VAT
		FROM View_Outgoings
		WHERE (OutgoingID = @ID);
END
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Outgoings_Save] AS' 
END
GO

-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Outgoings_Save]
	@OutgoingID bigint,
	@AddDate datetime = getdate,
	@ExpenseTypeID int,
	@Amount money,
	@RefID nvarchar(50) = NULL,
	@Notes nvarchar(3000) = NULL,
	@VAT money = 0
AS
BEGIN
--BEGIN TRAN SavePayment
	IF EXISTS(SELECT NULL FROM Outgoings Where OutgoingID = @OutgoingID)
	BEGIN
		UPDATE [Outgoings]
	   SET AddDate = @AddDate,
			ExpenseTypeID = @ExpenseTypeID,
			Amount = @Amount,
			RefID = @RefID,
			Notes = @Notes,
			VAT=@VAT,
			TotalAmount = @Amount + @VAT
		WHERE OutgoingID=@OutgoingID;
		RETURN @OutgoingID;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[Outgoings] (AddDate,ExpenseTypeID,Amount,RefID,Notes,VAT,TotalAmount)
			VALUES (@AddDate,@ExpenseTypeID,@Amount,@RefID,@Notes,@VAT,@Amount + @VAT);
		RETURN @@IDENTITY;
	END
--Commit Tran
END
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Outgoings_SelectList] AS' 
END
GO



-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Outgoings_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(3) = '0',
	@SortDirection nvarchar(4) = 'asc',
	@ExpenseTypeID int = NULL,
	@From datetime = NULL,
	@To datetime = NULL
AS
BEGIN
	SET NOCOUNT ON
	-- list
	SELECT OutgoingID,AddDate,ExpenseTypeName,Amount,RefID,Notes,VAT, TotalAmount
		FROM (SELECT OutgoingID,AddDate,ExpenseTypeName,Amount,RefID,Notes,VAT, TotalAmount
		,(row_number() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [OutgoingID] END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [OutgoingID] END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN ExpenseTypeName END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN ExpenseTypeName END desc,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [AddDate] END ASC,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [AddDate] END desc)) AS RowNo 
		FROM View_Outgoings 
		WHERE (@SearchParam IS NULL OR ExpenseTypeName LIKE '%'+ @SearchParam + '%' OR Notes LIKE '%'+ @SearchParam + '%')
		 AND (@ExpenseTypeID IS NULL OR ExpenseTypeID = @ExpenseTypeID)
		 AND (@From IS NULL OR AddDate >= @From)
		 AND (@To IS NULL OR AddDate <= @To)
		) outgo 
	WHERE RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount, SUM(Amount) AS TotalPayments FROM View_Outgoings 
		WHERE (@SearchParam IS NULL OR ExpenseTypeName LIKE '%'+ @SearchParam + '%' OR Notes LIKE '%'+ @SearchParam + '%')
		 AND (@ExpenseTypeID IS NULL OR ExpenseTypeID = @ExpenseTypeID)
		 AND (@From IS NULL OR AddDate >= @From)
		 AND (@To IS NULL OR AddDate <= @To)
END
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_Delete] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Transportation_Delete
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for deleting a specific row from Transportation table
-- ==========================================================================================
ALTER Procedure [dbo].[Transportation_Delete]
	@TransportID int -- 
As
Begin	

DECLARE @Count int;

BEGIN TRAN DeleteInvoice
	Update Transportation SET Deleted = 1 Where [TransportID] = @TransportID;
	SET @Count = @@ROWCOUNT;
COMMIT TRAN

	RETURN @Count;
End
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Properties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_Properties] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Transportation_Properties
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for deleting a specific row from Transportation table
-- ==========================================================================================
ALTER Procedure [dbo].[Transportation_Properties]
	@ID int = NULL -- User Type ID
As
Begin
	SELECT ClientID, ClientName FROM Clients;
	SELECT UserID, UserFullName FROM Users WHERE (@ID IS NULL OR TypeID = @ID);;
End
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Row]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Row]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_Row] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Transportation_SelectrOW
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Transportation table
-- ==========================================================================================
ALTER Procedure [dbo].[Transportation_Row]
	@Id int
As
Begin
	SELECT ClientName, UserFullName, TransportID, TransportDate, ConsigneeID, TransporterID, ContainerNo, TransportCharge, CarageCharge, TotalAmount, Deleted
	FROM View_Transportation
	WHERE (TransportID = @Id)	
End
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_Save] AS' 
END
GO

-- =============================================
-- Author:		<M. Salah>
-- ALTER date:  <18-3-2017>
-- Description:	<Save transportation table>
-- =============================================
ALTER PROCEDURE [dbo].[Transportation_Save]
	@TransportID int,
	@TransportDate date
    ,@ConsigneeID int
    ,@TransporterID int
    ,@ContainerNo nvarchar(50)
    ,@TransportCharge money =0
    ,@CarageCharge money=0
	,@TypeID int
AS
BEGIN
--BEGIN TRAN SavePayment	
	IF EXISTS(SELECT NULL FROM Transportation Where TransportID=@TransportID)
	BEGIN
		UPDATE Transportation 
			SET TransportDate = @TransportDate, ConsigneeID = @ConsigneeID, TransporterID = @TransporterID, ContainerNo = @ContainerNo, 
                         TransportCharge = @TransportCharge, CarageCharge = @CarageCharge, TotalAmount = (@CarageCharge + @TransportCharge), TypeID=@TypeID 
			WHERE (TransportID = @TransportID);		 
		RETURN @TransportID;
	END
	ELSE
	BEGIN
	-- new serial for addition
		DECLARE @Serial bigint;
		SET @Serial = ISNULL((SELECT TOP (1) Serial FROM TransporterPayments WHERE TypeID = @TypeID ORDER BY Serial DESC), 0) + 1;

		Set IDENTITY_INSERT Transportation On;
		INSERT INTO Transportation (TransportID, TransportDate, ConsigneeID, TransporterID, ContainerNo, TransportCharge, CarageCharge, TotalAmount, Deleted, TypeID, Serial)
			VALUES ((SELECT MAX(TransportID)+1 FROM Transportation), @TransportDate,@ConsigneeID,@TransporterID,@ContainerNo,@TransportCharge,@CarageCharge,(@TransportCharge + @CarageCharge), 0, @TypeID, @Serial);
		Set IDENTITY_INSERT Transportation Off;
		RETURN @@IDENTITY;
	END
--Commit Tran
END

GO
/****** Object:  StoredProcedure [dbo].[Transportation_SaveAfterInvoice]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_SaveAfterInvoice]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_SaveAfterInvoice] AS' 
END
GO


-- =============================================
-- Author:		<M. Salah>
-- ALTER date:  <18-1-2018>
-- Description:	<Save transportation table>
-- =============================================
ALTER PROCEDURE [dbo].[Transportation_SaveAfterInvoice]
	@InvoiceID bigint
AS
BEGIN
  DECLARE @TransportCharge money, @CraneCharge money;

  SELECT @TransportCharge = InvoiceDetails.Cost
		FROM Invoices JOIN InvoiceDetails ON  Invoices.InvoiceID = InvoiceDetails.InvoiceID
		WHERE Invoices.InvoiceID = @InvoiceID AND InvoiceDetails.ExpenseID = 7; -- Transporter charge

  SELECT @CraneCharge = InvoiceDetails.Cost
		FROM Invoices JOIN InvoiceDetails ON  Invoices.InvoiceID = InvoiceDetails.InvoiceID
		WHERE Invoices.InvoiceID = @InvoiceID AND InvoiceDetails.ExpenseID = 14; -- Crane charge

	IF @TransportCharge > 0 AND NOT EXISTS(SELECT NULL FROM Transportation WHERE TypeID= 2 AND InvoiceID = @InvoiceID)-- Insert Transporter fee after invoice
	BEGIN
	-- new serial for addition
		DECLARE @SerialTrans bigint;
		SET @SerialTrans = ISNULL((SELECT TOP (1) Serial FROM Transportation WHERE TypeID = 2 ORDER BY Serial DESC), 0) + 1;

		  INSERT INTO Transportation (TransportCharge, TransportDate, TransporterID, ContainerNo, TotalAmount, Deleted, ConsigneeID, InvoiceID, Serial, TypeID)
		  SELECT @TransportCharge, GETDATE(), Invoices.TransporterID, Invoices.ContainerNo, TotalAmount, 0, ClientID, InvoiceID, @SerialTrans, 2
			FROM Invoices
			Where InvoiceID = @InvoiceID AND Invoices.TransporterID > 0;
	END

	IF @CraneCharge > 0 AND NOT EXISTS(SELECT NULL FROM Transportation WHERE TypeID= 3 AND InvoiceID = @InvoiceID)-- Insert crane/driver fee after invoice
	BEGIN
	
	-- new serial for addition
		DECLARE @SerialCrane bigint;
		SET @SerialCrane = ISNULL((SELECT TOP (1) Serial FROM Transportation WHERE TypeID = 3 ORDER BY Serial DESC), 0) + 1;

		  INSERT INTO Transportation (TransportCharge, TransportDate, TransporterID, ContainerNo, TotalAmount, Deleted, ConsigneeID, InvoiceID, Serial, TypeID)
		  SELECT @CraneCharge, GETDATE(), Invoices.TransporterID, Invoices.ContainerNo, TotalAmount, 0, ClientID, InvoiceID, @SerialCrane, 3
			FROM Invoices
			Where InvoiceID = @InvoiceID AND Invoices.CraneDriverID > 0;

	END
END
GO
/****** Object:  StoredProcedure [dbo].[Transportation_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_SelectList] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Transportation_SelectList
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended
 -- for selecting a specific row from Transportation table
-- ==========================================================================================
ALTER Procedure [dbo].[Transportation_SelectList]
	@DisplayStart int=0,
	@DisplayLength int=50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'desc',
	@Client int = NULL,
	@User int = NULL,
	@From date = NULL,
	@To date = NULL,
	@TypeID int = 2 -- transporter
As
Begin
	SELECT [TransportID], TransportDate, ClientName, TotalAmount, ContainerNo, UserFullName, CarageCharge, TransportCharge, 
		TransporterID, ConsigneeID, TypeID,Serial
	FROM (SELECT [TransportID], TransportDate, ClientName, TotalAmount, ContainerNo, UserFullName, CarageCharge, TransportCharge, 
	TransporterID, ConsigneeID, TypeID,Serial
	,(row_number() over(ORDER BY  
		 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [TransportID] END ASC,
		 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [TransportID] END desc,
		 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN [ClientName] END ASC,
		 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN [ClientName] END desc,
		 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [TransportDate] END ASC,
		 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [TransportDate] END desc)) AS RowNo 
	FROM View_Transportation Where (TypeID = @TypeID) AND (@SearchParam IS NULL  
		 OR [ClientName] LIKE '%'+ @SearchParam + '%'
		 OR ContainerNo LIKE '%'+ @SearchParam + '%'
		 OR UserFullName LIKE '%'+ @SearchParam + '%') 
		 AND (@Client IS NULL OR ConsigneeID = @Client)
		 AND (@User IS NULL OR TransporterID = @User)
		 AND (@From IS NULL OR TransportDate >= @From)
		 AND (@To IS NULL OR TransportDate <= @To)
	) Transportation Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 -- counts
	 Select Count(*) AS TableCount, SUM(TransportCharge) AS TotalFees,
		(SELECT SUM(PaymentAmount) FROM TransporterPayments WHERE (Deleted = 0) AND (TypeID = @TypeID) AND (@User IS NULL OR TransporterID = @User)) AS TotalPayments
	 FROM View_Transportation 
	 Where (TypeID = @TypeID) AND (@SearchParam IS NULL  
		 OR [ClientName] LIKE '%'+ @SearchParam + '%'
		 OR ContainerNo LIKE '%'+ @SearchParam + '%'
		 OR UserFullName LIKE '%'+ @SearchParam + '%') 
		 AND (@Client IS NULL OR ConsigneeID = @Client)
		 AND (@User IS NULL OR TransporterID = @User)
		 AND (@From IS NULL OR TransportDate >= @From)
		 AND (@To IS NULL OR TransportDate <= @To)

End
GO
/****** Object:  StoredProcedure [dbo].[TransporterPayments_Delete]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransporterPayments_Delete] AS' 
END
GO


-- =============================================
-- Author:		<Mohamed Salah>
-- ALTER date: <1-2-2017>
-- Description:	<Delete payment and update Transporter balance>
-- =============================================
ALTER PROCEDURE [dbo].[TransporterPayments_Delete]
	@PaymentID int
AS
BEGIN
DECLARE @Count int;
BEGIN TRAN DeletePayment
	UPDATE TransporterPayments SET Deleted=1 Where PaymentID=@PaymentID;
	SET @Count = @@ROWCOUNT;

	IF @Count > 0 -- update Transporter debits and balances
		Update Transportation SET Debit = (Debit - PaymentAmount)
			FROM View_TransporterPayments JOIN Transporters ON Transportation.TransporterID=View_TransporterPayments.TransporterID
			Where PaymentID=@PaymentID
COMMIT Tran
	RETURN @Count;
END
GO
/****** Object:  StoredProcedure [dbo].[TransporterPayments_Properties]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments_Properties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransporterPayments_Properties] AS' 
END
GO



-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[TransporterPayments_Properties]
	@ID int = NULL -- User Type ID
AS
BEGIN
	SELECT UserID AS TransporterID,UserFullName AS TransporterName FROM Users WHERE (@ID IS NULL OR TypeID = @ID);
	SELECT BankID,BankName FROM Banks;
END
GO
/****** Object:  StoredProcedure [dbo].[TransporterPayments_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransporterPayments_Save] AS' 
END
GO


-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[TransporterPayments_Save]
	@PaymentID int,
	@TransporterID int,
	@AddDate date,
	@PaymentAmount money=0,
	@BankID tinyint=NULL,
	@CheckNo nvarchar(50) = NULL,
	@TypeID int
AS
BEGIN
	
	--BEGIN TRAN SavePayment	
	IF EXISTS(SELECT NULL FROM TransporterPayments Where PaymentID=@PaymentID)
	BEGIN
		UPDATE [TransporterPayments]
	   SET [TransporterID] = @TransporterID
		  ,[AddDate] = @AddDate
		  ,[PaymentAmount] = @PaymentAmount
		  ,BankID = @BankID
		  ,CheckNo = @CheckNo
		  ,TypeID=@TypeID
		WHERE PaymentID=@PaymentID;

		----------------------Update Transporter debit
		DECLARE @LatestDebit money=0;
		SET @LatestDebit=(SELECT TOP 1 ISNULL([PaymentAmount],0) FROM [TransporterPayments] WHERE PaymentID=@PaymentID);
		
		Update Transportation SET Debit =(Debit +(@PaymentAmount - @LatestDebit)) Where  [TransporterID] = @TransporterID;
		-----------------------------------------

		RETURN @PaymentID;
	END
	ELSE
	BEGIN
	-- new serial for addition
		DECLARE @Serial bigint;
		SET @Serial = ISNULL((SELECT TOP (1) Serial FROM TransporterPayments WHERE TypeID = @TypeID ORDER BY Serial DESC), 0) + 1;

		INSERT INTO [dbo].[TransporterPayments] ([TransporterID] ,[AddDate] ,[PaymentAmount],[Deleted],BankID, CheckNo, TypeID, Serial)
			VALUES (@TransporterID ,@AddDate ,@PaymentAmount,0,@BankID, @CheckNo, @TypeID, @Serial);

		IF @@IDENTITY > 0 --------------------------------Update Transporter debit
			Update Transportation SET Debit =(Debit + @PaymentAmount) Where  [TransporterID] = @TransporterID
		---------------------------------------------
		
		RETURN @@IDENTITY;
	END

--Commit Tran
END
GO
/****** Object:  StoredProcedure [dbo].[TransporterPayments_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransporterPayments_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransporterPayments_SelectList] AS' 
END
GO








-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[TransporterPayments_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(3) = '0',
	@SortDirection nvarchar(4) = 'asc',
	@ID int = NULL,-- TransporterID
	@From datetime = NULL,
	@To datetime = NULL,
	@TypeID int = 2 -- transporter
AS
BEGIN
	SET NOCOUNT ON
	-- list
	SELECT PaymentID, TransporterID, AddDate, PaymentAmount, TransporterName, BankID, BankName, CheckNo,TypeID, Serial 
		FROM (SELECT  PaymentID, TransporterID, AddDate, PaymentAmount, TransporterName,BankID, BankName, CheckNo,TypeID, Serial
		,(row_number() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [PaymentID] END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [PaymentID] END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN [TransporterName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN [TransporterName] END desc,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [AddDate] END ASC,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [AddDate] END desc)) AS RowNo 
		FROM View_TransporterPayments 
		Where (TypeID = @TypeID) AND (@ID IS NULL OR TransporterID = @ID) AND (@From IS NULL OR AddDate >= @From) AND (@To IS NULL OR AddDate <= @To) AND (@SearchParam IS NULL OR [TransporterName] LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount, SUM(PaymentAmount) AS TotalPayments,
		(SELECT SUM(TransportCharge) FROM Transportation Where (Deleted = 0) AND (TypeID = @TypeID) AND (@ID IS NULL OR TransporterID = @ID)) AS TotalFees
	 FROM View_TransporterPayments 
		Where (TypeID = @TypeID) AND (@ID IS NULL OR TransporterID = @ID) AND (@From IS NULL OR AddDate >= @From) AND (@To IS NULL OR AddDate <= @To) AND (@SearchParam IS NULL OR [TransporterName] LIKE '%'+ @SearchParam + '%')
END
GO
/****** Object:  StoredProcedure [dbo].[Users_DeleteRow]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_DeleteRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_DeleteRow] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Users_DeleteRow
-- Author:	Mohamed Salah
-- ALTER date:	7/1/2013 11:55:23 AM
-- Description:	This stored procedure is intended for deleting a specific row from Users table
-- ==========================================================================================
ALTER Procedure [dbo].[Users_DeleteRow]
	@UserID int
As
Begin	
	UPDATE Users SET [IsDeleted] = 1 WHERE [UserID] = @UserID;
	RETURN @@ROWCOUNT;
End
GO
/****** Object:  StoredProcedure [dbo].[Users_Login]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Login]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_Login] AS' 
END
GO

-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Check user id exist in tbl_admin_n table>
-- =============================================
ALTER PROCEDURE [dbo].[Users_Login] 
	-- Add the parameters for the stored procedure here
	@Username nvarchar(50),
	@Password nvarchar(50)
AS
BEGIN
    -- Insert statements for procedure here
	SELECT TOP (1) UserID, UserFullName FROM Users WHERE (Username = @Username) AND ([Password] = @Password) AND (TypeID = 1); -- employees only
END
GO
/****** Object:  StoredProcedure [dbo].[Users_Save]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_Save] AS' 
END
GO

-- ==========================================================================================
-- Entity Name:	Users_Update
-- Author:	Mohamed Salah
-- ALTER date:	6/12/2013 12:06:02 AM
-- Description:	This stored procedure is intended for updating Users table
-- ==========================================================================================
ALTER Procedure [dbo].[Users_Save]
	@UserID int,
	@UserFullName nvarchar(150),
	@Phone nvarchar(150),
	@Email nvarchar(150),
	@Username nvarchar(150),
	@Password nvarchar(150),
	@Mobile nvarchar(50),
	@TypeID int = 1,
	@Nationality nvarchar(50)
As
Begin
	DECLARE @Items int;
	IF(@UserID > 0 OR EXISTS(SELECT NULL FROM Users WHERE Username=@Username AND [UserFullName] = @UserFullName))  
	BEGIN
		SET NOCOUNT OFF;SET NOCOUNT ON;			
		Update Users
		Set UserFullName = @UserFullName, Phone = @Phone, Email = @Email, Username = @Username, Password = @Password, IsActive = 1, 
                         IsDeleted = 0, Mobile = @Mobile, Nationality = @Nationality, TypeID = @TypeID
		Where [UserID] = @UserID OR (Username=@Username AND [UserFullName] = @UserFullName);
		SET @Items = @UserID;
	END		
	ELSE
	BEGIN
		Insert Into Users([UserFullName],[Phone],[Email],[Username],[Password],[IsActive],[IsDeleted],[Mobile],Nationality, TypeID)
		Values(@UserFullName,@Phone,@Email,@Username,@Password,1,0,@Mobile,@Nationality, @TypeID);
		SET @Items = @@IDENTITY;
	END
	Return @Items;
End
GO
/****** Object:  StoredProcedure [dbo].[Users_Select2]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Select2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_Select2] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Users_Select2
-- Author:	Mohamed Salah
-- ALTER date:	16/1/2018 9:27:39 AM
-- Description:	This stored procedure is intended for selecting a specific rows from Users table
-- ==========================================================================================
ALTER Procedure [dbo].[Users_Select2]
	@pageNum int = 1,
	@pageSize int= 10,
	@key nvarchar(50) = NULL
As
Begin
	-- get list
	SELECT [UserID] as id, UserFullName as [text1] FROM (
		Select distinct [UserID],UserFullName,(row_number() over(ORDER BY UserName ASC)) As RowNo From Users Where (@key IS NULL) OR (UserName LIKE @key +'%')
		) List
	Where RowNo > ((@pageNum - 1) * @pageSize)  AND RowNo <= (@pageNum * @pageSize);
	
	-- get count
	SELECT Count(*) AS CNT FROM Users Where (@key IS NULL) OR (UserName LIKE @key +'%');
End

GO
/****** Object:  StoredProcedure [dbo].[Users_SelectList]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_SelectList] AS' 
END
GO

-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Users_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = '',
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	SET NOCOUNT ON
	   SELECT Users.UserID, Users.UserFullName, Users.Phone, Users.Email, Users.Username, Users.Password, Users.IsActive, Users.IsDeleted, Users.Mobile, Users.Nationality, Users.TypeID, UserTypes.TypeName
		FROM Users INNER JOIN UserTypes ON Users.TypeID = UserTypes.TypeID;
	   SELECT COUNT(*) from Users;
END
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectRow]    Script Date: 1/28/2018 9:51:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_SelectRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_SelectRow] AS' 
END
GO

-- ==========================================================================================
-- Entity Name:	Users_SelectRow
-- Author:	Mohamed Salah
-- ALTER date:	7/1/2013 11:55:23 AM
-- Description:	This stored procedure is intended for selecting a specific row from Users table
-- ==========================================================================================
ALTER Procedure [dbo].[Users_SelectRow]
	@UserID int
As
Begin
	SELECT        Users.UserID, Users.UserFullName, Users.Phone, Users.Email, Users.Username, Users.Password, Users.IsActive, Users.IsDeleted, Users.Mobile, Users.Nationality, Users.TypeID, UserTypes.TypeName
FROM            Users INNER JOIN
                         UserTypes ON Users.TypeID = UserTypes.TypeID
WHERE        (Users.UserID = @UserID)
End
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'MediaFiles', N'COLUMN',N'Priority'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Visible order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MediaFiles', @level2type=N'COLUMN',@level2name=N'Priority'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transportation', N'COLUMN',N'ConsigneeID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Refere to client name in clients table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transportation', @level2type=N'COLUMN',@level2name=N'ConsigneeID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transportation', N'COLUMN',N'TransporterID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Employee name or osaka comp.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transportation', @level2type=N'COLUMN',@level2name=N'TransporterID'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ClientPayments"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 161
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 8
               Left = 340
               Bottom = 137
               Right = 510
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Invoices', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Clients"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 256
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Invoices"
            Begin Extent = 
               Top = 24
               Left = 328
               Bottom = 154
               Right = 498
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "InvoiceDetails"
            Begin Extent = 
               Top = 34
               Left = 638
               Bottom = 190
               Right = 811
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2088
         Alias = 1752
         Table = 1320
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Invoices'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Invoices', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Invoices'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Outgoings', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 227
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Outgoings"
            Begin Extent = 
               Top = 6
               Left = 265
               Bottom = 136
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Outgoings'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Outgoings', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Outgoings'
GO
