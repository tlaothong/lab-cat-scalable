<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductCatPage.aspx.cs" Inherits="WebSite2Test.ProductCatPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductCategoryID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="ProductCategoryID" HeaderText="ProductCategoryID" ReadOnly="True" SortExpression="ProductCategoryID" />
            <asp:BoundField DataField="ParentProductCategoryID" HeaderText="ParentProductCategoryID" SortExpression="ParentProductCategoryID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="rowguid" HeaderText="rowguid" SortExpression="rowguid" />
            <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:data2tryConnectionString1 %>" DeleteCommand="DELETE FROM [ProductCategory] WHERE [ProductCategoryID] = @ProductCategoryID" InsertCommand="INSERT INTO [ProductCategory] ([ParentProductCategoryID], [Name], [rowguid], [ModifiedDate]) VALUES (@ParentProductCategoryID, @Name, @rowguid, @ModifiedDate)" ProviderName="<%$ ConnectionStrings:data2tryConnectionString1.ProviderName %>" SelectCommand="SELECT [ProductCategoryID], [ParentProductCategoryID], [Name], [rowguid], [ModifiedDate] FROM [SalesLT].[ProductCategory]" UpdateCommand="UPDATE [ProductCategory] SET [ParentProductCategoryID] = @ParentProductCategoryID, [Name] = @Name, [rowguid] = @rowguid, [ModifiedDate] = @ModifiedDate WHERE [ProductCategoryID] = @ProductCategoryID">
        <DeleteParameters>
            <asp:Parameter Name="ProductCategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ParentProductCategoryID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="rowguid" Type="Object" />
            <asp:Parameter Name="ModifiedDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ParentProductCategoryID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="rowguid" Type="Object" />
            <asp:Parameter Name="ModifiedDate" Type="DateTime" />
            <asp:Parameter Name="ProductCategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>
