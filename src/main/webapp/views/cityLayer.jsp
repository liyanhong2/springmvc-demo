﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>仿51job弹出层城市选择代码 - 站长素材</title>
    <style type="text/css">


        a:hover {
            background-color: #ffa22e;
            color: #ffffff;
            text-decoration: none;;
        }

        .citychk {
            background-color: #ffa22e;
            color: #ffffff;
        }

        /* CSS Document */
        body,h1,h2,h3,h4,h5,h6,p,ul,ol,li,form,img,dl,dt,dd,table,th,td,blockquote,fieldset,div,strong,label,em{margin:0;padding:0;border:0;}
        ul,ol,li{list-style:none;}
        input,button{margin:0;font-size:12px;vertical-align:middle;}
        body{font-size:12px;font-family:Arial, Helvetica, sans-serif;color:#333;margin:0 auto;}
        table{border-collapse:collapse;border-spacing:0;}
        img{display:block;}

        a{color:#333;text-decoration:none;}
        a:hover{color:#c00;text-decoration:underline;}

        .mask{width:100%;height:500px;background:#000;opacity:0.6;top:0;filter:alpha(opacity=60);left:0;display:none;position:absolute;z-index:10;}
        .acity{display:block;padding-left:3px;background:url(static/images/selean.gif) no-repeat;width:83px;height:30px;text-align:center;line-height:28px;font-weight:normal;cursor:pointer;display:block;white-space:nowrap;text-overflow:ellipsis;-o-text-overflow:ellipsis;overflow: hidden;margin:20px auto;}
        #wrap{width:960px;height:500px;margin:0 auto;position:relative;z-index:11;}
        .city{width:700px;height:320px;z-index:11;display:none;z-index:11;background:#fff;border-bottom:4px solid #ff7400;position:absolute;left:180px;top:50px;}
        .top01-city{height:27px;line-height:22px;width:100%;background:url(static/images/bg01.gif) repeat-x left bottom; float:left;text-align:right;border-bottom:1px solid #ccc;}
        .top01-city b{display:block;float:left;padding-left:27px;background:url(static/images/icon01.gif) no-repeat 5px 4px;color:#fff;}
        .top01-city .ok{float:right;cursor:pointer;font-style:normal;padding-right:10px;color:#fff;}

        .mid01-city{padding:2% 1%;width:98%;background:url(static/images/bg02.gif) repeat-x left top;float:left;}
        .cityshow{width:100%;float:left;background:url(static/images/line.gif) repeat-x left bottom; padding-bottom:6px;margin-bottom:10px;}
        .cityshow i{font-style:normal;font-weight:bold;color:#ff7400;float:left;padding-right:5px;}
        .cityshow ul{float:left;}
        .cityshow ul li{float:left;padding-right:14px;}
        .cityshow ul li .check{margin-right:5px;}
        .cityul{width:100%;float:left;}
        .cityul li{width:320px;float:left;padding-bottom:7px;height:16px;line-height:16px;}
        .cityul li b{padding:0 6px;cursor:pointer;}

        .cityshow1{float:left;}
        .cityshow1 i{font-style:normal;font-weight:bold;color:#ff7400;float:left;padding-right:5px;}

    </style>
    <%--<link rel="stylesheet" href="static/css/style.css" type="text/css"/>--%>

    <script type="text/javascript" src="static/js/jquery-1.5.1.min.js"></script>

</head>

<BODY>
<div class="mask"></div>
<b class="acity">请选择城市</b>
<div id="wrap">

    <div class="city">
        <div class="top01-city">
            <em class="ok">确定</em><b>请选择工作地点（最多五项）</b>
        </div>
        <div class="mid01-city">
            <div class="cityshow" id="show">
                <i>已选地点:</i>
                <ul></ul>
            </div>

            <div class="cityshow1" id="show1">


                <table>
                    <tr>
                        <td colspan="2"><i>主要城市:</i></td>
                    </tr>
                    <tr>
                        <td>
                            <ul class="cityul">
                                <li><strong>A</strong>
                                    <a><b>鞍山</b></a>
                                </li>
                                <li><strong>B</strong>
                                    <a><b>北京</b></a>
                                    <a><b>包头</b></a>
                                    <a><b>保定</b></a></li>
                                <li><strong>C</strong>
                                    <a><b>长春</b></a>
                                    <a><b>长沙</b></a>
                                    <a><b>成都</b></a>
                                    <a><b>重庆</b></a>
                                    <a><b>常州</b></a>
                                    <a><b>常德</b></a>
                                    <a><b>常熟</b></a>
                                </li>
                                <li><strong>D</strong>
                                    <a><b>大连</b></a>
                                    <a><a><b>东莞</b></a>
                                        <a><a><b>丹东</b></a>
                                            <a><a><b>大庆</b></a>
                                </li>
                                <li><strong>E</strong>
                                    <a><b>鄂尔多斯</b></a>
                                </li>
                                <li><strong>F</strong>
                                    <a><b>福州</b></a>
                                    <a><a><b>佛山</b></a>
                                        <a><a><b>抚顺</b></a>

                                </li>
                                <li><strong>G</strong>
                                    <a><b>广州</b></a>
                                    <a><a><b>贵阳</b></a>
                                        <a><a><b>赣州</b></a>

                                </li>
                                <li><strong>H</strong>
                                    <a><b>哈尔滨</b></a>
                                    <a><a><b>杭州</b></a>
                                        <a><a><b>合肥</b></a>
                                            <a><b>海口</b></a>
                                            <a><b>呼和浩特</b></a>
                                </li>

                                <li><strong>J</strong>
                                    <a><b>济南</b></a>
                                    <a><a><b>嘉兴</b></a>
                                        <a><a><b>金华</b></a>
                                            <a><b>吉林</b></a>
                                            <a><b>江门</b></a>
                                            <a><b>荆州</b></a>
                                </li>
                                <li><strong>K</strong>
                                    <a><b>昆明</b></a>
                                    <a><a><b>昆山</b></a>

                                </li>
                            </ul>
                        </td>
                        <td>
                            <ul class="cityul">
                                <li><strong>L</strong>
                                    <a><b>兰州</b></a>
                                    <a><b>廊坊</b></a>
                                    <a><b>临沂</b></a>
                                    <a><b>洛阳</b></a>
                                    <a><b>连云港</b></a>
                                    <a><b>柳州</b></a>


                                </li>
                                <li><strong>M</strong>
                                    <a><b>绵阳</b></a>
                                </li>
                                <li><strong>N</strong>
                                    <a><b>南京</b></a>
                                    <a><b>宁波</b></a>
                                    <a><b>南昌</b></a>
                                    <a><b>南通</b></a>
                                    <a><b>南宁</b></a>

                                </li>
                                <li><strong>Q</strong>
                                    <a><b>青岛</b></a>
                                    <a><a><b>泉州</b></a>
                                        <a><a><b>秦皇岛</b></a>
                                            <a><a><b>清远</b></a>
                                </li>
                                <li><strong>S</strong>
                                    <a><b>上海</b></a>
                                    <a><b>深圳</b></a>
                                    <a><b>沈阳</b></a>
                                    <a><b>石家庄</b></a>
                                    <a><b>苏州</b></a>
                                    <a><b>三亚</b></a>
                                    <a><b>绍兴</b></a>

                                </li>
                                <li><strong>T</strong>
                                    <a><b>天津</b></a>
                                    <a><a><b>太原</b></a>
                                        <a><a><b>台州</b></a>
                                            <a><a><b>唐山</b></a>
                                                <a><a><b>泰州</b></a>
                                                    <a><a><b>铁岭</b></a>

                                </li>
                                <li><strong>W</strong>
                                    <a><b>武汉</b></a>
                                    <a><b>无锡</b></a>
                                    <a><b>温州</b></a>
                                    <a><b>乌鲁木齐</b></a>
                                    <a><b>芜湖</b></a>
                                    <a><b>潍坊</b></a>
                                    <a><b>威海</b></a>

                                </li>
                                <li><strong>X</strong>
                                    <a><b>西安</b></a>
                                    <a><b>厦门</b></a>
                                    <a><b>徐州</b></a>
                                    <a><b>襄阳</b></a>
                                    <a><b>湘潭</b></a>
                                    <a><b>咸阳</b></a>
                                </li>

                                <li><strong>Y</strong>
                                    <a><b>烟台</b></a>
                                    <a><a><b>扬州</b></a>
                                        <a><a><b>宜昌</b></a>
                                            <a><b>盐城</b></a>
                                            <a><b>义乌</b></a>
                                            <a><b>营口</b></a>
                                            <a><b>银川</b></a>
                                </li>
                                <li><strong>Z</strong>
                                    <a><b>漳州</b></a>
                                    <a><b>郑州</b></a>
                                    <a><b>中山</b></a>
                                    <a><b>珠海</b></a>
                                    <a><b>镇江</b></a>
                                    <a><b>株洲</b></a>
                                    <a><b>湛江</b></a>

                                </li>
                            </ul>
                        </td>
                    </tr>

                </table>
            </div>


        </div>
    </div>
</div>

<script type="text/javascript">
    var cityId = 0;
    $(function () {
        $('.acity').click(function () {
            $('.city').show();
            $('.mask').show();
        });


        //点击的城市
        $('.cityul b').click(function () {
            var test = $(this).html();

            if ($(this).attr("city") == undefined) {
                $(this).attr("city", window.cityId++);
            }
            var city = $(this).attr("city");
            if ($('input[city="' + city + '"]').size()) {
                $('input[city="' + city + '"]').parent().remove();
            } else {
                var ml = $('.cityshow li').length;
                if (ml > 4) {
                    alert('最多只能添加5个');
                } else {
                    var test = $(this).html();//所选城市的名字
                    console.log("cityname test :" +  test)
                    $('<li class="licity"><input  getName="citychk" type="checkbox" checked="true" city="' + city + '" class="check"><b>' + test + '</b></li>').appendTo('.cityshow ul');
                }
            }

            $('input[getName=citychk]').click(function () {
                $(this).parent('.licity').remove();
            });

        });
        $('.ok').click(function () {

            var total = "";
            if ($('.cityshow ul li').text() == '') {
                $('.city').hide();
                $('.mask').hide();
            } else {
                $('.cityshow ul li').each(function () {
                    total += (total.length > 0 ? "+" : "" ) + $(this).text();
                });
                $('.acity').text(total);
                $('.city').hide();
                $('.mask').hide();
            }


        })

    })
</script>

<div style="text-align:center;margin:-50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
    <p>适用浏览器：IE8、360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗.</p>
    <p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
</div>
</BODY>
</HTML>
