<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Productregistration.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PRODUCT REGISTERATION</title>
   
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div>
            <h1>Product Registration</h1>
            
            <!-- Product Image -->
            <asp:Image ID="imgProduct" runat="server" ImageUrl="default-product-image.jpg" Width="200px" Height="200px" />

            <!-- Product Name -->
            <label for="txtProductName">Product Name:</label>
            <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvProductName" runat="server" ControlToValidate="txtProductName" 
                InitialValue="" ErrorMessage="Product name is required." ForeColor="Red" Display="Dynamic" />

            <!-- Category -->
            <label for="ddlCategory">Category:</label>
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                <asp:ListItem Text="Select Category" Value="" />
                <asp:ListItem Text="Electronics" Value="Electronics" />
                <asp:ListItem Text="Clothing" Value="Clothing" />
                <asp:ListItem Text="Books" Value="Books" />
            </asp:DropDownList>

            <!-- Price -->
            <label for="txtPrice">Price:</label>
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="txtPrice" 
                InitialValue="" ErrorMessage="Price is required." ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revPrice" runat="server" ControlToValidate="txtPrice"
                ValidationExpression="^\d+(\.\d{1,2})?$" ErrorMessage="Invalid price format. Use numbers with up to 2 decimal places." 
                ForeColor="Red" Display="Dynamic" />

            <!-- Description -->
            <label for="txtDescription">Description:</label>
            <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" />

            <!-- Release Date -->
            <label for="calReleaseDate">Release Date:</label>
            <asp:Calendar ID="calReleaseDate" runat="server" CssClass="form-control" />

            <!-- Register Button -->
            <asp:Button ID="btnRegister" runat="server" Text="Register Product" OnClick="btnRegister_Click" CssClass="btn btn-primary" />

            <!-- Confirmation Message -->
            <asp:Label ID="lblConfirmation" runat="server" CssClass="text-success" Visible="false" />


        </div>
    </form>
</body>
</html>
