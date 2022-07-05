
<%@page import="java.sql.ResultSet"%>
<%@page import="plantkartaction.ChatAction"%>
<div id="chatbox" class="modal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">Chat with admin:</h3>
			 <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="table-wrapper-scroll-y my-custom-scrollbar">
                        <table class="table">
                            <%
                                 ChatAction cac=new ChatAction();
                                 ResultSet crs=cac.getUserMessege(email);
                                 while(crs.next())
                                 {
                                     %>
                                     <tr><td style="text-align: right"><%=crs.getString(3)%></td></tr>
                                     <%
                                 }
                            %>
                        </table> 
                    </div>
                    </div>
                    <div class="modal-footer">
                        <form class="form-inline" action="UserChatServlet" method="post">
                            <div class="form-group">
                                <input type="text" value="<%=email%>" name="email" hidden="" readonly=""/>
                                <textarea cols="50" class="form-control" name="usermsg"></textarea><input type="submit" value="Send" class="btn btn-success btn-md"/>
                            </div>
                        </form>  
                    </div>
                </div>
                
            </div>
        </div>



