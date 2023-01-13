<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Product Details</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<style type="text/css">
.title {
	font-size: 20px;
	color: #FF6600;
	font-style: italic;
}
</style>
</head>
<body>
<table width="100%" border="0" align="center">
  <tr>
    <td width="616"><img src="images/Logo1.png" align="absmiddle" /></td>
    <td width="734" align="right"><img src="images/mycar1.jpg"align="absmiddle"/> <a href="controller?action=cart">&nbsp;Basket</a> | <a href="controller?action=list">Product List</a> | <a href="controller?action=logout">Logout</a></td>
  </tr>
</table>
<hr width="100%" />
<div class="text3" align="center">${goods.description}</div>
<table width="100%" border="0" align="center">
  <tr>
    <td width="40%" align="right"><div><img src="goods_images/${goods.image}" width="360px" height="360px" /></div>
      <br></td>
    <td><div align="center" class="text4">Price：<span class="title">&#8364;${goods.price}</span></div>
      <br>
      <table width="80%" height="200" border="0">
        <tbody>
          <tr>
            <td  width="25%" class="text5" >Computer Brand:</td>
            <td width="25%" class="text6" >${goods.brand}</td>
            <td width="25%" class="text5" >CPU Brand:</td>
            <td width="25%" class="text6" >${goods.cpuBrand}</td>
          </tr>
          <tr>
            <td class="text5" >RAM:</td>
            <td class="text6" >${goods.memoryCapacity}</td>
            <td class="text5" >CPU model:</td>
            <td class="text6" >${goods.cpuType}</td>
          </tr>
          <tr>
            <td class="text5" >Hard disk capacity:</td>
            <td class="text6" >${goods.hdCapacity}</td>
            <td class="text5" >Graphics card:</td>
            <td class="text6" >${goods.cardModel}</td>
          </tr>
          <tr>
            <td class="text5" >Display size:</td>
            <td class="text6" >${goods.displaysize}</td>
            <td class="text5" >&nbsp;</td>
            <td class="text6" >&nbsp;</td>
          </tr>
        </tbody>
      </table>
      <br>
      <br>
      <div><a href="controller?action=add&pagename=detail&id=${goods.id}&name=${goods.name}&price=${goods.price}"><img src="images/addToBasket.png"/></a></div>
  </tr>
</table>
<div class="footer">
  <hr  width="100%" />
  @ RES Online 2022 @ </div>
</body>
</html>
