<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="WebSite2Test.ProductPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ProductNumber" HeaderText="ProductNumber" SortExpression="ProductNumber" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="StandardCost" HeaderText="StandardCost" SortExpression="StandardCost" />
                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="ProductCategoryID" HeaderText="ProductCategoryID" SortExpression="ProductCategoryID" />
                <asp:BoundField DataField="ProductModelID" HeaderText="ProductModelID" SortExpression="ProductModelID" />
                <asp:BoundField DataField="SellStartDate" HeaderText="SellStartDate" SortExpression="SellStartDate" />
                <asp:BoundField DataField="SellEndDate" HeaderText="SellEndDate" SortExpression="SellEndDate" />
                <asp:BoundField DataField="DiscontinuedDate" HeaderText="DiscontinuedDate" SortExpression="DiscontinuedDate" />
                <asp:BoundField DataField="ThumbnailPhotoFileName" HeaderText="ThumbnailPhotoFileName" SortExpression="ThumbnailPhotoFileName" />
                <asp:BoundField DataField="rowguid" HeaderText="rowguid" SortExpression="rowguid" />
                <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:data2tryConnectionString1 %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([Name], [ProductNumber], [Color], [StandardCost], [ListPrice], [Size], [Weight], [ProductCategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [ThumbnailPhotoFileName], [rowguid], [ModifiedDate]) VALUES (@Name, @ProductNumber, @Color, @StandardCost, @ListPrice, @Size, @Weight, @ProductCategoryID, @ProductModelID, @SellStartDate, @SellEndDate, @DiscontinuedDate, @ThumbnailPhotoFileName, @rowguid, @ModifiedDate)" ProviderName="<%$ ConnectionStrings:data2tryConnectionString1.ProviderName %>" SelectCommand="SELECT [ProductID], [Name], [ProductNumber], [Color], [StandardCost], [ListPrice], [Size], [Weight], [ProductCategoryID], [ProductModelID], [SellStartDate], [SellEndDate], [DiscontinuedDate], [ThumbNailPhoto], [ThumbnailPhotoFileName], [rowguid], [ModifiedDate] FROM [SalesLT].[Product]" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [ProductNumber] = @ProductNumber, [Color] = @Color, [StandardCost] = @StandardCost, [ListPrice] = @ListPrice, [Size] = @Size, [Weight] = @Weight, [ProductCategoryID] = @ProductCategoryID, [ProductModelID] = @ProductModelID, [SellStartDate] = @SellStartDate, [SellEndDate] = @SellEndDate, [DiscontinuedDate] = @DiscontinuedDate, [ThumbnailPhotoFileName] = @ThumbnailPhotoFileName, [rowguid] = @rowguid, [ModifiedDate] = @ModifiedDate WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ProductNumber" Type="String" />
                <asp:Parameter Name="Color" Type="String" />
                <asp:Parameter Name="StandardCost" Type="Decimal" />
                <asp:Parameter Name="ListPrice" Type="Decimal" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Weight" Type="Decimal" />
                <asp:Parameter Name="ProductCategoryID" Type="Int32" />
                <asp:Parameter Name="ProductModelID" Type="Int32" />
                <asp:Parameter Name="SellStartDate" Type="DateTime" />
                <asp:Parameter Name="SellEndDate" Type="DateTime" />
                <asp:Parameter Name="DiscontinuedDate" Type="DateTime" />
                <asp:Parameter Name="ThumbnailPhotoFileName" Type="String" />
                <asp:Parameter Name="rowguid" Type="Object" />
                <asp:Parameter Name="ModifiedDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="ProductNumber" Type="String" />
                <asp:Parameter Name="Color" Type="String" />
                <asp:Parameter Name="StandardCost" Type="Decimal" />
                <asp:Parameter Name="ListPrice" Type="Decimal" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Weight" Type="Decimal" />
                <asp:Parameter Name="ProductCategoryID" Type="Int32" />
                <asp:Parameter Name="ProductModelID" Type="Int32" />
                <asp:Parameter Name="SellStartDate" Type="DateTime" />
                <asp:Parameter Name="SellEndDate" Type="DateTime" />
                <asp:Parameter Name="DiscontinuedDate" Type="DateTime" />
                <asp:Parameter Name="ThumbnailPhotoFileName" Type="String" />
                <asp:Parameter Name="rowguid" Type="Object" />
                <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
