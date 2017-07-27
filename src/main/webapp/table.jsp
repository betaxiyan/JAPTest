<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./DataTables-1.10.15/media/css/jquery.dataTables.css" />  
    <script src="./js/jquery-3.2.1.js"></script>  
    <script src="./DataTables-1.10.15/media/js/jquery.dataTables.js"></script>  
    <script src="./DataTables-1.10.15/media/js/dataTables.bootstrap.js"></script>
    
<script>  
$(function(){  
	 
    $('#sample_1').DataTable();
     /*  $("#sample_1").dataTable({  
               "Paginate": false, //开关，是否显示分页器  
               "bInfo": true, //开关，是否显示表格的一些信息  
               "bFilter": true, //开关，是否启用客户端过滤器  
               "sDom": "<>lfrtip<>",  
               "bAutoWith": false,  
               "bDeferRender": false,  
               "bJQueryUI": false, //开关，是否启用JQueryUI风格  
               "bLengthChange": true, //开关，是否显示每页大小的下拉框  
               "bProcessing": true,  
               "bScrollInfinite": true,  
               "sScrollY": "800px", //是否开启垂直滚动，以及指定滚动区域大小,可设值：'disabled','2000px'  
               "bSort": true, //开关，是否启用各列具有按列排序的功能  
               "bSortClasses": true,  
               "bStateSave": false, //开关，是否打开客户端状态记录功能。这个数据是记录在cookies中的，  
//打开了这个记录后，即使刷新一次页面，或重新打开浏览器，之前的状态都是保存下来的-  ------当值为true时aoColumnDefs不能隐藏列  
               "sScrollX": "50%", //是否开启水平滚动，以及指定滚动区域大小,可设值：'disabled','2000%'  
               "aaSorting": [[0, "asc"]],  
               "aoColumnDefs": [{ "bVisible": false, "aTargets": [0]}],//隐藏列  
               "sDom": '<"H"if>t<"F"if>',  
               "bAutoWidth": false, //自适应宽度  
               "aaSorting": [[1, "asc"]],  
               "sPaginationType": "full_numbers",  
                "oLanguage": {  
                    "sProcessing": "正在加载中......",  
                    "sLengthMenu": "每页显示 _MENU_ 条记录",  
                    "sZeroRecords": "对不起，查询不到相关数据！",  
                    "sEmptyTable": "表中无数据存在！",  
                    "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",  
                    "sInfoFiltered": "数据表中共为 _MAX_ 条记录",  
                    "sSearch": "搜索",  
                    "oPaginate": {  
                        "sFirst": "首页",  
                        "sPrevious": "上一页",  
                        "sNext": "下一页",  
                        "sLast": "末页"  
                    }  
                } //多语言配置  
            });   
    */
   
   
   
/*   
var TableData = function () {  
    //function to initiate DataTable  
    //DataTable is a highly flexible tool, based upon the foundations of progressive enhancement,   
    //which will add advanced interaction controls to any HTML table  
    //For more information, please visit https://datatables.net/  
    var runDataTable = function () {  
            var oTable = $('#sample_1').dataTable({  
                "aoColumnDefs": [{  
                    "aTargets": [0]  
                }],  
                "aaSorting": [  
                    [1, 'asc']  
                ],  
                "aLengthMenu": [  
                    [5, 10, 15, 20, -1],  
                    [5, 10, 15, 20, "All"] // change per page values here  
                ],  
                // 设置默认显示多少条信息  
                "iDisplayLength": 10,  
                "oLanguage": {  
                     "sProcessing": "正在加载中......",  
                    "sLengthMenu": "每页显示 _MENU_ 条记录",  
                     "sZeroRecords": "对不起，查询不到相关数据！",  
                     "sEmptyTable": "表中无数据存在！",  
                    "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",  
                     "sInfoFiltered": "数据表中共为 _MAX_ 条记录",  
                     "sSearch": "搜索",  
                     "oPaginate": {  
                        "sFirst": "首页",  
                         "sPrevious": "上一页",  
                         "sNext": "下一页",  
                         "sLast": "末页"  
                    }  
                 } //多语言配置  
            });  
            $('#sample_1_wrapper .dataTables_filter input').addClass("form-control input-sm").attr("placeholder", "Search");  
            // modify table search input  
            $('#sample_1_wrapper .dataTables_length select').addClass("m-wrap small");  
            // modify table per page dropdown  
            //$('#sample_1_wrapper .dataTables_length select').select2();  
            // initialzie select2 dropdown  
            $('#sample_1_column_toggler input[type="checkbox"]').change(function () {  
                /* Get the DataTables object again - this is not a recreation, just a get of the object */  
                /*
                var iCol = parseInt($(this).attr("data-column"));  
                var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;  
                oTable.fnSetColumnVis(iCol, (bVis ? false : true));  
            });  
      /*  };  
        return {  
            //main function to initiate template pages  
            init: function () {  
                runDataTable();  
            }  
        };  
    }();  
   
    TableData.init();//执行  
    */
   
})  
</script>   
</head>
<body>
     <div class="container">  
        <table class="table table-striped table-bordered table-hover table-full-width" id="sample_1">   
        <!--  <table class="" id="sample_1">-->
            <thead>  
                <tr>  
                    <th>Browser</th>  
                    <th class="hidden-xs">Creator</th>  
                    <th>Cost (  
                    USD)</th>  
                    <th class="hidden-xs"> Software license</th>  
                    <th>Current  
                    layout engine</th>  
                </tr>  
            </thead>  
            <tbody>  
                <tr>  
                    <td>Amaya</td>  
                    <td class="hidden-xs">W3C,  
                    INRIA</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">W3C</td>  
                    <td>Amaya</td>  
                </tr>  
                <tr>  
                    <td>AOL Explorer</td>  
                    <td class="hidden-xs">America Online, Inc</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Trident</td>  
                </tr>  
                <tr>  
                    <td>Arora</td>  
                    <td class="hidden-xs">Benjamin C. Meyer</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Avant</td>  
                    <td class="hidden-xs">Avant Force</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Tri-engine</td>  
                </tr>  
                <tr>  
                    <td>Camino</td>  
                    <td class="hidden-xs">The Camino Project</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">tri-license</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>Chromium</td>  
                    <td class="hidden-xs">Google</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">BSD</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Dillo</td>  
                    <td class="hidden-xs">The Dillo team</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>Dillo</td>  
                </tr>  
                <tr>  
                    <td>Dooble</td>  
                    <td class="hidden-xs">Dooble Team</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>ELinks</td>  
                    <td class="hidden-xs">Baudis, Fonseca, <i>et al.</i></td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>built-in</td>  
                </tr>  
                <tr>  
                    <td>Web</td>  
                    <td class="hidden-xs">Marco Pesenti Gritti</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Flock</td>  
                    <td class="hidden-xs">Flock Inc</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Galeon</td>  
                    <td class="hidden-xs">Marco Pesenti Gritti</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>Google Chrome</td>  
                    <td class="hidden-xs">Google</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Google Chrome Terms of Service</td>  
                    <td>Blink</td>  
                </tr>  
                <tr>  
                    <td>GNU IceCat</td>  
                    <td class="hidden-xs">GNU</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">MPL</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>iCab</td>  
                    <td class="hidden-xs">Alexander Clauss</td>  
                    <td>$20 (Pro)</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Internet Explorer</td>  
                    <td class="hidden-xs">Microsoft,  
                    <br>  
                    Spyglass</td>  
                    <td>comes with Windows</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Trident</td>  
                </tr>  
                <tr>  
                    <td>Internet Explorer for Mac (terminated)</td>  
                    <td class="hidden-xs">Microsoft</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Tasman</td>  
                </tr>  
                <tr>  
                    <td>K-Meleon</td>  
                    <td class="hidden-xs">Dorian, KKO, <i>et al.</i></td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>Konqueror</td>  
                    <td class="hidden-xs">KDE</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>KHTML</td>  
                </tr>  
                <tr>  
                    <td>Links</td>  
                    <td class="hidden-xs">Patocka, <i>et al.</i></td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>built-in</td>  
                </tr>  
                <tr>  
                    <td>Lunascape</td>  
                    <td class="hidden-xs">Lunascape Corporation</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Tri-engine</td>  
                </tr>  
                <tr>  
                    <td>Lynx</td>  
                    <td class="hidden-xs">Montulli, Grobe, Rezac, <i>et al.</i></td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>built-in</td>  
                </tr>  
                <tr>  
                    <td>Maxthon</td>  
                    <td class="hidden-xs">Maxthon International Limited</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Trident</td>  
                </tr>  
                <tr>  
                    <td>Midori</td>  
                    <td class="hidden-xs">Christian Dywan, et al.</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">LGPL</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Mosaic</td>  
                    <td class="hidden-xs">Marc Andreessen and  
                    Eric Bina,  
                    NCSA</td>  
                    <td>non-commercial use</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>built-in</td>  
                </tr>  
                <tr>  
                    <td>Mozilla Application Suite</td>  
                    <td class="hidden-xs">Mozilla Foundation</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">tri-license</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>Mozilla Firefox</td>  
                    <td class="hidden-xs">Mozilla Foundation</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">MPL</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>Netscape (v.6-7) </td>  
                    <td class="hidden-xs">Netscape Communications Corporation,  
                    AOL</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>Netscape Browser (v.8)[note 2]</td>  
                    <td class="hidden-xs">Mercurial Communications for  
                    AOL</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Gecko, Trident</td>  
                </tr>  
                <tr>  
                    <td>Netscape Communicator (v.4)[note 2]</td>  
                    <td class="hidden-xs">Netscape Communications</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Mosaic</td>  
                </tr>  
                <tr>  
                    <td>Netscape Navigator (v.1-4)[note 2]</td>  
                    <td class="hidden-xs">Netscape Communications</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Mosaic</td>  
                </tr>  
                <tr>  
                    <td>Netscape Navigator 9[note 2]</td>  
                    <td class="hidden-xs">Netscape Communications  
                    <br>  
                    (division of AOL)</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>NetSurf</td>  
                    <td class="hidden-xs">The NetSurf Developers</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GPL</td>  
                    <td>NetSurf built-in</td>  
                </tr>  
                <tr>  
                    <td>OmniWeb</td>  
                    <td class="hidden-xs">The Omni Group</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Opera</td>  
                    <td class="hidden-xs">Opera Software</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Presto</td>  
                </tr>  
                <tr>  
                    <td>Opera Mobile</td>  
                    <td class="hidden-xs">Opera Software</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Presto</td>  
                </tr>  
                <tr>  
                    <td>Origyn Web Browser</td>  
                    <td class="hidden-xs">Sand-labs</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">BSD</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>QupZilla</td>  
                    <td class="hidden-xs">David Rosca</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GNU GPLv3</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Safari</td>  
                    <td class="hidden-xs">Apple Inc.</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>SeaMonkey</td>  
                    <td class="hidden-xs">SeaMonkey Council</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">tri-license</td>  
                    <td>Gecko</td>  
                </tr>  
                <tr>  
                    <td>Shiira</td>  
                    <td class="hidden-xs">Happy Macintosh Developing Team</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">BSD</td>  
                    <td>WebKit</td>  
                </tr>  
                <tr>  
                    <td>Sleipnir</td>  
                    <td class="hidden-xs">Fenrir Inc.</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Trident</td>  
                </tr>  
                <tr>  
                    <td>Torch Browser</td>  
                    <td class="hidden-xs">Torch Media</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Proprietary</td>  
                    <td>Webkit</td>  
                </tr>  
                <tr>  
                    <td>Uzbl</td>  
                    <td class="hidden-xs">Dieter Plaetinck</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">GNU GPLv3</td>  
                    <td>Webkit</td>  
                </tr>  
                <tr>  
                    <td>WorldWideWeb (Later renamed Nexus)</td>  
                    <td class="hidden-xs">Tim Berners-Lee</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">Public domain</td>  
                    <td>NeXTSTEP built-in</td>  
                </tr>  
                <tr>  
                    <td>w3m</td>  
                    <td class="hidden-xs">Akinori Ito</td>  
                    <td>Free</td>  
                    <td class="hidden-xs">MIT</td>  
                    <td>-</td>  
                </tr>  
            </tbody>  
        </table>  
    </div>  

</body>