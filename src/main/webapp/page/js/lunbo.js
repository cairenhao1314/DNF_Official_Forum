//计数 当前轮播图片 的下标 1-5
				var index = 0;
				//图片长度
				var imgWidth = $("section ul li img").innerWidth();
				//定时器
				var timer =setInterval("ImgMove()", 3000);
				//图片的jq对象
				var $img=$("section ul li img");
				//轮播图下面的小点
				var $li=$("section ol li");
				//轮播函数 
				function ImgMove() {
					index++;
					$img.animate({left: -index * imgWidth}, 2000);
					if(index == 5) {
						index = 0;
						$img.animate({left: -index * imgWidth}, 0);
					}
					lightIndex();
					changeImg();
				}
				
				//轮播函数 ++
				function ImgMoveAdd(time) {
					//$img.stop(true,true);
					index++;
					$img.animate({left: -index * imgWidth}, time);
					if(index == 5) {
						index = 0;
						$img.animate({left: -index * imgWidth}, 0);
					}
					lightIndex();
					changeImg();
				}
				
				//轮播函数 --
				function ImgMoveReduce(time) {
					//$img.stop(true,true);
					if(index==0){
						index=5;
						$img.animate({left: -index * imgWidth}, 0);
					}
					index--;
					
					lightIndex();
					changeImg();
					
					$img.animate({left: -index * imgWidth}, time);
				}
				
				//下标自动亮的函数
				function lightIndex(){
					$li.eq(index).css("background","#DCDCDC").siblings().removeAttr("style");
				}
				
				//开始计时器
				function startImg(){
					timer=setInterval("ImgMove()", 3000);
				}
				//关闭定时器
				function stopImg(){
					clearInterval(timer);
				}
				
				//鼠标移入 停止计时器 停止动画  移除重新开始
				$(".Sowing_map").hover(function(){
					stopImg();
					$img.stop(true,true);
					if(index==0){
						$img.animate({left: 0}, 0);
					}
				},function(){
					startImg();
				});
				
				//右点击事件
				$(".toRight").click(function(){
					ImgMoveAdd(500);
				});
				//左点击事件
				$(".toLeft").click(function(){
					ImgMoveReduce(500);
				});
				
				//每一个li点击事件  最短路径到达
				$li.click(function(){
					//先立刻停止当前动画
					//$img.stop(true,true);
					//用来标识是否反方向
					var flag=true;
					var ar=$(this).index()-index;
					//需要移动的次数 
					var num = Math.abs($(this).index()-index);
					if(num>2){
						num=5-num;
						flag=false;
						//ar改变符号
						ar>0?-1:1;
					}
					
					//执行num次
					for(var i=0;i<num;i++){
						if(ar>=0){
							flag?ImgMoveAdd(500):ImgMoveReduce(500);
						}else{
							flag?ImgMoveReduce(500):ImgMoveAdd(500);
						}
					}
				});
				
				$(".toLeft").hover(
					function(){
						$(this).css("opacity",1);
					},function(){
						$(this).css("opacity",0.5);
					}
				);
				
				$(".toRight").hover(
					function(){
						$(this).css("opacity",1);
					},function(){
						$(this).css("opacity",0.5);
					}
				);
				
				//改变轮播图下面的文字提示
				function changeImg(){
					$("section .imgMsg").text($img.eq(index).attr("msg"));
				}
				changeImg();
