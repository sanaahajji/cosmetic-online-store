<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%!
    // --- String Join Function
    public String join(ArrayList<?> arr, String del)
    {

        StringBuilder output = new StringBuilder();

        for (int i = 0; i < arr.size(); i++)
        {

            if (i > 0) output.append(del);
            
            // --- Quote strings, only, for JS syntax
            if (arr.get(i) instanceof String) output.append("\"");
            output.append(arr.get(i));
            if (arr.get(i) instanceof String) output.append("\"");
        }

        return output.toString();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>cosmetic bar graph </title>
    <script type="text/javascript" src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function()
{window.location.hash="";}
</script> 
</head>

<body>
    <script>
        <%
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            final String host = "jdbc:mysql://localhost:3306/cosmeticonline";
            final Connection conn = DriverManager.getConnection(host, "root", "12345");
            final Statement stmt = conn.createStatement();
            final ResultSet rs = stmt.executeQuery("SELECT productname, SUM(noprodchkout)AS ordrquantity FROM buyproduct WHERE chkout='YES' GROUP BY productname;");

            ArrayList<String> months = new ArrayList<String>();
            ArrayList<Integer> users = new ArrayList<Integer>();

            while(rs.next())
            {
                months.add(rs.getString("productname"));
                users.add(Integer.parseInt(rs.getString("ordrquantity")));
            }

            conn.close();
        %>

        var monthData = [<%= join(months, ",") %>];
        var userData = [<%= join(users, ",") %>];
        
    </script>
    <script>
    window.onload = function()
    {
        zingchart.render
        ({
            id:"myChart",
            width:"100%",
            height:400,
            data:
            {
                "type":"bar",
                "title":
                {
                    "text":"Real Data"
                },
                "scale-x":
                {
                    "labels": monthData
                },
                "plot":
                {
                    "line-width":1
                },
                "series":
                [
                    {
                      "values":userData
                    }
                ]
            }
        });
    };
    </script>
    <h1></h1>
    <div><a href="Home"> <font
									style="color: Blue; cursor: pointer;">Back to Home</font>
							</a></div>
    <div id="myChart"></div>
</body>
</html>