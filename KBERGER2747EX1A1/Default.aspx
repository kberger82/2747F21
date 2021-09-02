<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="KBERGER2747EX1A1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron"style="padding:12px">
        <h2>kberger2747ex1a</h2>
        <p>COMC2747 Excercise 1A: Web Forms Database App</p>
    </div>

    <div class="row">
        <div class="col-md-8">
            <h2>Regions/Countries</h2>
            <div class="form-group">
               <label for="RegionsDropDownList">Region:</label>
               <asp:DropDownList 
                ID="RegionsDropDownList" 
                runat="server" 
                DataSourceID="RegionsSqlDataSource" 
                DataTextField="Region" 
                DataValueField="Region" 
                CssClass="form-control"></asp:DropDownList>
            </div>
                <div class="form-group">
               <label for="CountriesDropDownList">Country:</label>
                    <asp:DropDownList 
                        ID="CountriesDropDownList" 
                        runat="server" 
                        DataSourceID="CountriesSqlDataSource" 
                        DataTextField="CountryName" 
                        DataValueField="CountryID" 
                        CssClass="form-control">
                    </asp:DropDownList>
                    <div class="form-group">
                    <label for="">State:</label>
                        <asp:GridView ID="StatesGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="StateProvinceID" DataSourceID="StatesDataSource" CssClass="table table-striped table-bordered" Enabled="False">
                            <Columns>
                                <asp:BoundField DataField="StateProvinceID" HeaderText="StateProvinceID" ReadOnly="True" SortExpression="StateProvinceID" Visible="False" />
                                <asp:BoundField DataField="SalesTerritory" HeaderText="SalesTerritory" SortExpression="SalesTerritory" />
                                <asp:BoundField DataField="StateProvinceCode" HeaderText="StateProvinceCode" SortExpression="StateProvinceCode" />
                                <asp:BoundField DataField="StateProvinceName" HeaderText="StateProvinceName" SortExpression="StateProvinceName" />
                                <asp:BoundField DataField="CountryID" HeaderText="CountryID" SortExpression="CountryID" Visible="False" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="StatesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" SelectCommand="SELECT StateProvinceID, StateProvinceCode, StateProvinceName, CountryID, SalesTerritory FROM Application.StateProvinces WHERE (CountryID = 230) ORDER BY SalesTerritory, StateProvinceName"></asp:SqlDataSource>
                   </div>
                        <asp:SqlDataSource 
                        ID="CountriesSqlDataSource" 
                        runat="server" 
                        ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" 
                        SelectCommand="SELECT DISTINCT CountryID, CountryName, Region FROM Application.Countries WHERE (Region = N'Europe') ORDER BY CountryName"></asp:SqlDataSource>
            </div>
           </div>
            <asp:SqlDataSource ID="RegionsSqlDataSource" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" 
                SelectCommand="SELECT DISTINCT Region FROM Application.Countries ORDER BY Region"></asp:SqlDataSource>
  
    <div class="col-md-4">
            <h2>Excercise 1A Features:</h2>
            <ul>
                <li>ASP.Net WebForms</li>
                <li>Bound controls</li>
                <li>"World Wide Importers" sample database</li>
            </ul>
        </div>
        </div>

      
   

</asp:Content>
