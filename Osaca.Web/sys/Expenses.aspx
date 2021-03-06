﻿<%@ Page Title="Expenses" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="Expenses.aspx.cs" Inherits="sys_Expenses"
    EnableTheming="false" EnableViewState="false" ViewStateMode="Disabled" EnableSessionState="ReadOnly" %>

<%@ Register Src="UserControls/PageSettings.ascx" TagPrefix="uc1" TagName="PageSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/Scripts/sys/Common.min.js?v=1.30"></script>
    <script src="/Scripts/sys/DataService.min.js?v=1.30"></script>
    <script src="/Scripts/sys/DefaultGridVariables.min.js?v=1.30"></script>
    <script src="/content/sys/assets/js/jquery.validate.js"></script>
    <script src="/content/sys/assets/js/additional-methods.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
        <ul class="breadcrumb">
            <li>
                <i class="ace-icon fa fa-home home-icon"></i>
                <a href="home">Home</a>
            </li>
            <li class="active">Expenses</li>
        </ul>
    </div>
    <div class="page-content">
        <uc1:PageSettings runat="server" ID="PageSettings" />
        <div class="page-header">
            <h1>Expenses Manager</h1>
        </div>
        <div class="row">
            <div class="col-xs-12 widget-container-col">
                <div class="clearfix">
                    <a role="button" href="#addModal" data-toggle="modal" class="btn btn-white btn-warning btn-bold"
                        tabindex="0" title="Add new"><i class="fa fa-plus bigger-110"></i>Add new</a>
                    <div class="pull-right tableTools-container"></div>
                </div>

                <div class="widget-box widget-color-blue" id="widget-box-2">
                    <div class="widget-header">
                        <h5 class="widget-title bigger lighter">
                            <i class="ace-icon fa fa-table"></i>
                            Expenses List
                        </h5>

                        <div class="widget-toolbar">
                            <a href="#" data-action="fullscreen" class="white">
                                <i class="1 ace-icon fa fa-expand bigger-125"></i>
                            </a>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div class="widget-main no-padding">
                            <table id="listItems" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Expense name</th>
                                        <th>Default value</th>
                                        <th>Priority</th>
                                        <th>Active</th>
                                        <th>Is Vatable</th>
                                        <th width="77px"></th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="addModal" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header no-padding">
                                <div class="table-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        <span class="white">&times;</span>
                                    </button>
                                    Add/Edit Expense
                                </div>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <form class="form-horizontal" role="form" id="aspnetForm">
                                            <div>
                                                <input type="hidden" id="ExpenseID" value="0" />
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right">Expense name <span class="text-danger">*</span></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="col-sm-10 required" required id="ExpenseName" name="ExpenseName" placeholder="Expense name" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="DefaultValue">Default value</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="col-sm-10" id="DefaultValue" placeholder="00.00" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="Priority">Priority</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="col-sm-10" required id="Priority" placeholder="1" value="1" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="Active">Active</label>
                                                <div class="col-sm-9">
                                                    <label>
                                                        <input type="checkbox" class="inline" id="Active" />
                                                        <span>Active (&#10004; Yes view me in new invoice).</span>
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="IsVatable">Is Vatable</label>
                                                <div class="col-sm-9">
                                                    <label>
                                                        <input type="checkbox" class="inline" id="IsVatable" />
                                                    </label>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer no-margin-top">
                                <button class="btn btn-sm btn-primary" id="btnSave">
                                    <i class="ace-icon fa fa-check"></i>
                                    Save
                                </button>
                                <button class="btn btn-sm btn-danger" data-dismiss="modal">
                                    <i class="ace-icon fa fa-times"></i>
                                    Close
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="deleteModal" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header no-padding">
                                <div class="table-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        <span class="white">&times;</span>
                                    </button>
                                    Delete item
                                </div>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <form action="#" class="form-horizontal" id="removeForm">
                                            <label id="Label2">Are you sure to delete the selected item (<label class="removeField"></label>)?</label>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer no-margin-top">
                                <button class="btn btn-sm btn-primary btn-delete" id="btnDelete">
                                    <i class="ace-icon fa fa-check"></i>
                                    Delete
                                </button>
                                <button class="btn btn-sm btn-danger" data-dismiss="modal">
                                    <i class="ace-icon fa fa-times"></i>
                                    Cancel
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/Scripts/sys/DefaultGridManager.min.js?v=1.30"></script>
    <%--<script src="/Scripts/sys/expenses-manager.min.js"></script>--%>
    <script src="../Scripts/sys/expenses-manager.js"></script>
</asp:Content>
