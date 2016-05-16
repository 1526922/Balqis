<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userpage.aspx.cs" Inherits="_1526922_HelloTupperware.userpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><asp:Label ID="lblwelcome" runat="server" Text="Hello"></asp:Label>
    <asp:Button ID="btnout" runat="server" Text="Log Out" OnClick="btnout_Click" /></p>
    <asp:FormView ID="ClientFormView" runat="server" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            ClientID:
            <asp:Label ID="ClientIDLabel1" runat="server" Text='<%# Eval("ClientID") %>' />
            <br />
            FullName:
            <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            ConfirmPassword:
            <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" Text='<%# Bind("ConfirmPassword") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ClientID:
            <asp:TextBox ID="ClientIDTextBox" runat="server" Text='<%# Bind("ClientID") %>' />
            <br />
            FullName:
            <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            ConfirmPassword:
            <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" Text='<%# Bind("ConfirmPassword") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ClientID:
            <asp:Label ID="ClientIDLabel" runat="server" Text='<%# Eval("ClientID") %>' />
            <br />
            FullName:
            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Bind("FullName") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            ConfirmPassword:
            <asp:Label ID="ConfirmPasswordLabel" runat="server" Text='<%# Bind("ConfirmPassword") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringName %>" DeleteCommand="DELETE FROM [registerClient] WHERE [ClientID] = @original_ClientID AND (([FullName] = @original_FullName) OR ([FullName] IS NULL AND @original_FullName IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([ConfirmPassword] = @original_ConfirmPassword) OR ([ConfirmPassword] IS NULL AND @original_ConfirmPassword IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))" InsertCommand="INSERT INTO [registerClient] ([ClientID], [FullName], [UserName], [Password], [ConfirmPassword], [Email], [Address]) VALUES (@ClientID, @FullName, @UserName, @Password, @ConfirmPassword, @Email, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ClientID], [FullName], [UserName], [Password], [ConfirmPassword], [Email], [Address] FROM [registerClient]" UpdateCommand="UPDATE [registerClient] SET [FullName] = @FullName, [UserName] = @UserName, [Password] = @Password, [ConfirmPassword] = @ConfirmPassword, [Email] = @Email, [Address] = @Address WHERE [ClientID] = @original_ClientID AND (([FullName] = @original_FullName) OR ([FullName] IS NULL AND @original_FullName IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([ConfirmPassword] = @original_ConfirmPassword) OR ([ConfirmPassword] IS NULL AND @original_ConfirmPassword IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ClientID" Type="String" />
            <asp:Parameter Name="original_FullName" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_ConfirmPassword" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ClientID" Type="String" />
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ConfirmPassword" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ConfirmPassword" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="original_ClientID" Type="String" />
            <asp:Parameter Name="original_FullName" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_ConfirmPassword" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
