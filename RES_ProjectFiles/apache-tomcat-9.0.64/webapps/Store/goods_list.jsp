<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Product List</title>
</head>
<link rel="stylesheet" type="text/css" href="css/public.css">
<style type="text/css">
	table {
		border-collapse: collapse;
	}

	/*Column 1 of the product list*/
	.col1 {
		padding-top: 5px;
		border-top: 1px dashed #666666;
		text-indent: 40px
	}

	/*Column 2 of the product list*/
	.col2 {
		padding-top: 5px;
		border-top: 1px dashed #666666;
		text-align: right;
	}

	/*Column 3 of the product list*/
	.col3 {
		padding-top: 5px;
		border-top: 1px dashed #666666;
		text-align: center;
	}
</style>
<body>
<table width="100%" border="0" align="center">
  <tr>
    <td width="616"><img src="images/Logo1.png" align="absmiddle" /></td>
    <td width="734" align="right"><img src="images/mycar1.jpg" align="absmiddle" /> <a href="controller?action=cart">&nbsp;Basket</a> | <a href="controller?action=list">Product List</a> | <a href="controller?action=logout">Logout</a></td>
  </tr>
</table>
<hr width="100%" />
<div class="text3" align="center">Please select your favourite item from the product list</div>
<br>
<table width="100%" border="0" align="center">
  <tr bgcolor="#b4c8ed">
    <th>Product name</th>
    <th width="5%" >Product prices</th>
    <th width="15%" >Add to basket</th>
  </tr>
  <c:forEach var="goods" items="${goodsList}" varStatus="status">
    <tr
            <c:if test="${status.index % 2 == 0}">
              bgcolor='#ffffff'
            </c:if>
            <c:if test="${status.index % 2 != 0}">
              bgcolor='#edf8ff'
            </c:if>
    >
      <td class="col1"><a href="controller?action=detail&id=${goods.id}">${goods.description}</a></td>
      <td class="col2">&#8364;${goods.price}</td>
      <td class="col3"><a href="controller?action=add&pagename=list&id=${goods.id}&name=${goods.name}&price=${goods.price}">Add to basket</a></td>
    </tr>
  </c:forEach>

</table>
<hr/>
<div align="center">
  <ul class="pagination">

    <li><a href="controller?action=paging&page=prev"><<</a></li>
    <c:forEach var="page" begin="1" end="${totalPageNumber}">
      <li><a
              <c:if test="${page == currentPage}">
                class="active"
              </c:if>
              href="controller?action=paging&page=${page}">${page}</a></li>
    </c:forEach>
    <li><a href="controller?action=paging&page=next">>></a></li>
  </ul>
</div>
<div class="footer">
  <hr  width="100%" />
  @ RES Online 2022 @ </div>
</body>
</html>
