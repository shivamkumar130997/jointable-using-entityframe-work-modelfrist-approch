<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="trail2jointable.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Depid" DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None" style="margin-left:38%;">
    <AlternatingRowStyle BackColor="#d5ffe9" />
    <Columns>
        <asp:BoundField DataField="Depid" HeaderText="Depid" ReadOnly="True" SortExpression="Depid" />
        <asp:BoundField DataField="Depname" HeaderText="Depname" SortExpression="Depname" />
        <asp:TemplateField HeaderText="Employees">  
            <ItemTemplate>
                <asp:GridView ID="GridView2" runat="server" DataSource='<%# Eval("Employees") %>'>
                </asp:GridView>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="#d5ffe9" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="#d5ffe9" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=EmployeeManagementEntities" DefaultContainerName="EmployeeManagementEntities" EnableFlattening="False" EntitySetName="Departments" Include="Employees"></asp:EntityDataSource>
        </div>
    </form>
</body>
</html>
