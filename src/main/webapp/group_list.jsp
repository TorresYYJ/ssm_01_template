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
    <h3 style="text-align: center">用户组列表</h3>
    <table border="1" class="table table-bordered table-hover">
        <tr style="background-color:rgb(51, 122, 183);">
			<th style="color:white">选择</th>
            <th style="color:white">ID</th>
            <th style="color:white">组名</th>
            <th style="color:white">组描述</th>
            
            <th style="color:white">操作</th>
        </tr>
        <tr>
			<td><input type="checkbox" ></td>
            <td>1</td>
            <td>系统管理员</td>
            <td>我是系统管理员</td>
            
            <td>
                <a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>
                <a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>
            </td>
        </tr>
        <tr>
			<td><input type="checkbox" ></td>
            <td>1</td>
            <td>部门管理员</td>
            <td>部门我管理</td>
            
            <td>
                <a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>
                <a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>
            </td>
        </tr>
        <tr>
			<td><input type="checkbox" ></td>
            <td>1</td>
            <td>系统管理员</td>
            <td>我是系统管理员</td>
            <td>
                <a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>
                <a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>
            </td>
        </tr>
        <tr>
			<td><input type="checkbox" ></td>
            <td>1</td>
            <td>部门管理员</td>
            <td>部门我管理</td>
            <td>
                <a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>
                <a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>
            </td>
        </tr>
         <tr>
			<td><input type="checkbox" ></td>
            <td>1</td>
            <td>系统管理员</td>
            <td>我是系统管理员</td>
            <td>
                <a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>
                <a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>
            </td>
        </tr>
        <tr>
			<td><input type="checkbox" ></td>
            <td>1</td>
            <td>部门管理员</td>
            <td>部门我管理</td>
            <td>
                <a class="btn btn-info btn-sm" href="update.html"><i class="glyphicon glyphicon-pencil"></i>修改</a>
                <a class="btn btn-danger btn-sm" href="update.html"><i class="glyphicon glyphicon-remove"></i>删除</a>
            </td>
        </tr>

        <tr>
            <td colspan="8" align="center">
				<a class="btn btn-danger" href="#"><i class="glyphicon glyphicon-minus"></i>批量删除</a>
                <a class="btn btn-success" href="add.html"><i class="glyphicon glyphicon-plus"></i>新增用户</a>
                <a class="btn btn-danger" href="login.html"><i class="glyphicon glyphicon-flash"></i>注销</a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
