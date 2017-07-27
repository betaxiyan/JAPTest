//当前页，全局变量；
var thispage=1;	

$(function(){
	
	
	get(1);
	$("#prev").on("click",PrevPage);	
	$("#next").on("click",NextPage);
})

function PrevPage(){
	if(thispage<=1){
		alert("当前是第一页")
		return;
	}
	else{
		get(--thispage)
		$("#page").html(thispage)
	}
	
}

function NextPage(){
	get(++thispage);
	$("#page").html(thispage)
	
}
function get(n){
	
	$.post("params",
			{"page":n},
			function(daaa){
				if (daaa.content.length<=0){
					alert("，没有数据了")
					$("#page").html(--thispage)
				}
				else{
					$("#t1").html('<tr style="background-color: black;color: white;">'
				            +'<th>id</th>'
				            +'<th>name</th>'
				            +'<th>sex</th>'
				            +'<th>birth</th>'
				            +'<th>department</th>'
				            +'<th>address</th>'
				       +'</tr>');
					for(var i=0;i<daaa.content.length;i++){
						$("#t1").append('<tr><td>'+daaa.content[i].id+
							'</td><td>'+daaa.content[i].name+
							'</td><td>'+daaa.content[i].sex+
							'</td><td>'+daaa.content[i].birth+
							'</td><td>'+daaa.content[i].department+
							'</td><td>'+daaa.content[i].address+'</td></tr>')
					}
				}
			},
			"json")
			
}