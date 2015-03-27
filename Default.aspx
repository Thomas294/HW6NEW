<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_hw6data" runat="server" ConnectionString="<%$ ConnectionStrings:TGLAVAN_HW6onlythe32ndtry %>" DeleteCommand="DELETE FROM [TGLAVAN_HW6onlythe32ndtry] WHERE [RID] = @original_RID" InsertCommand="INSERT INTO [TGLAVAN_HW6onlythe32ndtry] ([Recipe_Name], [Submitted_By], [Ingredient_#1], [Ingredient_#2], [Ingredient_#3], [Ingredient_#4], [Ingredient_#5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [TGLAVAN_HW6onlythe32ndtry]" UpdateCommand="UPDATE [TGLAVAN_HW6onlythe32ndtry] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient_#1] = @column1, [Ingredient_#2] = @column2, [Ingredient_#3] = @column3, [Ingredient_#4] = @column4, [Ingredient_#5] = @column5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [RID] = @original_RID" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_RID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_#1" Type="String" />
                <asp:Parameter Name="Ingredient_#2" Type="String" />
                <asp:Parameter Name="Ingredient_#3" Type="String" />
                <asp:Parameter Name="Ingredient_#4" Type="String" />
                <asp:Parameter Name="Ingredient_#5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_#1" Type="String" />
                <asp:Parameter Name="Ingredient_#2" Type="String" />
                <asp:Parameter Name="Ingredient_#3" Type="String" />
                <asp:Parameter Name="Ingredient_#4" Type="String" />
                <asp:Parameter Name="Ingredient_#5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="original_RID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        Wicked Easy Recipes<br />
        Using 5 Ingedients or less!
        <br />
        <br />
        <br />
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server">About Us</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server">Contact Us</asp:HyperLink>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RID" DataSourceID="sql_hw6data">
            <Columns>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted By" SortExpression="Submitted_By" />
                <asp:HyperLinkField DataNavigateUrlFields="RID" DataNavigateUrlFormatString="Recipe.aspx?RID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
