<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="HeatIndexApp.HeatIndex.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Head Index Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</head>
<body>
    

    <div class="container">
        <div class="row">
            <!-- Left Spacer -->
            <div class="col-md-2"></div>

            <!-- Center Content -->
            <div class="col-md-8">
                <form id="frmHeatIndexCalculator" runat="server">

                    <h1 style="margin-top:50px">Heat Index Calculator</h1>
                    <hr />
                    <br />
    
                    <table>
                        <tr>
                            <td>Air Temperature</td>
                            <td width="5">&nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtAirTemperature" Columns="4" MaxLength="5" runat="server"></asp:TextBox>
                            </td>
                            <td width="5">&nbsp;</td>
                            <td>
                                <asp:DropDownList ID="listTemperatureType" runat="server">
                                    <asp:ListItem Value="1">°C</asp:ListItem>
                                    <asp:ListItem Value="2" Selected="True">°F</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td width="5">&nbsp;</td>
                            <td>
                                <asp:RegularExpressionValidator ID="valAirTemperatureNumeric" runat="server" ControlToValidate="txtAirTemperature" ErrorMessage="Please enter a valid number." ValidationExpression="^\d+(\.\d+)?$" Display="Dynamic" SetFocusOnError="true"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="valAirTemperature" runat="server" ErrorMessage="Required" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtAirTemperature" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td>Relative Humidity</td>
                            <td width="5">&nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtRelativeHumidity" Columns="4" MaxLength="5" runat="server"></asp:TextBox>
                            </td>
                            <td width="5">&nbsp;</td>
                            <td>
                                <asp:RegularExpressionValidator ID="valRelativeHumidityNumeric" runat="server" ControlToValidate="txtRelativeHumidity" ErrorMessage="Please enter a valid number." ValidationExpression="^\d+$" Display="Dynamic" SetFocusOnError="true"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="valRelativeHumidity" runat="server" ErrorMessage="Required" SetFocusOnError="true" ControlToValidate="txtRelativeHumidity" Display="Dynamic"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    <br />

                    <p>
                        <asp:Button class="btn btn-dark" ID="btnCalculate" runat="server" Text="CALCULATE" OnClick="btnCalculate_Click" />
                    </p>

                    <p>
                        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                    </p>


                </form>
            </div>

            <!-- Right Spacer -->
            <div class="col-md-2"></div>
        </div>
    </div>
    
</body>
</html>
