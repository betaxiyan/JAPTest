<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./DataTables-1.10.15/media/css/jquery.dataTables.css" />  
<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="./DataTables-1.10.15/media/js/jquery.dataTables.min.js"></script>  

<script type="text/javascript">
$(function(){
    $('#t1').DataTable({
         // scrollY: 400,//Y方向滚轮
          paging: true,//页数（右下部分）
          info: true,//左下角信息
          pagination:false,
          lengthChange: true,//设置改变每页显示的记录数
          searching: true, //搜索框
          "serverSide": true,  //后台分页
          "ajax":{ url:"params",
                  //dataSrc:"",
                   type:"post",
            },
            "columns": [{"mData": "id"}, 
                          {"mData": "name"}, 
                          {"mData": "sex"}, 
                          {"mData": "birth"}, 
                          {"mData": "department"}, 
                          {"mData": "address"}
            ],
                 
          
             aLengthMenu:[  
                       [1, 2, 3, 5, ], 
                       ["一", "ssss", 3, 5, ]
                       //改变每页的显示数量，第一列代表数量，第二列代表显示的内容
                   ],  
                   
         iDisplayLength: 10,  //设置默认显示多少条信息   
        
          oLanguage:{
              "sProcessing": "正在加载中......",  
              "sLengthMenu": "每页显示 _MENU_ 条记录",  
              "sZeroRecords": "对不起，查询不到相关数据！",  
              "sEmptyTable": "表中无数据存在！",  
              "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",  
              "sInfoFiltered": "数据表中共为 _MAX_ 条记录",  
              "sSearch": "搜索",  
              "oPaginate": {"sFirst": "首页",  
                            "sPrevious": "上一页",  
                            "sNext": "下一页",  
                            "sLast": "末页"  
                           }  
          } //多语言配置 

   });
})


</script>
</head>
<body>
    <div align="center">
        <table id="t1" border="2">
            <thead>
            <tr style="background-color: black;color: white;">
                <th>id</th>
                <th>name</th>
                <th>sex</th>
                <th>birth</th>
                <th>department</th>
                <th>address</th>
            </tr>
            </thead>
        </table>
    </div>
</body>
</html>