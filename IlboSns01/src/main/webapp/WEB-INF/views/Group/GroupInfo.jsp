<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../includes/Links.jsp"%>
	<style type="text/css">
h6 {
	font-size: 0.80rem;
	color: #555f86;
}

header.section-header {
	position: relative;
}

header.section-header img {
	width: 1278px;
	height: 520px;
	border-radius: 5px;
}

header.section-header input{
	display: none;
}

button.btn.btn-outline-primary {
	position: absolute;
	top: 70%;
    left: 95%;
    background-color: aliceblue;
}
button.btn.btn-outline-primary:hover {
	
    color:#000000;
}




	div.one {
       	margin-top:15px;
        width: 100%;
        height: 100px;
        
      
    }
    div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        text-align: left;
     
    }
   
    
    
    div.right {
        width: 50%;
        float: right;
        box-sizing: border-box;
        text-align: right;
    }

	div.right button{
	
    margin-top: 15px;
    margin-left: 200px;

	}

	div.main{
		display:flex;
		flex-direction:column;
		
		
	}
	div#contentBox,div#contentBox3{
		 margin-left: 343px;
		 margin-top:120px;
	}
	
	div.tabs1{
		display:flex;
		border:0.5px solid black;
		border-right :none;
		border-left :none;
	}
	div.tabs1 .tabT{
		font-size: 1rem;
		text-align:center;
		line-height: 50px;
		width: 90px;
		height: 50px;
		cursor: pointer;
		background-color: white;
		/* border: 0.5px solid rgb(66,61,61); */
		
		color: black;
		position: relative;
	}
	div.items{
		width: 300px;
		display: none;
		padding: 10px;
		background-color: #fff;
		position: relative;
	}
	.items::before{
		content:"";
		position: absolute;
		top:0;
		left:0;
		width:90px;
		height: 5px;
		background-color: rgb(255,53,53);
	}
	.items:nth-child(2)::before{
		left:90px;
		background-color: rgb(53,100,255);
	}
	.items:nth-child(3)::before{
		left:180px;
		background-color: rgb(53,255,97);
	}
	div.items.active{
		display: inline-block;
	}
	div.card-header{
		background-color: rgb(11 244 255 / 3%);
	}
	
	div.icons i{
    height: 20px;
    width: 30px;
    margin-top: 6px;
	}
	
	div.icons h6{
    margin-left: 30px;
	}
	
	div.row {
	margin-top: 78px;
	
	}
	
	.textRq::before{
		content: "?????? ?????????"
	}
	.textGp::before{
		content: "?????? ??????"
	}
	
	div.boards{
	
    width: 800px;
    margin-left: 222px;
	
    margin-bottom: 20px;
	
	}

	
	
	
</style>
</head>

<body>
	<%@ include file="../includes/HomeHeader.jsp"%>
	

	
	<div class="row gy-4 d-flex justify-content-center" >
		<div class="col-lg-0 d-flex justify-content-end">
			<%-- <section style="position: fixed" data-aos="fade-right">
				<div class="d-flex flex-column " id="sidebar">
					<button class="btn btn-outline-primary btn-lg mt-4">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo/home-icon.png" class="icon">??????
					</button>
					<button class="btn btn-outline-primary btn-lg mt-4" onclick="location.href='GroupPage'">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo/group-icon.png" class="icon">??????
					</button>
					<button class="btn btn-outline-primary btn-lg mt-4 ">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo/glass-icon.png" class="icon">????????????
					</button>
					<button class="btn btn-outline-primary btn-lg mt-4 ">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo/fire-icon.png" class="icon">?????????
					</button>
					<button class="btn btn-outline-primary btn-lg mt-4 ">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo/business-icon.png" class="icon">????????????
					</button>
					<button class="btn btn-outline-primary btn-lg mt-4 ">
						<img src="${pageContext.request.contextPath }/resources/assets/img/logo/cs-icon.png" class="icon">????????????
					</button>
				</div>
			</section> --%>
		</div>
		<div class="col-lg-12">
			<!-- ======= Values Section ======= -->
			<section id="newsfeed" class="newsfeed" style="padding-top: 0px;">
				<div class="container" data-aos="fade-up">
					<!-- Button trigger modal -->
					<!-- <button type="button" id="boardWriteBtn" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">?????????	????????????</button> -->
					<!---------------------------------------------------------------------------------->
					<header class="section-header" id="gpInfo">
							
					</header>
					
					<div class="row">
						<div class="col-12">
						  <div class="main">
							
								<div class="tabs1">
									<div class="tabT" data-tab-target="#tab1">
										<p>??????</p>
									</div>
									<div class="tabT" data-tab-target="#tab2">
										<p>??????</p>
									</div>
									<div class="tabT" data-tab-target="#tab3">
										<p>??????</p>
									</div>
								</div>
						 </div>
							<div class="content">
								<div id="tab1" data-tab-content class="items active">
	
									<div id="contentBox">
									
									</div>
								</div>	
								<!-- tab2 ?????? -->
								<div id="tab2" data-tab-content class="items">
									
							 <!-- ????????????????????? ?????? ??????????????? -->	
							<c:choose>
							<c:when test="${myGroupMember ne 0}">
								
									<div class="card boards" id="boardWriteCard">
										<div class="card-body d-flex justify-content-between">
											<div class="flex-grow-1">
												<button id="boardWriteBtn" class="btn-light btn">${sessionScope.loginName}???
													????????? ???????????????..</button>
											</div>
											<a href="memberInformation"> <img
												src="${pageContext.request.contextPath }/resources/assets/img/profile/${sessionScope.loginProfile}"
												class="rounded-circle">
											</a>
										</div>
									</div>

									<div id="contentBox2">
										
									</div>
							</c:when>
							<c:otherwise>
								
								 <c:choose>
								 <c:when test="${gpDisclosure eq '?????????'}">

								 	<div class="boards" style="text-align:center;">	
								<img alt="disclosure" style="margin-top:80px;width:300px;" src="${pageContext.request.contextPath}/resources/assets/img/disclosure.svg">
								<h3> ??? ????????? ????????? ???????????????.</h3>
								<h5>????????? ????????? ??????????????? ??? ????????? ???????????????. </h5>
								 	</div>
								 	
								 </c:when>
								 <c:when test="${gpDisclosure eq '??????'}">
								 	
									<div class="card boards" id="boardWriteCard">
										<div class="card-body d-flex justify-content-between">
											<div class="flex-grow-1">
												<button id="boardWriteBtn" class="btn-light btn">${sessionScope.loginName}???
													????????? ???????????????..</button>
											</div>
											<a href="memberInformation"> <img
												src="${pageContext.request.contextPath }/resources/assets/img/profile/${sessionScope.loginProfile}"
												class="rounded-circle">
											</a>
										</div>
									</div>
									<div id="contentBox2">
									</div>
								 </c:when>
								 </c:choose>
							</c:otherwise>
							</c:choose> 
							<!-- ????????? End -->		
								</div>	
								<!-- tab2 ??? -->
								<!-- tab3 ?????? -->
								<div id="tab3" data-tab-content class="items">
									
								<c:choose>
								<c:when test="${myGroupMember ne 0}">
									<div id="contentBox3">
										
									</div>
								</c:when>
								<c:otherwise>
									<c:choose>
								 	<c:when test="${gpDisclosure eq '?????????'}">
											<div class="boards" style="text-align: center;">
												<img alt="disclosure"
													style="margin-top: 80px; width: 300px;"
													src="${pageContext.request.contextPath}/resources/assets/img/disclosure.svg">
												<h3>??? ????????? ????????? ???????????????.</h3>
												<h5>??? ????????? ????????? ????????? ????????? ??? ????????? ???????????????.</h5>
											</div>
									</c:when>
								 	<c:when test="${gpDisclosure eq '??????'}">
								 			<div id="contentBox3">
											</div>
									</c:when>
									</c:choose>
									
								</c:otherwise>
								</c:choose>
								</div>	
							</div>
							<div class="text-center">
								<!-- <div class="spinner-border mx-auto my-5" role="status">
									 <span class="sr-only">Loading...</span> 
								</div> -->
							</div>
						</div>
						
					</div>
				</div>
			</section>
			<!-- End Values Section -->
		</div>
		
		<div class="col-lg-0">
			
		</div>
	</div>
	

 		

	<!-- Request Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">?????? ?????? ??????</h5>
					<button type="button" class="close btn btn-primary" data-dismiss="modal" aria-label="Close">??????</button>
				</div>
				
					<div class="modal-body" id="GroupRqMembers">
						
					</div>
					<!-- <div class="modal-footer">
						 <button type="button" class="btn btn-secondary" data-dismiss="modal"  >Close</button>
						<button class="btn btn-primary" id="writeBtn">????????????</button>
					</div> -->
				
			</div>
		</div>
	</div>
	<!-- Request End Modal -->
	
	<!-- Board Modal -->
	<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">????????? ?????????</h5>
					<button type="button" class="close btn btn-primary" data-dismiss="modal" aria-label="Close">??????</button>
				</div>
				<form action="groupBoardWrite" id="uploadForm" method="post" enctype="multipart/form-data">
					<input type="hidden" value="${gpNum}" name="gpNum">
					<div class="modal-body">
						<div class="d-flex justify-content-start">
							<a href="#">
								<span> <img src="${pageContext.request.contextPath }/resources/assets/img/profile/${sessionScope.loginProfile}" class="rounded-circle" style="width: 50px; height: 50px;"></span>
							</a>
							<div class="px-3">
								<div>${sessionScope.loginName}</div>
								<select name="boVisiblity" class="divFocusBorder-0">
									<option value="????????????">&#xf57c ????????????</option>
									<option value="?????????">&#xf500 ?????????</option>
									<option value="?????????">&#xf502 ?????????</option>
								</select>
							</div>
						</div>
						<div role="textbox">
							<textarea rows="10" cols="43" id="text" style="border: none; margin-top: 10px;" name="boContent"></textarea>
							<output id="list" class="d-flex flex-row"></output>
						</div>
						<input type="hidden" value="${sessionScope.loginId}" name="boWriter">
						<input type="hidden" value="${sessionScope.loginName}" name="boWritersName">
						<div id="variousFunctions" class="card-body pt-3" style="margin-top: 10px;">
							<label for="files"> <img src="${pageContext.request.contextPath }/resources/assets/img/picture.png" width="40px" height="40px" id="upload">
							</label>
							<input type="file" id="files" name="boMutipleFile" style="display: none;" multiple />
						</div>
					</div>
					<div class="modal-footer">
						<!--  <button type="button" class="btn btn-secondary" data-dismiss="modal"  >Close</button> -->
						<button class="btn btn-primary" id="writeBtn">????????????</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Board End Modal -->

	<!-- Share Modal -->
	<div class="modal fade" id="shareModalCenter" tabindex="-1" role="dialog" aria-labelledby="shareModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="shareModalCenterTitle">????????????</h5>
					<button type="button" class="close rounded-circle" data-dismiss="modal" aria-label="Close" style="width: 31px; height: 33px;">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="boardShare" method="post">
					<div class="modal-body">
						<div class="d-flex justify-content-start">
							<a href="#">
								<span> <img src="${pageContext.request.contextPath }/resources/assets/img/profile/${sessionScope.loginProfile}" class="rounded-circle" style="width: 50px; height: 50px;"></span>
							</a>
							<div class="px-3">
								<div>${sessionScope.loginName}</div>
								<select name="boVisiblity" class="divFocusBorder-0">
									<option value="????????????">&#xf57c ????????????</option>
									<option value="?????????">&#xf500 ?????????</option>
									<option value="?????????">&#xf502 ?????????</option>
								</select>
							</div>
						</div>
						<div role="textbox">
							<textarea rows="10" cols="43" id="shareText" style="border: none; margin-top: 10px;" name="boContent"></textarea>
							<output id="list"></output>
						</div>
						<input type="hidden" value="${sessionScope.loginId}" name="boWriter">
						<input type="hidden" value="${sessionScope.loginName}" name="boWritersName">
						<input type="hidden" id="boFile" name="boFile">
					</div>
					<div class="modal-footer">
						<!--  <button type="button" class="btn btn-secondary" data-dismiss="modal"  >Close</button> -->
						<button class="btn btn-primary" id="shareWriteBtn">????????????</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- End of Share Modal -->


	<!-- Delete Modal -->
	<div class="modal fade" id="deleteModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle" >
					?????? ?????????
					</h5>
					<button type="button" class="close btn btn-primary" data-dismiss="modal" aria-label="Close">??????</button>
				</div>
					<form method="post" action="deleteGroup">
					<div class="modal-body" id="deleteMember" style="text-align: center;">
						
					</div>
					 <div class="modal-footer">
						<button class="btn btn-primary" id="DeleteBtn">??????</button>
					</div> 
					</form>
			</div>
		</div>
	</div>
	<!-- Delete End Modal -->
	<!-- ???????????? Modal -->
	<div class="modal fade" id="exileModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle" >
					????????? ??????
					</h5>
					<button type="button" class="close btn btn-primary" data-dismiss="modal" aria-label="Close">??????</button>
				</div>
					<form method="post" action="deleteGroup">
					<div class="modal-body" id="exileMember" style="text-align: center;">
						
					</div>
					 <div class="modal-footer">
						<button class="btn btn-primary" id="exileBtn">??????</button>
					</div> 
					</form>
			</div>
		</div>
	</div>
	<!-- ???????????? End Modal -->
	<!-- ?????? ??? ??????  Modal -->
	<div class="modal fade" id="rankModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle" >
					????????? ??????
					</h5>
					<button type="button" class="close btn btn-primary" data-dismiss="modal" aria-label="Close">??????</button>
				</div>
					<form method="post" action="updateRank">
					<div class="modal-body" id="rankMember" style="text-align: center;">
						
					</div>
					 <div class="modal-footer">

						<button class="btn btn-primary" id="rankBtn">??????</button>
					</div> 
					</form>
			</div>
		</div>
	</div>
	<!-- ?????? ??? ?????? End Modal -->







	
	<%@ include file="../includes/Footer.jsp"%>
	<%@ include file="../includes/script.jsp"%>






</body>


<script>

console.log(${gpNum});
var gpNum = '${gpNum}';

$('.close').click(function() {
	$('#exampleModalCenter').modal("hide"); //?????? ?????? 
	$('#deleteModalCenter').modal("hide"); //?????? ?????? 
	$('#exileModalCenter').modal("hide"); //?????? ?????? 
	$('#rankModalCenter').modal("hide"); //?????? ?????? 
});



function openModal(e){
	
	console.log("????????????")
	$('#exampleModalCenter').modal("show");
}



window.addEventListener('load', function () {
	//????????? ????????? ????????? ??? ???????????? ?????????
	 $.ajax({
		type:"get",
		url:"getGroupInfo?gpNum="+gpNum,
		dataType:"json",
		async:false,
		success:res=>{
			
			console.log(res)
			GroupeTopCard(res)
			GroupInfoCard(res)
			
		}
	}) 
	 $.ajax({
		type:"get",
		url:"getGroupMember?gpNum="+gpNum,
		async:false,
		dataType:"json",
		success:gp=>{
			
			
			createGroupMemberCard(gp)
			
		}
	}) 

	$.ajax({
		type:"get",
		url:"getRequestGroupMembers",
		data:{"gpNum":gpNum},
		dataType:"json",
		success:res=>{
				
			for(let i in res){
				rqMembersCard(res[i])
			}
		}
	})


		//?????? ????????? ??????
		$.ajax({
		type:"get",
		url:"getGpBoard?gpNum=${gpNum}",
		dataType:"json",
		success:res=>{
			for(let i in res){
				createContentInCard(res[i])	
				
			}
				
			
			//????????????
			var contentLength = document.getElementsByClassName('contentElement').length;
			console.log("??????????????? : "+contentLength);
			for (let i = 0; i < contentLength; i++){ 
				var content = document.getElementsByClassName('contentElement')[i].innerHTML;
				//console.log("?????????????????? : "+content);
				
				 var splitedArray = content.split(' ');
				//console.log(splitedArray);
				var linkedContent = '';
				for(var hashTag in splitedArray)
				{
				  hashTag = splitedArray[hashTag];
				  //console.log("hashTag = "+hashTag);
				   if(hashTag.indexOf('#') == 0)
				   {
					  
				      var word = hashTag.replaceAll("#","%23"); //#??? ??????????????? ????????? ?????????????????? ?????? %23 = # 
					   //console.log("hashTag2 = "+hashTag);
					   hashTag = '<a href=\'hashTagSelect?hashTag='+word+'\'>'+hashTag+'</a>';
				   }
				   linkedContent += hashTag+' ';
				   //console.log("hashTag3 = "+hashTag);
				}
				document.getElementsByClassName('contentElement')[i].innerHTML = linkedContent;  
			}
			
		}
	})
		

	
})

function createContentInCard(dd){

	let renderedCard = renderContentCard(dd);
	let renderedReplyDiv = getReply(dd.boNum);

	renderedCard.appendChild(renderedReplyDiv);
	contentBox2.appendChild(renderedCard);
}




 //?????????d ??? ????????? ????????? ????????? ?????????
function renderContentCard(d){
	
	let contentBoxWidthLength = contentBox2.offsetWidth;
	let cardTemplate = document.createElement("div");
	output = "";
	output += '<div class="card mb-3 contentCard divFocusBorder-0 boards" tabindex="-1" onfocus="getNewCard(isLast(this))">'
	output += 	'<div class="card-header d-flex justify-content-between">'
	output += 		'<div class="d-flex">'
	output += 			'<img class="rounded-circle" style="margin-top: 6px;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+d.memProfile+'\" width="48px" height="48px" onclick="location.href=\'memberInformation?memId='+d.memId+'\'">'
		output += 		'<div class="px-3 pt-1">'
		output += 			'<h6 class="card-title" style="margin-bottom: 1px;">'+d.gpName+'</h6>'
		output += 			'<h5 class="card-title" style="margin-bottom: 3px;">'+d.memName+'</h5>'
		output += 			'<h6 class="card-subtitle text-muted small" style="margin-bottom:1px;">' + pastTime(d.boDate) + '</h6>'
	output +=		'</div></div>'
	output +=		'<button class="card-menu-btn btn-outline-secondary btn" style="margin-top: 6px;" onclick="boardDelete(this,'+d.boNum+','+d.memId+')"><i class="fas fa-ellipsis-h" aria-hidden="true"></i></button>'
	output += 	'</div>'
	output += '<div onclick="spreadText(this.firstChild)" is-spread="fold" style="overflow:hidden"><div class="card-body" style="max-height:px">'
																															
	output += '<p class="card-text text contentElement">'+d.boContent+'</p>'
	output += '</div>'
		if(d.boFile != null){
			if(d.boType == "PICTURE"){
				output += '<div class="fileBox" style="overflow:hidden; max-height:px">'
				output += '<img class="card-img-bottom" src="${pageContext.request.contextPath }/resources/assets/img/boardFile/'+d.boFile+'">'
				output += '</div>'
			} else if(d.boType == "SHARE"){
				output += '<div class="fileBox p-2" style="overflow:hidden; max-height:px">'
				output += shareCard(d.boFile);
				output += '</div>'
			} else if(d.boType == "VIDEO"){
				output += '<div class="fileBox p-2" style="overflow:hidden; max-height:px">'
				output += '<video style="background-color:black;" width="100%" height="350px" src="${pageContext.request.contextPath }/resources/assets/video/'+d.boFile+'" controls></video>'
				output += '</div>'
			}
		}
		if(d.boType == "MULTI"){
			output += '<div class="fileBox p-2" style="overflow:hidden; max-height:px">'
			output += multiCard(d.boNum);
			output += '</div>'
		}
	output += '</div>'
	output += '<div class="card-footer">'
		output += '<div class="d-flex flex-row mt-1">'
			output += '<div class="p-2 w-33 btn btn-outline-secondary border-0" onclick="checkLike('+${sessionScope.loginId}+' , '+d.boNum+',this)" ><span> '+isLike('${sessionScope.loginId}',d.boNum)+'  </span>????????? '+likeCount(d.boNum)+' </div>'
			output += '<div role="button" class="p-2 w-33 btn btn-outline-secondary border-0" data-bs-toggle="collapse" href="#replyArea'+d.boNum+'\" aria-expanded="false" aria-controls="replyArea'+d.boNum+'"><i class="far fa-comment-alt me-1"></i>????????????</div>'
			output += '<div onclick = "shareBoard('+ d.boNum +')" class="p-2 w-33 btn btn-outline-secondary border-0"><i class="far fa-share-square me-1"></i>????????????</div>'
		output += '</div>'
	output += '</div>'

	output += '</div>';

	cardTemplate.innerHTML = output;
	return cardTemplate.firstChild;
	
} 




function rqMembersCard(d){
	let rqMembersCard  = rqMembers(d)
	
	GroupRqMembers.appendChild(rqMembersCard)
}



function rqMembers(d) {
	console.log("???????????????")
	console.log(d)
	let cardTemplate = document.createElement("div");
	let output = '';
		output += '<div class="d-flex" style=" margin-bottom: 6px; position: relative;">'
		output += '<img class="rounded-circle" style="width: 50px;height: 50px;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+d.memProfile+'" onclick="location.href=\'memberInformation?memId='+d.gpMemIdRq+'\'>'
		output += '<div style="margin-left: 8px;">'
		output += '<h5 style="margin-bottom: 2px;margin-top: 4px;">'+d.memName+'</h5>'
		output += '<h6>?????? ??????</h6>'
		output += '</div>'
		output += '<button class="card-menu-btn btn-outline-secondary btn" onclick="joinGpMem('+d.gpMemIdRq+','+d.gpNumRq+')"  style="position: absolute;left: 73%;">??????</button>'
			output += '<button class="card-menu-btn btn-outline-secondary btn" onclick="cancelRqMem('+d.gpMemIdRq+','+d.gpNumRq+')"  style="position: absolute;left: 86%;">??????</button>'
		output += '</div>'
	
			cardTemplate.innerHTML = output;
	
	return cardTemplate.firstChild;
}







function createGroupMemberCard(m){
	
	console.log("-----------")
	console.log(m)
	console.log("-----------")
	let contentBox3 = document.getElementById('contentBox3');
	
	let output = '';
	output += '<div id="disClosure">'
		output += '<div  class="card mb-3 contentCard divFocusBorder-0"  style="width: 550px;margin: 15px;">'
			output += '<div class="card-header d-flex justify-content-between">'
				output += '<div class="d-flex">'
					output += '<div class="px-3 pt-1">'
					output += '<h5 class="card-title" style="margin-bottom:10px;margin-top:10px;">?????? ?? '+m.length+'???</h5>'
				output +=		'</div>'
			output +=      '</div>'
		output += 	'</div>'
		
			output += '<div >'
			output +=		'<div class="card-body" >'	
				output += '<h3>????????? ??? ???????????????</h3>'
				
				for(let i = 0; i < m.length ; i++){
					if(m[i].gpManager == "?????????"){
						output += '<div class="d-flex" style=" margin-bottom: 6px;">'
						output += '<img class="rounded-circle" style="width: 50px;height: 50px;cursor : pointer;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+m[i].memProfile+'"  onclick=\'location.href="memberInformation?memId='+m[i].memId+'"\'>'
						output += '<div style="margin-left: 8px;">'
						output += '<h5 style="margin-bottom: 2px;margin-top: 4px;">'+m[i].memName+'</h5>'
						output += '<h6>'+m[i].gpManager+'</h6>'
						output += '</div>'
							output += '<div class="dropdown" >'
								output += '<button class="card-menu-btn btn-outline-secondary btn" data-bs-toggle="dropdown" aria-expanded="false"  id="GroupDropDown" style="position: absolute;left: 336px;"><i class="fas fa-ellipsis-h" aria-hidden="true"></i></button>'
									output += '<div class="dropdown-menu" aria-labelledby="GroupDropDown" >'
									output += ''+gpOption(m[i].gpManager,m[i].memId)+''
									output += '</div>'
										output += '</div>'
						output += '</div>'
					}
					if(m[i].gpManager == "?????????"){
						
					output += '<div class="d-flex" style=" margin-bottom: 6px;">'
					output += '<img class="rounded-circle" style="width: 50px;height: 50px;cursor : pointer;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+m[i].memProfile+'"  onclick="location.href=\'memberInformation?memId='+m[i].memId+'\'">'
					output += '<div style="margin-left: 8px;">'
					output += '<h5 style="margin-bottom: 2px;margin-top: 4px;">'+m[i].memName+'</h5>'
					output += '<h6>'+m[i].gpManager+'</h6>' 
					output += '</div>'
						output += '<div class="dropdown" >'
							output += '<button class="card-menu-btn btn-outline-secondary btn" data-bs-toggle="dropdown" aria-expanded="false"  id="GroupDropDown" style="position: absolute;left: 336px;"><i class="fas fa-ellipsis-h" aria-hidden="true"></i></button>'
								output += '<div class="dropdown-menu" aria-labelledby="GroupDropDown" >'
								output += ''+gpOption(m[i].gpManager,m[i].memId)+''
								output += '</div>'
									output += '</div>'
					output += '</div>'
					}
				}
				
			output += '</div>'
				output += '</div>'
				
				output += '<div class="card-footer" style="background-color:rgb(255 255 255);">'
				output += '<div class="mt-1">'
						output += '<h3 style="">?????? ??????</h3>'
					for(let i=0; i < m.length ; i++){
								
						if(m[i].gpManager != "?????????" && m[i].gpManager != "?????????"){
							
						output += '<div class="d-flex" style=" margin-bottom: 6px; ">'
						output += '<img class="rounded-circle" style="width: 50px;height: 50px;cursor : pointer;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+m[i].memProfile+'"  onclick="location.href=\'memberInformation?memId='+m[i].memId+'\'">'
						output += '<div style="margin-left: 8px;">'
						output += '<h5 style="margin-bottom: 2px;margin-top: 4px;">'+m[i].memName+'</h5>'
						output += '<h6>'+m[i].gpManager+'</h6>'
							output += '</div>'
								output += '<div class="dropdown" >'
							output += '<button class="card-menu-btn btn-outline-secondary btn" data-bs-toggle="dropdown" aria-expanded="false"  id="GroupDropDown" style="position: absolute;left: 336px;"><i class="fas fa-ellipsis-h" aria-hidden="true"></i></button>'
								output += '<div class="dropdown-menu" aria-labelledby="GroupDropDown" >'
								output += ''+gpOption(m[i].gpManager,m[i].memId)+''
								output += '</div>'
									output += '</div>'
									
							output += '</div>'		
						}
					}
				output += '</div>'
				output += '</div>'
				
			 
    output += '</div>'
    output += '</div>'
			contentBox3.innerHTML = output;
	
	
}

function gpOption(K,memId) {
	
	
	
	let output = '';
	if(memId == ${sessionScope.loginId}){
		output += '<a class="dropdown-item" onclick="deleteModal('+memId+')">?????? ?????????</a>'
		
	}
	$.ajax({
			type:"post",
			url:"registeredMember",
			data:{"memId":${sessionScope.loginId} ,"gpNum":gpNum},
			dataType:"text",
			async:false,
			success:function(res){
				console.log("?????????")
				console.log(res)
				if(res == "member"){
					document.getElementById('boardWriteCard').style.display = "none";
					document.getElementById("RqButton").style.display = "none"; 
					document.getElementById("imgUploadBtn").style.display = "none";
					if(K == "?????????"){
						output += '<a class="dropdown-item" >?????? ???</a>'
					} else if(K == "?????????"){
						output += '<a class="dropdown-item" >?????? ?????????</a>'
					} else if(K == "?????? ??????"){
						output += '<a class="dropdown-item" >?????? ??????</a>'
					}
					
					
				} else if (res == "manager"){
					document.getElementById("imgUploadBtn").style.display = "none";
					document.getElementById("RqButton").style.display = "none";
					
					if(K == "?????????"){
						output += '<a class="dropdown-item" >?????? ???</a>'
					} else if(K == "?????????"){
						output += '<a class="dropdown-item" >?????? ?????????</a>'
					} else if(K == "?????? ??????"){
						output += '<a class="dropdown-item" onclick="exileModal('+memId+')">???????????? ????????????</a>'
					}
					
				} else if (res == "king"){	
					
					if(K == "?????????"){
						console.log("?????????")
					} else if(K == "?????????"){
						output += '<a class="dropdown-item" onclick="rankModal('+memId+')">?????? ????????? ?????????</a>'
						output += '<a class="dropdown-item" onclick="exileModal('+memId+')">???????????? ????????????</a>'
					} else if(K == "?????? ??????"){
						output += '<a class="dropdown-item" onclick="rankModal('+memId+')">????????? ?????? ??????</a>'
						output += '<a class="dropdown-item" onclick="exileModal('+memId+')">???????????? ????????????</a>'

					}

				} else {
					document.getElementById("imgUploadBtn").style.display = "none";
					document.getElementById("boardWriteCard").style.display = "none";
					if(K == "?????????"){
						output += '<a class="dropdown-item" >?????? ???</a>'
					} else if(K == "?????????"){
						output += '<a class="dropdown-item" >?????? ?????????</a>'
					} else if(K == "?????? ??????"){
						output += '<a class="dropdown-item" >?????? ??????</a>'
					}
				}
			}
		})

	console.log(output)
	
	
	return output;
	
}


function deleteModal(memId) {
	console.log("?????????")
	
	let output = '';
	 //????????? ?????? ??????
	$.ajax({
		type:"get",
		url:"delSelMember",
		data:{"memId":memId ,"gpNum":gpNum},
		dataType:"json",
		async:false,
		success:function(res){
			if(res.gpManager == "?????????"){
				output += '<img class="rounded-circle" style="width: 50px;height: 50px;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+res.memProfile+'">'
				output += '<h3>'+res.memName+'</h3>'
				output += ' ???????????? ??? ????????? '+res.gpManager+' ?????????. ????????? ?????? ???????????????????'
				output += '<input type="hidden" name="memId" value="'+memId+'">'
				output += '<input type="hidden" name="gpNum" value="'+gpNum+'">'
				output += '<input type="hidden" name="gpManager" value="'+res.gpManager+'">'
				$('#deleteMember').html(output);
			} else {
				output += '<img class="rounded-circle" style="width: 50px;height: 50px;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+res.memProfile+'">'
				output += '<h3>'+res.memName+'</h3>'
				output += ' ???????????? ??? ????????? '+res.gpManager+' ?????????. ????????? ?????? ???????????????????'
				output += '<input type="hidden" name="memId" value="'+memId+'">'
				output += '<input type="hidden" name="gpNum" value="'+gpNum+'">'
				output += '<input type="hidden" name="gpManager" value="'+res.gpManager+'">'
				$('#deleteMember').html(output);
			}
		
				
			
		}
	})		
	$('#deleteModalCenter').modal("show");
	
}


function exileModal(memId){
	let output = '';
	$.ajax({
		type:"get",
		url:"gpSelMember",
		data:{"memId":memId ,"gpNum":gpNum},
		dataType:"json",
		async:false,
		success:function(res){
			output += '<img class="rounded-circle" style="width: 50px;height: 50px;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+res.memProfile+'">'
			output += '<h3>'+res.memName+'</h3>'
			output += '????????? '+res.memName+' ???????????? ?????????????????????????'
			output += '<input type="hidden" name="memId" value="'+memId+'">'
			output += '<input type="hidden" name="gpNum" value="'+gpNum+'">'
			output += '<input type="hidden" name="gpManager" value="'+res.gpManager+'">'
			$('#exileMember').html(output);
		}
	
	})
	$('#exileModalCenter').modal("show");
}

function rankModal(memId){
	let output = '';
	$.ajax({
		type:"get",
		url:"gpSelMember",
		data:{"memId":memId ,"gpNum":gpNum},
		dataType:"json",
		async:false,
		success:function(res){
			if(res.gpManager == "?????????"){
				output += '<img class="rounded-circle" style="width: 50px;height: 50px;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+res.memProfile+'">'
				output += '<h3>'+res.memName+'</h3>'
				output += ''+res.memName+' ????????? ????????? ????????? ???????????????. ?????? ????????? ????????? ?????? ????????? ?????? ???????????????????'
				output += '<input type="hidden" name="memId" value="'+memId+'">'
				output += '<input type="hidden" name="gpNum" value="'+gpNum+'">'
				output += '<input type="hidden" name="gpManager" value="'+res.gpManager+'">'
				$('#rankMember').html(output);
				
			} else if(res.gpManager =="?????? ??????"){
				
				output += '<img class="rounded-circle" style="width: 50px;height: 50px;" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+res.memProfile+'">'
				output += '<h3>'+res.memName+'</h3>'
				output += ''+res.memName+' ???????????? ????????? ????????? ???????????????. ?????? ????????? ????????? ?????? ????????? ?????? ???????????????????'
				output += '<input type="hidden" name="memId" value="'+memId+'">'
				output += '<input type="hidden" name="gpNum" value="'+gpNum+'">'
				output += '<input type="hidden" name="gpManager" value="'+res.gpManager+'">'
				$('#rankMember').html(output);
			}
		}
	
	})
	$('#rankModalCenter').modal("show");
}



function GroupeTopCard(gp) {
	
	console.log(${sessionScope.loginId});
	console.log("??????????????????")
	console.log(gp)
	let gpInfo = document.getElementById('gpInfo');
	
	let output = "";
	output += '<img class="card-img-bottom" src="${pageContext.request.contextPath }/resources/assets/img/groupfile/'+gp.gpImg+'" >'
	output += '<button id="imgUploadBtn" class="btn btn-outline-primary" type="button" onclick="infile.click()">??????</button>'
	output += '<input type="file" id="infile" onchange="updateGpImg()">'
	output += '<input type="hidden" value="${gpNum}" id="groupNum">'
	output += '<div class="one">'
	output += '<div class="left"><h1><strong id="gpName">'+gp.gpName+'</strong></h1>'
	if(gp.gpDisclosure == "??????"){
		output += '<i class="fas fa-globe"></i>'
	} else if (gp.gpDisclosure == "?????????"){
		output += '<i class="fas fa-user-lock"></i>'
	}
	output += '<span style="margin-left:5px;">'+gp.gpDisclosure+' ?????? ?? ?????? '+gp.gpMemberCount+'???</span>'
	output += '</div>'
	output += '<div class="right">'
	if(gp.gpMember == ${sessionScope.loginId}){
		output += '<button class="btn btn-primary"  onclick="openModal(this)">?????? ??????</button>'
	} else {	
		output += '<button class="btn btn-primary" id="RqButton" onclick="groupRequest('+${sessionScope.loginId}+' , '+gp.gpNum+',this)">'+Rq(${sessionScope.loginId},gp.gpNum)+'</button>'
		
	}
	output += '</div>'
	output += '</div>'
	
	gpInfo.innerHTML = output;



}





function GroupInfoCard(d){
	
	//let cardTemplate = document.createElement("div");
	let contentBox = document.getElementById('contentBox');
	output = "";
	output += '<div class="card mb-3 contentCard divFocusBorder-0"  style="width: 550px;margin: 15px;">'
		output += 	'<div class="card-header d-flex justify-content-between">'
			output += 		'<div class="d-flex">'
				output += 		'<div class="px-3 pt-1">'
				output += 			'<h5 class="card-title" style="margin-bottom:10px;margin-top:10px;">?????? ??????</h5>'
			output +=		'</div>'
			output +=      '</div>'
			output += 	'</div>'
			output += '<div ><div class="card-body" >'	
			if(d.gpDisclosure == "??????"){
			output += '<div class="icons" style="display:flex">'
			output += '<i class="fas fa-globe fa-lg"></i>'
			output += '<h5 class="card-text">'+d.gpDisclosure+' ??????</h5>'
			output += '</div>'
			output += '<h6 class="card-text" style=" margin-left: 30px;">????????? ?????? ????????? ???????????? ??? ??? ????????????</h6>'
			output += '<div class="icons" style="display:flex">'
			output += '<i class="fas fa-eye fa-lg"></i>'	
			output += '<h5 class="card-text">?????? ??????</h5>'
				output += '</div>'
			output += '<h6 class="card-text" style=" margin-left: 30px;">????????? ??? ????????? ?????? ??? ????????????.</h6>'
				
			} else if(d.gpDisclosure == "?????????"){
			output += '<div class="icons" style="display:flex">'
			output += '<i class="fas fa-user-lock fa-lg"></i>'
			output += '<h5 class="card-text">'+d.gpDisclosure+' ??????</h5>'
			output += '</div>'
			output += '<h6 class="card-text" style=" margin-left: 30px;">????????? ?????? ????????? ???????????? ??? ??? ????????????.</h6>'	
				output += '<div class="icons" style="display:flex">'
					output += '<i class="fas fa-eye fa-lg"></i>'
			output += '<h5 class="card-text">?????? ?????????</h5>'
				output += '</div>'
			output += '<h6 class="card-text" style=" margin-left: 30px;">??? ????????? ????????? ??? ????????????.</h6>'
			}
			output += '<div class="icons" style="display:flex">'
				output += '<i class="fas fa-clock fa-lg"></i>'
			output += '<h5 class="card-text text">??????</h5>'
				output += '</div>'
			output += '<h6 class="card-text text" style=" margin-left: 30px;">'+d.gpDate+'??? ????????? ?????????????????????</h6>'
			output += '</div>'
			output += '</div>'
			
    output += '</div>';

    
	//cardTemplate.innerHTML = output;
	//return cardTemplate.firstChild;
    contentBox.innerHTML = output;
}



	$('.close').click(function() {
		$('#exampleModalCenter2').modal("hide"); //?????? ?????? 
		$('#shareModalCenter').modal("hide"); //?????? ?????? ??????
	});
	
	$('#boardWriteBtn').click(function(e) {
		var text = $("#text").val();
		e.preventDefault();
		$('#exampleModalCenter2').modal("show"); //?????? ??????
		
			if(text == "" || text == null){
				$("#writeBtn").attr('disabled', 'disabled');
		}
		
	});



	$("#text").on("change keyup paste",function() {
		var text = $("#text").val();
		if(text == "" ||text ==null){
			console.log("????????????");
			$("#writeBtn").attr('disabled', 'disabled');
			$("#writeBtn").focus(); 
			
		} else {
			$("#writeBtn").removeAttr('disabled');
		}
	
	});
	
$("#shareText").on("change keyup paste",function() {
		
		var text = $("#shareText").val();
		if(text == "" ||text ==null){
			console.log("????????????");
			$("#shareText").focus(); 
			$("#shareWriteBtn").attr('disabled', 'disabled');
			
		} else {
			$("#shareWriteBtn").removeAttr('disabled');
		}
	
	});
	
	
function getReply(boardNum){
	
	// ?????? ?????? ??????????????? ?????? div ?????? ??????
	var replyArea = document.createElement("div");
	
	// ??????div??? ?????? ??????
	replyArea.classList.add("collapse");
	replyArea.classList.add("replyArea");
	replyArea.setAttribute("data-bs-toggle","collapse");
	replyArea.setAttribute("id","replyArea"+boardNum);
	
	// ????????? ????????? ul ?????? ?????? 
	var newUl = document.createElement("ul");
	
	newUl = getReplyAjax(boardNum,newUl);
	
	// ??????div????????? ul?????? ?????????
	replyArea.appendChild(newUl);
	
	return replyArea;
} 

function getReplyAjax(boardNum,newUl){
	// ????????? ????????? ?????? ?????? ??????
	$.ajax({
		type : "post",
		url : "getReply",
		data : { "boardNum" : boardNum },
		dataType : "json",
		success : res=>{
			
			// ul????????? ???????????????(inputArea) ?????? ?????? 
			newUl.innerHTML = inputReply(boardNum);
			
			// ul????????? ??????????????? ?????? ????????? ??????
			newUl.setAttribute('class','list-group');
			newUl.setAttribute('class','list-group-flush');

			// if : ????????? ???????????? ??????
			if(res==""){
				console.log("????????? ?????? ??????!@");
				
			// if : ????????? ?????? ?????? ??????
			}else{
				// ????????? ?????? ?????? ???????????? ul????????? ????????????
				$.each(res, function(i){
					newUl = replyRender(res[i],newUl);
				});
			}
		}
	})
	return newUl;
}

function replyRender(res,newUl){
	
	// HTML?????? ????????? ?????? ??????
	var output = "";
	
	// level(?????? ??????)??? ?????? margin ??? ??????
	var marginForLevel = 0;
	
	// ?????? ?????? ?????? (?????? ?????? : 0) (????????? : 50) (???????????? : 100) ...
	if(res.reLevel != 0){
		for(var i=0;i<res.reLevel;i++){
			marginForLevel += 50;
		}
	}
	
	// ?????? ??????
	output += "<li class='list-group-item'>"
		output += "<div class='d-flex' style='margin : 0.5rem 0 0.5rem "+marginForLevel+"px'>"
			output += '<img class="rounded-circle mx-3" src="${pageContext.request.contextPath }/resources/assets/img/profile/'+res.memProfile+'\">'
			output += '<div class="w-100 d-flex flex-column">'
				output += '<div class="card bg-light" onclick="inputReReply(this,'+res.reBoNum+','+res.reGroup+','+res.reLevel+','+res.reSeq+')">'
					output += '<h6 >'+res.memName+'</h6>'
					output += '<h6 class="text-muted small">' + pastTime(res.reDate) + '</h6>'
					output += '<p>'+res.reContent+'</p>'
				output += '</div>'
			output += '</div>'
		output += "</div>"
	output += "</li>";
	
	// ????????? HTML ?????? DOM ????????? ????????????
	newUl.innerHTML += output;
	
	// DOM ?????? ??????
	return newUl;
}

function inputReply(boardNum){
	
	var output = "";
	
	output += "<li class='list-group-item'>";
	/* 	output += "<form action='replyWrite' method='post'>" */
			output += "<div class='d-flex reply-input'>"
				output += '<img class="rounded-circle" src="${pageContext.request.contextPath}/resources/assets/img/profile/${sessionScope.loginProfile}">'
				output += "<div class='inputArea'>"
					output += '<input type="text" class="form-control" name="reContent" placeholder="????????? ???????????????.." required>'
					output += '<input type="hidden" name="reWriter" value="${sessionScope.loginId}">'
					output += '<input type="hidden" name="reBoNum" value="'+ boardNum +'">';
				output += "</div>"
				output += "<button class='btn btn-sm btn-primary' onclick='replyWrite(this)'>"
					output += "??????"
				output += "</button>"
			output += "</div>"
	/* 	output += "</form>" */
	output += "</li>";
	
	return output;
}

function replyWrite(obj){
	
	let inputArea = $(obj).prev().children();
	console.log(inputArea);
	let reContent = $(inputArea[0]).val();
	let reWriter = $(inputArea[1]).val();
	let reBoNum = $(inputArea[2]).val();
	let reGroup = $(inputArea[3]).val();
	let reLevel = $(inputArea[4]).val();
	let reSeq = $(inputArea[5]).val();
	
	$.ajax({
		type : "post",
		url : "replyWrite",
		data : {"reContent" : reContent, "reWriter" : reWriter, "reBoNum" : reBoNum, "reGroup" : reGroup, "reLevel" : reLevel, "reSeq" : reSeq},
		dataType : "text",
		success : res=>{
			
			console.log("insert ?????? : "+res);
			
			let oldUl = $(obj).parents("ul");						//?????? ul??????
			let replyArea = oldUl.parent();							//????????? ??????
			console.log(replyArea);
			
			var newUl = document.createElement("ul");				//????????? ul??????
			newUl = getReplyAjax(reBoNum,newUl); 					//?????? ?????? ????????????
			
			$(oldUl).remove();
			$(replyArea).append(newUl);		
		}
	}) 
}

function inputReReply(obj,boardNum,reGroup,reLevel,reSeq){
	
	if($(obj).parents('li').next().hasClass('rereply')){
		closeReplyInput(obj);
	}else{
	
	var output = "";
	
	/* output += "<div class='card border-primary mt-3'>"; */
	output += "<li class='list-group-item rereply'>";
	/* 	output += "<form action='replyWrite' method='post'>" */
			output += "<div class='d-flex reply-input'>"
				output += '<img class="rounded-circle" src="${pageContext.request.contextPath}/resources/assets/img/profile/${sessionScope.loginProfile}">'
				output += "<div class='inputArea'>"
					output += '<input type="text" class="form-control" name="reContent" placeholder="????????? ???????????????..">'
					output += '<input type="hidden" name="reWriter" value="${sessionScope.loginId}">'
					output += '<input type="hidden" name="reBoNum" value="'+ boardNum +'">';
					if(reGroup != null && reLevel != null){
						output += '<input type="hidden" name="reGroup" value="'+ reGroup +'">';
						output += '<input type="hidden" name="reLevel" value="'+ reLevel +'">';
						output += '<input type="hidden" name="reSeq" value="'+ reSeq +'">';
					}
				output += "</div>"
					output += "<button class='btn btn-sm btn-primary' onclick='replyWrite(this)'>"
						output += "??????"
					output += "</button>"
			output += "</div>"
	/* 	output += "</form>" */
	output += "</li>";
		
	$(obj).parents('li').after(output);
	}
}

function closeReplyInput(obj){
	console.log($(obj).parents('li').next());
	$(obj).parents('li').next().remove();
}	
	


/* ?????? ?????? ?????? */
$("#messengerBtn").mouseenter(function() {
	console.log("????????? ????????? ??????");
	$("#messengerBtn").click(function() {
		console.log("????????? ??????");
		/* sideListSection.empty(); */
		
	})
})
$("#messengerBtn").mouseleave(function() {
	console.log("????????? ????????? ??????");
	
})

$("#alarmBtn").click(function() {
	console.log("?????? ??????");
})

$("#followListBtn").click(function() {
	console.log("?????????????????? ??????");
})

$(document).ready(function(){
	
})

function updateGpImg(){
	console.log("???????????? ?????? ?????????");
	
			
	console.log($('input[type=file]')[0].files[0])
	
	console.log("?????????")
	console.log($('#infile')[0].files[0])
	var formData = new FormData();
	formData.append('file', $('#infile')[0].files[0]);
	formData.append('gpnum',$("#groupNum").val());
	
	$.ajax({
		type: "post",
		enctype: "multipart/form-data",
		url: "updateGpImg",
		data: formData,
		async:false,
		processData: false,
		contentType: false,
		success:res=>{
			console.log(res);
			let output= '';
			output +='<div class="spinner-border mx-auto my-5" role="status">'
			output +=	'<span class="sr-only">Loading...</span>'
			output += '</div>'
			$("#gpInfo").html(output);
			setTimeout(function(){ location.reload(); }, 5000);
			 
			
		}
		
	});

}


/* ?????? (tab) */
const tabs1 = document.querySelectorAll("[data-tab-target]")
const tabcon = document.querySelectorAll("[data-tab-content]")
tabs1.forEach((tab)=>{
	tab.addEventListener("click",()=>{
		const target = document.querySelector(tab.dataset.tabTarget);
		tabcon.forEach((tabc_all) => {
			tabc_all.classList.remove("active")
		})
		target.classList.add("active")
	})
})

	
	
//?????? ?????? ????????? ??????????????? ????????? ????????? ????????? ???????????? ??????
function groupRequest(memId,gpNum,e){
	console.log("eee : "+e)
	console.log(memId,gpNum);
	
	$.ajax({
		type:"get",
		url:"getGroupRequest",
		data:{
			"memId":memId,
			"gpNum":gpNum
			},
		dataType:"text",
		
		success:res=>{
			console.log(res);
			if(res == ""){
				console.log("????????????")
			

			} else {
				console.log("??????")
				sendNotification("REQUEST",gpNum,gpNum);
			}
			
		} ,error : function(){
			  alert("??????");
		  }
	});
	 
	 $(e).find('span').toggleClass("textRq");
	 $(e).find('span').toggleClass("textGp");
	
}


//?????? ????????? ???????????? ??????????????? ????????? ?????? ????????? ?????? ?????? ??????
function Rq(memId,gpNum){
	
	let output = '';
	$.ajax({
		type:"get",
		url:"selGroupRequest",
		data:{
			"memId":memId,
			"gpNum":gpNum
			},
			async:false,
		dataType:"text",
		success:res=>{
			console.log(res);
			if(res == ""){
				output = '<span class="textGp"></span>';
			} else {
				output = '<span class="textRq"></span>';
			}
			
		} ,error : function(){
			  alert("??????");
		  }
	});
	console.log(output);
	
	return output;
}	



 	function joinGpMem(memId,gpNum) {
		$.ajax({
			type:"post",
			url:"joinGpMem",
			data:{"memId":memId ,"gpNum":gpNum},
			dataType:"text",
			success:function(res){
				if(res =="OK"){
					location.reload();
					sendNotification("APPLY",memId,gpNum);
				}
			}
		})
	}
	function cancelRqMem(memId,gpNum){
		console.log("??????")
			$.ajax({
			type:"post",
			url:"cancelRqMem",
			data:{"memId":memId ,"gpNum":gpNum},
			dataType:"text",
			success:function(res){
				if(res =="OK"){
					
					location.reload();
				
				}
			}
		})
	}	 
	
	
	
	
	/* ????????? ?????? ??????  */
	  function checkLike(memId,boNum,obj){
		  console.log("??????");
		  console.log("memId : " + memId + "  "+ "boNum : " + boNum);
		  console.log(obj)
		  $.ajax({
			  type : "get",
			  url : "boardLike",
			  data : {
				  "memId" : memId,
				  "boNum" : boNum
			  },
			  datatype : "json",
			  async : false,
			  success : function(result){
				  $("#likeCount").text(result);
			  },
			  error : function(){
				  alert("??????");
			  }
		  });
		 $(obj).find('i').toggleClass("fa");
		 $(obj).find('i').toggleClass("far");
	}

	function isLike(memId,boNum){
		//console.log("???????????? ??????!");
		//console.log(memId +"   "+ boNum);
		let output = "";

		$.ajax({
			type : "get",
			url : "isLike",
			data : {
				"memId" : memId,
				"boNum" : boNum
			},
			dataType : "text",
			async:false,
		   success : function(result){
			  
			   if(result == ''){
				   output = '<i class="far fa-heart"></i>';
			   }else{
				   output = '<i class="fa fa-heart"></i>'; 
			   }
		   },
		});
		return output;
	}

	function likeCount(boNum){
		console.log("?????? ??????");

		let output = "";
		$.ajax({
			 type : "get",
			  url : "likeCount",
			  data : {
				  "boNum" : boNum
			  },
			  async : false,
			  success : function(result){
				  if(result == 0){
					  output= '';
				  } else{
				 output = result;
				  }
			  },
			  error : function(){
				  alert("??????");
			  }
		});
		return output;
	}


	//?????? ????????? ??????
	function handleFileSelect(evt) {
		var files = evt.target.files;

		document.getElementById('list').innerHTML = ""
		
		// ??????????????? ?????? ??????????????? ????????? ?????????
		for (var i = 0, f; f = files[i]; i++) {
			
			console.log(f.type)

		// ?????? ????????? ????????? ??????
		if (!f.type.match('image.*')&&!f.type.match('video.*')) {
			continue;
		   } 

		var reader = new FileReader();

		// ???????????? ????????? ?????? ??????
		reader.onload = (function(theFile) {
		return function(e) {
			          // ????????? ?????????
			          console.log(e);
			          
			          var span = document.createElement('div');
			          span.classList.add("d-inline-block")
			          if(theFile.type.match('image.*'))
			          	span.innerHTML = 
			          	[
			            	'<img style="height: 75px; border: 1px solid #000; margin: 5px" src="', 
			            	e.target.result,
			            	'" title="', escape(theFile.name), 
			            	'"/>'
			          	].join('');
			          else if(theFile.type.match('video.*'))
			        	span.innerHTML = 
					    [
					         '<video style="height: 75px; border: 1px solid #000; margin: 5px" src="', 
					         e.target.result,
					         '" title="', escape(theFile.name), 
					         '"/>'
					    ].join('');
			          
			          document.getElementById('list').insertBefore(span, null);
			        };
			      })(f);

			      // ?????????????????? ????????? URL ??? ??????
			      reader.readAsDataURL(f);
			    }
			  }

			  document.getElementById('files').addEventListener('change', handleFileSelect, false);
	
			  
			  
			  
			  /* ?????? ????????? */
			  function multiCard(boNum){
			  	let grCard = "";
			  	
			  	console.log("multi load")
			  	
			  	$.ajax({
			  		type:"get",
			  		url:"getGroupByBoGroupNum?boGroupNum=" + boNum,
			  		dataType:"json",
			  		async : false,
			  		success: res=>{
			  			res.forEach(r=>{
			  				if(r.boType == "PICTURE")
			  					grCard += '<img class="card-img-bottom" src="${pageContext.request.contextPath }/resources/assets/img/boardFile/'+r.boFile+'">'
			  				else if(r.boType == "VIDEO")
			  					grCard += '<video style="background-color:black;" width="100%" height="350px" src="${pageContext.request.contextPath }/resources/assets/video/'+r.boFile+'" controls></video>'
			  			})
			  		}
			  	})
			  	
			  	return grCard;
			  }
	
	
			  /* ?????? ?????? ?????? */
			  function shareBoard(boNum) {
			  	
			  	$.ajax({
			  		type: "get",
			  		url: "checkShareDuplicate?boNum=" + boNum + "&loginId=" + ${sessionScope.loginId},
			  		async : false,
			  		success: res=>{
			  			if(res == "valid"){
			  				$("#shareModalCenter").modal("show");
			  				var text = $("#shareText").val();
			  				if(text == "" || text == null){
			  					$("#shareWriteBtn").attr('disabled', 'disabled');
			  				}
			  				$("#boFile").val(boNum);
			  			}else if(res == "invalid"){
			  				alert("?????? ????????? ??????????????????");
			  			}
			  		}
			  	})
			  }	
	
	
	
	
</script>
</html>