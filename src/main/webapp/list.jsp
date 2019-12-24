<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>用户列表</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">用户列表</h3>
    <table border="1" class="table table-bordered table-hover">
        <tr style="background-color:rgb(51, 122, 183);">
            <th style="color:white">ID</th>
            <th style="color:white">用户名</th>
            <th style="color:white">密码</th>
            <th style="color:white">生日</th>
            <th style="color:white">住址</th>
            <th style="color:white">操作</th>
        </tr>
        <tbody id="tbody">

        </tbody>
        <%--<tr>--%>
            <%--<td>1</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>admin</td>--%>
            <%--<td>1995-10-10</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>--%>
                <%--<a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>--%>
                <%--<a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>1</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>admin</td>--%>
            <%--<td>1995-10-10</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>--%>
                <%--<a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>--%>
                <%--<a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>1</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>admin</td>--%>
            <%--<td>1995-10-10</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>--%>
                <%--<a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>--%>
                <%--<a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>1</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>admin</td>--%>
            <%--<td>1995-10-10</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>--%>
                <%--<a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>--%>
                <%--<a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>1</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>admin</td>--%>
            <%--<td>1995-10-10</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>--%>
                <%--<a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>--%>
                <%--<a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>1</td>--%>
            <%--<td>张三</td>--%>
            <%--<td>admin</td>--%>
            <%--<td>1995-10-10</td>--%>
            <%--<td>广东</td>--%>
            <%--<td>--%>
                <%--<a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>--%>
                <%--<a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>--%>
            <%--</td>--%>
        <%--</tr>--%>

        <tr>
            <td colspan="8" align="center">
                <a class="btn btn-success" href="add.html"><i class="glyphicon glyphicon-plus"></i>新增用户</a>
                <a class="btn btn-danger" href="login.html"><i class="glyphicon glyphicon-flash"></i>注销</a>
            </td>
        </tr>
    </table>
</div>
</body>

    <script>
        <%--在页面加载完成后发送ajax请求返回list 重新生成table的数据--%>
        $(function () {
           $.ajax({
               url:"${pageContext.request.contextPath}/user/toList",
               success:function (data) {
                   var str = "";
                   for (var i = 0; i < data.length; i++) {
                       str += '<tr>\n' +
                           '            <td>'+data[i].id+'</td>\n' +
                           '            <td>'+data[i].username+'</td>\n' +
                           '            <td>'+data[i].password+'</td>\n' +
                           '            <td>'+data[i].birthday+'</td>\n' +
                           '            <td>'+data[i].address+'</td>\n' +
                           '            <td>\n' +
                           '                <a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>\n' +
                           '                <a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>\n' +
                           '            </td>\n' +
                           '        </tr>'
                   }
                    $("#tbody").append(str);
               }
           });
        });

    </script>
</html>
