<%--
  Created by IntelliJ IDEA.
  User: maso
  Date: 16/10/16
  Time: 上午11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<HEAD>
    <TITLE> New Document </TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <SCRIPT LANGUAGE="JavaScript" src="static/js/jquery-1.5.1.min.js"></script>
    <SCRIPT LANGUAGE="JavaScript">
        <!--
        $("document").ready(function () {

            $("#btn1").click(function () {

                $("[name='checkbox']").attr("checked", 'true');//全选

            })
            $("#btn2").click(function () {

                $("[name='checkbox']").removeAttr("checked");//取消全选

            })
            $("#btn3").click(function () {

                $("[name='checkbox']:even").attr("checked", 'true');//选中所有奇数

            })
            $("#btn4").click(function () { //反选

                $("[name='checkbox']").each(function () {


                    if ($(this).attr("checked")) {
                        $(this).removeAttr("checked");

                    }
                    else {
                        $(this).attr("checked", 'true');

                    }

                })

            })
            $("#btn5").click(function () {
                var str = "";
                $("[name='checkbox'][checked]").each(function () {
                    str += $(this).val() + ""
                    r
                    "n";
                    //alert($(this).val());
                })
                alert(str);
            })
        })
        //-->
    </SCRIPT>

</HEAD>
<BODY>
<form name="form1" method="post" action="">
    <input type="button" id="btn1" value="全选">
    <input type="button" id="btn2" value="取消全选">
    <input type="button" id="btn3" value="选中所有奇数">
    <input type="button" id="btn4" value="反选">
    <input type="button" id="btn5" value="获得选中的所有值">
    <br>
    <input type="checkbox" name="checkbox" value="checkbox1">
    checkbox1
    <input type="checkbox" name="checkbox" value="checkbox2">
    checkbox2
    <input type="checkbox" name="checkbox" value="checkbox3">
    checkbox3
    <input type="checkbox" name="checkbox" value="checkbox4">
    checkbox4
    <input type="checkbox" name="checkbox" value="checkbox5">
    checkbox5
    <input type="checkbox" name="checkbox" value="checkbox6">
    checkbox6
    <input type="checkbox" name="checkbox" value="checkbox7">
    checkbox7
    <input type="checkbox" name="checkbox" value="checkbox8">
    checkbox8
</form>


</body>
</html>
