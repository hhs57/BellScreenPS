<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bell Screen</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/highcharts.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#FFFFFF" onLoad="pageInit();">
<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="1440">
  <tr>
   <td><img src="images/spacer.gif" width="166" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="54" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="50" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="46" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="89" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="10" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="104" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="114" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="13" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="176" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="123" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="116" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="7" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="8" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="114" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="22" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="95" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="133" height="1" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="1" alt="" /></td>
  </tr>

  <tr>
   <td colspan="4"><img name="BigScreen_r1_c1" src="images/BigScreen_r1_c1.png" width="316" height="61" id="BigScreen_r1_c1" alt="" /></td>
   <td colspan="10"><img name="BigScreen_r1_c5" src="images/BigScreen_r1_c5.png" width="760" height="61" id="BigScreen_r1_c5" alt="" /></td>
      <!--该处放置时间-->
   <td colspan="4">
           <div class="img_time">
            <div class="a_title01"><img src="images/BigScreen_r1_c15.png" width="364px" height="61px"/></div>
            <div class="a_words01"><span id="time">2016/11/15 11:23:23</span></div>
           </div>
   </td>
   <td><img src="images/spacer.gif" width="1" height="61" alt="" /></td>
  </tr>
  <tr>
   <!--该处放置跑马灯-->
   <td colspan="18">
           <div class="img_pmd">
            <div class="pmd_title"><img src="images/BigScreen_r2_c1.png" width="1440px" height="51px"/></div>
            <div class="pmd_words"><marquee width="1440" height="30">[2016/11/15 11:23:23]跑马灯</marquee></div>
           </div>   
   </td>
   <td><img src="images/spacer.gif" width="1" height="51" alt="" /></td>
  </tr>
  <tr>
   <!--总呼入量-->
   <td colspan="2">
   <!-- <img name="BigScreen_r3_c1" src="images/BigScreen_r3_c1.png" width="220" height="65" id="BigScreen_r3_c1" alt="" /> -->
           <div class="img_zhrl">
            <div class="zhrl_title"><img src="images/BigScreen_r3_c1.png" width="220px" height="65px"/></div>
            <div class="zhrl_words"><span id="zhrl"></span></div>
           </div>  
   </td>
   <!--接通量-->
   <td colspan="3">
   <!-- <img name="BigScreen_r3_c3" src="images/BigScreen_r3_c3.png" width="185" height="65" id="BigScreen_r3_c3" alt="" /> -->
           <div class="img_jtl">
            <div class="jtl_title"><img src="images/BigScreen_r3_c3.png" width="185px" height="65px"/></div>
            <div class="jtl_words"><span id="jtl"></span></div>
           </div>
   </td>
   <!--自助服务量-->
   <td colspan="3">
  <!--  <img name="BigScreen_r3_c6" src="images/BigScreen_r3_c6.png" width="228" height="65" id="BigScreen_r3_c6" alt="" /> -->
          <div class="img_zhful">
            <div class="zhful_title"><img src="images/BigScreen_r3_c6.png" width="228px" height="65px"/></div>
            <div class="zhful_words"><span id="zhful"></span></div>
           </div>
   </td>
   <!--转化率-->
   <td colspan="2">
   <!-- <img name="BigScreen_r3_c9" src="images/BigScreen_r3_c9.png" width="189" height="65" id="BigScreen_r3_c9" alt="" /> -->
           <div class="img_zhl">
            <div class="zhl_title"><img id="img_zhl" src="images/BigScreen_r3_c9_gray.png" width="189px" height="65px"/></div>
            <div class="zhl_words"><span id="zhl"></span></div>
           </div>
   </td>
   <td colspan="2"><img name="BigScreen_r3_c11" src="images/BigScreen_r3_c11.png" width="239" height="65" id="BigScreen_r3_c11" alt="" /></td>
   <td colspan="4"><img name="BigScreen_r3_c13" src="images/BigScreen_r3_c13.png" width="151" height="65" id="BigScreen_r3_c13" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r3_c17" src="images/BigScreen_r3_c17.png" width="228" height="65" id="BigScreen_r3_c17" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="65" alt="" /></td>
  </tr>
  <tr>
  <!--第一个大的饼图-->
   <td rowspan="7">
  <!--  <img name="BigScreen_r4_c1" src="images/BigScreen_r4_c1.png" width="166" height="158" id="BigScreen_r4_c1" alt="" /> -->
   <div id="container" style="width: 166px; height: 158px;"></div>
   </td>
   
   <td colspan="4"><img name="BigScreen_r4_c2" src="images/BigScreen_r4_c2.png" width="239" height="48" id="BigScreen_r4_c2" alt="" /></td>
   <td colspan="4"><img name="BigScreen_r4_c6" src="images/BigScreen_r4_c6.png" width="241" height="48" id="BigScreen_r4_c6" alt="" /></td>
   <td colspan="9"><img name="BigScreen_r4_c10" src="images/BigScreen_r4_c10.png" width="794" height="48" id="BigScreen_r4_c10" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="48" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="BigScreen_r5_c2" src="images/BigScreen_r5_c2.png" width="104" height="38" id="BigScreen_r5_c2" alt="" /></td>
   <!--第一个小环形图-->
   <td rowspan="6" colspan="2">
   <!-- <img name="BigScreen_r5_c4" src="images/BigScreen_r5_c4.png" width="135" height="110" id="BigScreen_r5_c4" alt="" /> -->
            <div class="img_zjl">
            <div id="container1" style="min-width: 110px; min-height: 110px; margin: 0 auto"></div>
            <div class="zjl_words">转接率</div>
            <div class="zjl_words1"><span id = 'zjl'>48.2%</span></div>
           </div>
   </td>
   <!--第二个小环形图-->
   <td rowspan="6" colspan="2">
<!--    <img name="BigScreen_r5_c6" src="images/BigScreen_r5_c6.png" width="114" height="110" id="BigScreen_r5_c6" alt="" /> -->
            <div class="img_lyl">
            <div id="container2" style="min-width: 110px; min-height: 110px; margin: 0 auto"></div>
            <div class="lyl_words">利用率</div>
            <div class="lyl_words1"><span id = 'lyl'>48.2%</span></div>
           </div>
   </td>
   <td rowspan="6" colspan="2">
<!--    <img name="BigScreen_r5_c8" src="images/BigScreen_r5_c8.png" width="127" height="110" id="BigScreen_r5_c8" alt="" /> -->
           <div class="img_bmyl">
            <div id="container3" style="min-width: 110px; min-height: 110px; margin: 0 auto"></div>
            <div class="bmyl_words">不满意率</div>
            <div class="bmyl_words1"><span id = 'bmyl'>48.2%</span></div>
           </div>
   </td>
   <td rowspan="2"><img name="BigScreen_r5_c10" src="images/BigScreen_r5_c10.png" width="176" height="45" id="BigScreen_r5_c10" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r5_c11" src="images/BigScreen_r5_c11.png" width="123" height="45" id="BigScreen_r5_c11" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r5_c12" src="images/BigScreen_r5_c12.png" width="123" height="45" id="BigScreen_r5_c12" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r5_c14" src="images/BigScreen_r5_c14.png" width="122" height="45" id="BigScreen_r5_c14" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r5_c16" src="images/BigScreen_r5_c16.png" width="117" height="45" id="BigScreen_r5_c16" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r5_c18" src="images/BigScreen_r5_c18.png" width="133" height="45" id="BigScreen_r5_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="38" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="2"><img name="BigScreen_r6_c2" src="images/BigScreen_r6_c2.png" width="104" height="20" id="BigScreen_r6_c2" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="7" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3"><img name="BigScreen_r7_c10" src="images/BigScreen_r7_c10.png" width="176" height="42" id="BigScreen_r7_c10" alt="" /></td>
   <td rowspan="3"><img name="BigScreen_r7_c11" src="images/BigScreen_r7_c11.png" width="123" height="42" id="BigScreen_r7_c11" alt="" /></td>
   <td rowspan="3" colspan="2"><img name="BigScreen_r7_c12" src="images/BigScreen_r7_c12.png" width="123" height="42" id="BigScreen_r7_c12" alt="" /></td>
   <td rowspan="3" colspan="2"><img name="BigScreen_r7_c14" src="images/BigScreen_r7_c14.png" width="122" height="42" id="BigScreen_r7_c14" alt="" /></td>
   <td rowspan="3" colspan="2"><img name="BigScreen_r7_c16" src="images/BigScreen_r7_c16.png" width="117" height="42" id="BigScreen_r7_c16" alt="" /></td>
   <td rowspan="3"><img name="BigScreen_r7_c18" src="images/BigScreen_r7_c18.png" width="133" height="42" id="BigScreen_r7_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="13" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="BigScreen_r8_c2" src="images/BigScreen_r8_c2.png" width="104" height="20" id="BigScreen_r8_c2" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="20" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="2"><img name="BigScreen_r9_c2" src="images/BigScreen_r9_c2.png" width="104" height="32" id="BigScreen_r9_c2" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="9" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="BigScreen_r10_c10" src="images/BigScreen_r10_c10.png" width="176" height="38" id="BigScreen_r10_c10" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r10_c11" src="images/BigScreen_r10_c11.png" width="123" height="38" id="BigScreen_r10_c11" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r10_c12" src="images/BigScreen_r10_c12.png" width="123" height="38" id="BigScreen_r10_c12" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r10_c14" src="images/BigScreen_r10_c14.png" width="122" height="38" id="BigScreen_r10_c14" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r10_c16" src="images/BigScreen_r10_c16.png" width="117" height="38" id="BigScreen_r10_c16" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r10_c18" src="images/BigScreen_r10_c18.png" width="133" height="38" id="BigScreen_r10_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="23" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="6"><img name="BigScreen_r11_c1" src="images/BigScreen_r11_c1.png" width="415" height="30" id="BigScreen_r11_c1" alt="" /></td>
   
   <td rowspan="4" colspan="3">
  <!--  <img name="BigScreen_r11_c7" src="images/BigScreen_r11_c7.png" width="231" height="88" id="BigScreen_r11_c7" alt="" /> -->
          <div class="img_lshbsl">
            <div class="lshbsl_title"><img src="images/BigScreen_r11_c7.png" width="231px" height="88px"/></div>
            <div class="lshbsl_words"><span id="lshbsl">87</span></div>
           </div>   
   </td>
   <td><img src="images/spacer.gif" width="1" height="15" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="BigScreen_r12_c10" src="images/BigScreen_r12_c10.png" width="176" height="43" id="BigScreen_r12_c10" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r12_c11" src="images/BigScreen_r12_c11.png" width="123" height="43" id="BigScreen_r12_c11" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r12_c12" src="images/BigScreen_r12_c12.png" width="123" height="43" id="BigScreen_r12_c12" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r12_c14" src="images/BigScreen_r12_c14.png" width="122" height="43" id="BigScreen_r12_c14" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r12_c16" src="images/BigScreen_r12_c16.png" width="117" height="43" id="BigScreen_r12_c16" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r12_c18" src="images/BigScreen_r12_c18.png" width="133" height="43" id="BigScreen_r12_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="15" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="6">
<!--    <img name="BigScreen_r13_c1" src="images/BigScreen_r13_c1.png" width="415" height="143" id="BigScreen_r13_c1" alt="" /> -->
          <div class="img_ydsd">
            <div id="container4" style="min-width: 415px; min-height: 143px; margin: 0 auto"></div>
          </div>
   </td>
   <td><img src="images/spacer.gif" width="1" height="28" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="BigScreen_r14_c10" src="images/BigScreen_r14_c10.png" width="176" height="37" id="BigScreen_r14_c10" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r14_c11" src="images/BigScreen_r14_c11.png" width="123" height="37" id="BigScreen_r14_c11" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r14_c12" src="images/BigScreen_r14_c12.png" width="123" height="37" id="BigScreen_r14_c12" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r14_c14" src="images/BigScreen_r14_c14.png" width="122" height="37" id="BigScreen_r14_c14" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r14_c16" src="images/BigScreen_r14_c16.png" width="117" height="37" id="BigScreen_r14_c16" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r14_c18" src="images/BigScreen_r14_c18.png" width="133" height="37" id="BigScreen_r14_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="30" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="3">
  <!--  <img name="BigScreen_r15_c7" src="images/BigScreen_r15_c7.png" width="231" height="85" id="BigScreen_r15_c7" alt="" /> -->
            <div class="img_lshbbgtzl">
            <div class="lshbbgtzl_title"><img src="images/BigScreen_r15_c7.png" width="231px" height="85px"/></div>
            <div class="lshbbgtzl_words"><span id="lshbbgtzl">89.0%</span></div>
           </div>   
   </td>
   <td><img src="images/spacer.gif" width="1" height="7" alt="" /></td>
  </tr>
  <tr>
   <td><img name="BigScreen_r16_c10" src="images/BigScreen_r16_c10.png" width="176" height="44" id="BigScreen_r16_c10" alt="" /></td>
   <td><img name="BigScreen_r16_c11" src="images/BigScreen_r16_c11.png" width="123" height="44" id="BigScreen_r16_c11" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r16_c12" src="images/BigScreen_r16_c12.png" width="123" height="44" id="BigScreen_r16_c12" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r16_c14" src="images/BigScreen_r16_c14.png" width="122" height="44" id="BigScreen_r16_c14" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r16_c16" src="images/BigScreen_r16_c16.png" width="117" height="44" id="BigScreen_r16_c16" alt="" /></td>
   <td><img name="BigScreen_r16_c18" src="images/BigScreen_r16_c18.png" width="133" height="44" id="BigScreen_r16_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="44" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="BigScreen_r17_c10" src="images/BigScreen_r17_c10.png" width="176" height="40" id="BigScreen_r17_c10" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r17_c11" src="images/BigScreen_r17_c11.png" width="123" height="40" id="BigScreen_r17_c11" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r17_c12" src="images/BigScreen_r17_c12.png" width="123" height="40" id="BigScreen_r17_c12" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r17_c14" src="images/BigScreen_r17_c14.png" width="122" height="40" id="BigScreen_r17_c14" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r17_c16" src="images/BigScreen_r17_c16.png" width="117" height="40" id="BigScreen_r17_c16" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r17_c18" src="images/BigScreen_r17_c18.png" width="133" height="40" id="BigScreen_r17_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="34" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3" colspan="9"><img name="BigScreen_r18_c1" src="images/BigScreen_r18_c1.png" width="646" height="72" id="BigScreen_r18_c1" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="6" alt="" /></td>
  </tr>
  <tr>
   <td><img name="BigScreen_r19_c10" src="images/BigScreen_r19_c10.png" width="176" height="41" id="BigScreen_r19_c10" alt="" /></td>
   <td><img name="BigScreen_r19_c11" src="images/BigScreen_r19_c11.png" width="123" height="41" id="BigScreen_r19_c11" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r19_c12" src="images/BigScreen_r19_c12.png" width="123" height="41" id="BigScreen_r19_c12" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r19_c14" src="images/BigScreen_r19_c14.png" width="122" height="41" id="BigScreen_r19_c14" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r19_c16" src="images/BigScreen_r19_c16.png" width="117" height="41" id="BigScreen_r19_c16" alt="" /></td>
   <td><img name="BigScreen_r19_c18" src="images/BigScreen_r19_c18.png" width="133" height="41" id="BigScreen_r19_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="41" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="BigScreen_r20_c10" src="images/BigScreen_r20_c10.png" width="176" height="39" id="BigScreen_r20_c10" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r20_c11" src="images/BigScreen_r20_c11.png" width="123" height="39" id="BigScreen_r20_c11" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r20_c12" src="images/BigScreen_r20_c12.png" width="123" height="39" id="BigScreen_r20_c12" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r20_c14" src="images/BigScreen_r20_c14.png" width="122" height="39" id="BigScreen_r20_c14" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="BigScreen_r20_c16" src="images/BigScreen_r20_c16.png" width="117" height="39" id="BigScreen_r20_c16" alt="" /></td>
   <td rowspan="2"><img name="BigScreen_r20_c18" src="images/BigScreen_r20_c18.png" width="133" height="39" id="BigScreen_r20_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="25" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="7" colspan="9"><img name="BigScreen_r21_c1" src="images/BigScreen_r21_c1.png" width="646" height="250" id="BigScreen_r21_c1" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="14" alt="" /></td>
  </tr>
  <tr>
   <td><img name="BigScreen_r22_c10" src="images/BigScreen_r22_c10.png" width="176" height="42" id="BigScreen_r22_c10" alt="" /></td>
   <td><img name="BigScreen_r22_c11" src="images/BigScreen_r22_c11.png" width="123" height="42" id="BigScreen_r22_c11" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r22_c12" src="images/BigScreen_r22_c12.png" width="123" height="42" id="BigScreen_r22_c12" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r22_c14" src="images/BigScreen_r22_c14.png" width="122" height="42" id="BigScreen_r22_c14" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r22_c16" src="images/BigScreen_r22_c16.png" width="117" height="42" id="BigScreen_r22_c16" alt="" /></td>
   <td><img name="BigScreen_r22_c18" src="images/BigScreen_r22_c18.png" width="133" height="42" id="BigScreen_r22_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="42" alt="" /></td>
  </tr>
  <tr>
   <td><img name="BigScreen_r23_c10" src="images/BigScreen_r23_c10.png" width="176" height="39" id="BigScreen_r23_c10" alt="" /></td>
   <td><img name="BigScreen_r23_c11" src="images/BigScreen_r23_c11.png" width="123" height="39" id="BigScreen_r23_c11" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r23_c12" src="images/BigScreen_r23_c12.png" width="123" height="39" id="BigScreen_r23_c12" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r23_c14" src="images/BigScreen_r23_c14.png" width="122" height="39" id="BigScreen_r23_c14" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r23_c16" src="images/BigScreen_r23_c16.png" width="117" height="39" id="BigScreen_r23_c16" alt="" /></td>
   <td><img name="BigScreen_r23_c18" src="images/BigScreen_r23_c18.png" width="133" height="39" id="BigScreen_r23_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="39" alt="" /></td>
  </tr>
  <tr>
   <td><img name="BigScreen_r24_c10" src="images/BigScreen_r24_c10.png" width="176" height="42" id="BigScreen_r24_c10" alt="" /></td>
   <td><img name="BigScreen_r24_c11" src="images/BigScreen_r24_c11.png" width="123" height="42" id="BigScreen_r24_c11" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r24_c12" src="images/BigScreen_r24_c12.png" width="123" height="42" id="BigScreen_r24_c12" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r24_c14" src="images/BigScreen_r24_c14.png" width="122" height="42" id="BigScreen_r24_c14" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r24_c16" src="images/BigScreen_r24_c16.png" width="117" height="42" id="BigScreen_r24_c16" alt="" /></td>
   <td><img name="BigScreen_r24_c18" src="images/BigScreen_r24_c18.png" width="133" height="42" id="BigScreen_r24_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="42" alt="" /></td>
  </tr>
  <tr>
   <td><img name="BigScreen_r25_c10" src="images/BigScreen_r25_c10.png" width="176" height="41" id="BigScreen_r25_c10" alt="" /></td>
   <td><img name="BigScreen_r25_c11" src="images/BigScreen_r25_c11.png" width="123" height="41" id="BigScreen_r25_c11" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r25_c12" src="images/BigScreen_r25_c12.png" width="123" height="41" id="BigScreen_r25_c12" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r25_c14" src="images/BigScreen_r25_c14.png" width="122" height="41" id="BigScreen_r25_c14" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r25_c16" src="images/BigScreen_r25_c16.png" width="117" height="41" id="BigScreen_r25_c16" alt="" /></td>
   <td><img name="BigScreen_r25_c18" src="images/BigScreen_r25_c18.png" width="133" height="41" id="BigScreen_r25_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="41" alt="" /></td>
  </tr>
  <tr>
   <td><img name="BigScreen_r26_c10" src="images/BigScreen_r26_c10.png" width="176" height="43" id="BigScreen_r26_c10" alt="" /></td>
   <td><img name="BigScreen_r26_c11" src="images/BigScreen_r26_c11.png" width="123" height="43" id="BigScreen_r26_c11" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r26_c12" src="images/BigScreen_r26_c12.png" width="123" height="43" id="BigScreen_r26_c12" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r26_c14" src="images/BigScreen_r26_c14.png" width="122" height="43" id="BigScreen_r26_c14" alt="" /></td>
   <td colspan="2"><img name="BigScreen_r26_c16" src="images/BigScreen_r26_c16.png" width="117" height="43" id="BigScreen_r26_c16" alt="" /></td>
   <td><img name="BigScreen_r26_c18" src="images/BigScreen_r26_c18.png" width="133" height="43" id="BigScreen_r26_c18" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="43" alt="" /></td>
  </tr>
  <tr>
   <td colspan="9"><img name="BigScreen_r27_c10" src="images/BigScreen_r27_c10.png" width="794" height="29" id="BigScreen_r27_c10" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="29" alt="" /></td>
  </tr>
</table>
</body>
</html>