<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" MasterPageFile="~/Site.master" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript">
    $(function () {        
        blinkeffect();
               })
    function blinkeffect(selector) {
        $(selector).css("background-color", "Green")        
        var nodetext = $(selector).val() + " is Live"
        $(selector).val(nodetext)
        if (selector == "#Button1") {
            document.getElementById("Button2").value = "Training B is Cold"
        }
        else if (selector == "#Button2") {
            document.getElementById("Button1").value = "Training A is Cold"
        }
        $(selector).fadeOut('speed', function () {
            $(this).fadeIn('speed', function () {
                blinkeffect(this);
            });
        });
    }
</script>



    <asp:Panel ID="Panel1" runat="server" style="text-align: center;"><br /><br /><br /><br /><br /><br /><br />
         <div >
            <input id="Button1" type="button" value="Training A node" readonly="readonly"  style="height: 20px; width: 145px; background-color: Red; color: White; border: 0px none; text-align: center;" />
             <br /><br /><br />
            <input id="Button2" type="button" value="Training B node" readonly="readonly" style="height: 20px; width: 145px; background-color: Red; color: White; border:0px none; text-align: center;" />
         </div>
    </asp:Panel>
   
</asp:Content>
