<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26990/1" library_version="2">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+05V" urn="urn:adsk.eagle:symbol:26987/1" library_version="2">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:27037/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" urn="urn:adsk.eagle:component:27032/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="+5V" symbol="+05V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="HDSM-283L">
<description>&lt;LED Displays &amp; Accessories Org 605nm 8.5mcd CC SD 7 Segment&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="HDSM283L">
<description>&lt;b&gt;HDSM-283L-2&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-3.175" y="5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="2" x="-1.905" y="5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="3" x="-0.635" y="5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="4" x="0.635" y="5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="5" x="1.905" y="5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="6" x="3.175" y="5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="7" x="3.175" y="-5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="8" x="1.905" y="-5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="9" x="0.635" y="-5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="10" x="-0.635" y="-5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<smd name="11" x="-1.905" y="-5.4" dx="3" dy="0.8" layer="1" rot="R90"/>
<text x="0" y="0.15" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0.15" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.75" y1="5.4" x2="3.75" y2="5.4" width="0.2" layer="51"/>
<wire x1="3.75" y1="5.4" x2="3.75" y2="-5.4" width="0.2" layer="51"/>
<wire x1="3.75" y1="-5.4" x2="-3.75" y2="-5.4" width="0.2" layer="51"/>
<wire x1="-3.75" y1="-5.4" x2="-3.75" y2="5.4" width="0.2" layer="51"/>
<wire x1="-4.75" y1="8.2" x2="4.75" y2="8.2" width="0.1" layer="51"/>
<wire x1="4.75" y1="8.2" x2="4.75" y2="-7.9" width="0.1" layer="51"/>
<wire x1="4.75" y1="-7.9" x2="-4.75" y2="-7.9" width="0.1" layer="51"/>
<wire x1="-4.75" y1="-7.9" x2="-4.75" y2="8.2" width="0.1" layer="51"/>
<wire x1="-3.75" y1="3" x2="-3.75" y2="-3.5" width="0.1" layer="21"/>
<wire x1="3.75" y1="3" x2="3.75" y2="-3.5" width="0.1" layer="21"/>
<wire x1="-3.2" y1="7.1" x2="-3.2" y2="7.1" width="0.1" layer="21"/>
<wire x1="-3.2" y1="7.1" x2="-3.2" y2="7.2" width="0.1" layer="21" curve="-180"/>
<wire x1="-3.2" y1="7.2" x2="-3.2" y2="7.2" width="0.1" layer="21"/>
<wire x1="-3.2" y1="7.2" x2="-3.2" y2="7.1" width="0.1" layer="21" curve="-180"/>
</package>
</packages>
<symbols>
<symbol name="HDSM-283L">
<wire x1="5.08" y1="2.54" x2="53.34" y2="2.54" width="0.254" layer="94"/>
<wire x1="53.34" y1="-15.24" x2="53.34" y2="2.54" width="0.254" layer="94"/>
<wire x1="53.34" y1="-15.24" x2="5.08" y2="-15.24" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-15.24" width="0.254" layer="94"/>
<text x="54.61" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="54.61" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="ANODE_G" x="58.42" y="0" length="middle" rot="R180"/>
<pin name="ANODE_DP1" x="58.42" y="-2.54" length="middle" rot="R180"/>
<pin name="ANODE_F" x="58.42" y="-5.08" length="middle" rot="R180"/>
<pin name="COMMON_CATHODE_1" x="58.42" y="-7.62" length="middle" rot="R180"/>
<pin name="ANODE_A" x="58.42" y="-10.16" length="middle" rot="R180"/>
<pin name="ANODE_B" x="58.42" y="-12.7" length="middle" rot="R180"/>
<pin name="ANODE_DP2" x="0" y="-10.16" length="middle"/>
<pin name="ANODE_C" x="0" y="-7.62" length="middle"/>
<pin name="COMMON_CATHODE_2" x="0" y="-5.08" length="middle"/>
<pin name="ANODE_D" x="0" y="-2.54" length="middle"/>
<pin name="ANODE_E" x="0" y="0" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HDSM-283L" prefix="DS">
<description>&lt;b&gt;LED Displays &amp; Accessories Org 605nm 8.5mcd CC SD 7 Segment&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheet.datasheetarchive.com/originals/distributors/SFDatasheet-4/sf-00083599.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="HDSM-283L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDSM283L">
<connects>
<connect gate="G$1" pin="ANODE_A" pad="5"/>
<connect gate="G$1" pin="ANODE_B" pad="6"/>
<connect gate="G$1" pin="ANODE_C" pad="8"/>
<connect gate="G$1" pin="ANODE_D" pad="10"/>
<connect gate="G$1" pin="ANODE_DP1" pad="2"/>
<connect gate="G$1" pin="ANODE_DP2" pad="7"/>
<connect gate="G$1" pin="ANODE_E" pad="11"/>
<connect gate="G$1" pin="ANODE_F" pad="3"/>
<connect gate="G$1" pin="ANODE_G" pad="1"/>
<connect gate="G$1" pin="COMMON_CATHODE_1" pad="4"/>
<connect gate="G$1" pin="COMMON_CATHODE_2" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="LED Displays &amp; Accessories Org 605nm 8.5mcd CC SD 7 Segment" constant="no"/>
<attribute name="HEIGHT" value="3.15mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Avago Technologies" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="HDSM-283L" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="630-HDSM-283L" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Broadcom-Avago/HDSM-283L?qs=NCV3C3qdz%2FC%2FCUC6%2FdWPrA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="PRT-13612">
<description>&lt;THERMOCOUPLE CONN - PCC-SMP-K&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="PRT13612">
<description>&lt;b&gt;PRT-13612-3&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.77" diameter="2.655"/>
<pad name="2" x="15.7" y="0" drill="1.77" diameter="2.655"/>
<pad name="3" x="1" y="-13.5" drill="1.77" diameter="2.655"/>
<pad name="4" x="14.7" y="-13.5" drill="1.77" diameter="2.655"/>
<text x="7.85" y="-5.6" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="7.85" y="-5.6" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="0.1" y1="4.8" x2="15.6" y2="4.8" width="0.2" layer="51"/>
<wire x1="15.6" y1="4.8" x2="15.6" y2="-16" width="0.2" layer="51"/>
<wire x1="15.6" y1="-16" x2="0.1" y2="-16" width="0.2" layer="51"/>
<wire x1="0.1" y1="-16" x2="0.1" y2="4.8" width="0.2" layer="51"/>
<wire x1="-2.328" y1="5.8" x2="18.027" y2="5.8" width="0.1" layer="51"/>
<wire x1="18.027" y1="5.8" x2="18.027" y2="-17" width="0.1" layer="51"/>
<wire x1="18.027" y1="-17" x2="-2.328" y2="-17" width="0.1" layer="51"/>
<wire x1="-2.328" y1="-17" x2="-2.328" y2="5.8" width="0.1" layer="51"/>
<wire x1="0.1" y1="3.6" x2="0.1" y2="4.8" width="0.1" layer="21"/>
<wire x1="0.1" y1="4.8" x2="15.65" y2="4.8" width="0.1" layer="21"/>
<wire x1="15.65" y1="4.8" x2="15.6" y2="3.2" width="0.1" layer="21"/>
<wire x1="15.6" y1="3.2" x2="15.65" y2="3.2" width="0.1" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PRT-13612">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="2" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="3" x="0" y="0" length="middle"/>
<pin name="4" x="0" y="-2.54" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PRT-13612" prefix="J">
<description>&lt;b&gt;THERMOCOUPLE CONN - PCC-SMP-K&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://cdn.sparkfun.com/datasheets/Prototyping/PCC-SMP-K-datasheet.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PRT-13612" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PRT13612">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="PRT-13612" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/prt-13612/sparkfun-electronics" constant="no"/>
<attribute name="DESCRIPTION" value="THERMOCOUPLE CONN - PCC-SMP-K" constant="no"/>
<attribute name="HEIGHT" value="6.3mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="SparkFun" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PRT-13612" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="474-PRT-13612" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/SparkFun/PRT-13612?qs=WyAARYrbSnbvS1kDzRVYBg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ATSAM4S2AB-ANR">
<description>&lt;ARM Microcontrollers - MCU 48LQFP,GREEN,EXT TEMP(105C),MRL B,128K FLASH,64K SRAM&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="QFP50P900X900X160-48N">
<description>&lt;b&gt;48-LEAD LQFP 7 MM X 7 MM PACKAGE&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-4.238" y="2.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="2" x="-4.238" y="2.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="3" x="-4.238" y="1.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="4" x="-4.238" y="1.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="5" x="-4.238" y="0.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="6" x="-4.238" y="0.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="7" x="-4.238" y="-0.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="8" x="-4.238" y="-0.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="9" x="-4.238" y="-1.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="10" x="-4.238" y="-1.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="11" x="-4.238" y="-2.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="12" x="-4.238" y="-2.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="13" x="-2.75" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="14" x="-2.25" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="15" x="-1.75" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="16" x="-1.25" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="17" x="-0.75" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="18" x="-0.25" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="19" x="0.25" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="20" x="0.75" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="21" x="1.25" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="22" x="1.75" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="23" x="2.25" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="24" x="2.75" y="-4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="25" x="4.238" y="-2.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="26" x="4.238" y="-2.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="27" x="4.238" y="-1.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="28" x="4.238" y="-1.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="29" x="4.238" y="-0.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="30" x="4.238" y="-0.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="31" x="4.238" y="0.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="32" x="4.238" y="0.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="33" x="4.238" y="1.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="34" x="4.238" y="1.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="35" x="4.238" y="2.25" dx="1.475" dy="0.3" layer="1"/>
<smd name="36" x="4.238" y="2.75" dx="1.475" dy="0.3" layer="1"/>
<smd name="37" x="2.75" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="38" x="2.25" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="39" x="1.75" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="40" x="1.25" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="41" x="0.75" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="42" x="0.25" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="43" x="-0.25" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="44" x="-0.75" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="45" x="-1.25" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="46" x="-1.75" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="47" x="-2.25" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<smd name="48" x="-2.75" y="4.238" dx="1.475" dy="0.3" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-5.225" y1="5.225" x2="5.225" y2="5.225" width="0.05" layer="51"/>
<wire x1="5.225" y1="5.225" x2="5.225" y2="-5.225" width="0.05" layer="51"/>
<wire x1="5.225" y1="-5.225" x2="-5.225" y2="-5.225" width="0.05" layer="51"/>
<wire x1="-5.225" y1="-5.225" x2="-5.225" y2="5.225" width="0.05" layer="51"/>
<wire x1="-3.5" y1="3.5" x2="3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="3.5" x2="3.5" y2="-3.5" width="0.1" layer="51"/>
<wire x1="3.5" y1="-3.5" x2="-3.5" y2="-3.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="-3.5" x2="-3.5" y2="3.5" width="0.1" layer="51"/>
<wire x1="-3.5" y1="3" x2="-3" y2="3.5" width="0.1" layer="51"/>
<wire x1="-3.15" y1="3.15" x2="3.15" y2="3.15" width="0.2" layer="21"/>
<wire x1="3.15" y1="3.15" x2="3.15" y2="-3.15" width="0.2" layer="21"/>
<wire x1="3.15" y1="-3.15" x2="-3.15" y2="-3.15" width="0.2" layer="21"/>
<wire x1="-3.15" y1="-3.15" x2="-3.15" y2="3.15" width="0.2" layer="21"/>
<circle x="-4.725" y="3.5" radius="0.125" width="0.25" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="ATSAM4S2AB-ANR">
<wire x1="5.08" y1="25.4" x2="45.72" y2="25.4" width="0.254" layer="94"/>
<wire x1="45.72" y1="-58.42" x2="45.72" y2="25.4" width="0.254" layer="94"/>
<wire x1="45.72" y1="-58.42" x2="5.08" y2="-58.42" width="0.254" layer="94"/>
<wire x1="5.08" y1="25.4" x2="5.08" y2="-58.42" width="0.254" layer="94"/>
<text x="46.99" y="30.48" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="46.99" y="27.94" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="ADVREF" x="0" y="0" length="middle"/>
<pin name="GND_1" x="0" y="-2.54" length="middle"/>
<pin name="PB0/AD4" x="0" y="-5.08" length="middle"/>
<pin name="PB1/AD5" x="0" y="-7.62" length="middle"/>
<pin name="PB2/AD6" x="0" y="-10.16" length="middle"/>
<pin name="PB3/AD7" x="0" y="-12.7" length="middle"/>
<pin name="VDDIN" x="0" y="-15.24" length="middle"/>
<pin name="VDDOUT" x="0" y="-17.78" length="middle"/>
<pin name="PA17/PGMD5/AD0" x="0" y="-20.32" length="middle"/>
<pin name="PA18/PGMD6/AD1" x="0" y="-22.86" length="middle"/>
<pin name="PA19/PGMD7/AD2" x="0" y="-25.4" length="middle"/>
<pin name="PA20/AD3" x="0" y="-27.94" length="middle"/>
<pin name="VDDIO_1" x="10.16" y="-63.5" length="middle" rot="R90"/>
<pin name="PA16/PGMD4" x="12.7" y="-63.5" length="middle" rot="R90"/>
<pin name="PA15/PGMD3" x="15.24" y="-63.5" length="middle" rot="R90"/>
<pin name="PA14/PGMD2" x="17.78" y="-63.5" length="middle" rot="R90"/>
<pin name="PA13/PGMD1" x="20.32" y="-63.5" length="middle" rot="R90"/>
<pin name="VDDCORE_1" x="22.86" y="-63.5" length="middle" rot="R90"/>
<pin name="PA12/PGMD0" x="25.4" y="-63.5" length="middle" rot="R90"/>
<pin name="PA11/PGMM3" x="27.94" y="-63.5" length="middle" rot="R90"/>
<pin name="PA10/PGMM2" x="30.48" y="-63.5" length="middle" rot="R90"/>
<pin name="PA9/PGMM1" x="33.02" y="-63.5" length="middle" rot="R90"/>
<pin name="PA8/XOUT32/PGMM0" x="35.56" y="-63.5" length="middle" rot="R90"/>
<pin name="PA7/XIN32/PGMNVALID" x="38.1" y="-63.5" length="middle" rot="R90"/>
<pin name="PA0/PGMEN0" x="50.8" y="0" length="middle" rot="R180"/>
<pin name="PA1/PGMEN1" x="50.8" y="-2.54" length="middle" rot="R180"/>
<pin name="GND_2" x="50.8" y="-5.08" length="middle" rot="R180"/>
<pin name="VDDIO_2" x="50.8" y="-7.62" length="middle" rot="R180"/>
<pin name="PA2/PGMEN2" x="50.8" y="-10.16" length="middle" rot="R180"/>
<pin name="PA3" x="50.8" y="-12.7" length="middle" rot="R180"/>
<pin name="TST" x="50.8" y="-15.24" length="middle" rot="R180"/>
<pin name="NRST" x="50.8" y="-17.78" length="middle" rot="R180"/>
<pin name="PA4/PGMNCMD" x="50.8" y="-20.32" length="middle" rot="R180"/>
<pin name="PA5/PGMRDY" x="50.8" y="-22.86" length="middle" rot="R180"/>
<pin name="PA6/PGMNOE" x="50.8" y="-25.4" length="middle" rot="R180"/>
<pin name="TDI/PB4" x="50.8" y="-27.94" length="middle" rot="R180"/>
<pin name="VDDPLL" x="10.16" y="30.48" length="middle" rot="R270"/>
<pin name="VDDIO_3" x="12.7" y="30.48" length="middle" rot="R270"/>
<pin name="XIN/PB9/PGMCK" x="15.24" y="30.48" length="middle" rot="R270"/>
<pin name="XOUT/PB8" x="17.78" y="30.48" length="middle" rot="R270"/>
<pin name="DDP/PB11" x="20.32" y="30.48" length="middle" rot="R270"/>
<pin name="DDM/PB10" x="22.86" y="30.48" length="middle" rot="R270"/>
<pin name="ERASE/PB12" x="25.4" y="30.48" length="middle" rot="R270"/>
<pin name="VDDCORE_2" x="27.94" y="30.48" length="middle" rot="R270"/>
<pin name="TCK/SWCLK/PB7" x="30.48" y="30.48" length="middle" rot="R270"/>
<pin name="TMS/SWDIO/PB6" x="33.02" y="30.48" length="middle" rot="R270"/>
<pin name="JTAGSEL" x="35.56" y="30.48" length="middle" rot="R270"/>
<pin name="TDO/TRACESWO/PB5" x="38.1" y="30.48" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATSAM4S2AB-ANR" prefix="IC">
<description>&lt;b&gt;ARM Microcontrollers - MCU 48LQFP,GREEN,EXT TEMP(105C),MRL B,128K FLASH,64K SRAM&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-11100-32-bit Cortex-M4-Microcontroller-SAM4S_Datasheet.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ATSAM4S2AB-ANR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP50P900X900X160-48N">
<connects>
<connect gate="G$1" pin="ADVREF" pad="1"/>
<connect gate="G$1" pin="DDM/PB10" pad="43"/>
<connect gate="G$1" pin="DDP/PB11" pad="44"/>
<connect gate="G$1" pin="ERASE/PB12" pad="42"/>
<connect gate="G$1" pin="GND_1" pad="2"/>
<connect gate="G$1" pin="GND_2" pad="34"/>
<connect gate="G$1" pin="JTAGSEL" pad="38"/>
<connect gate="G$1" pin="NRST" pad="29"/>
<connect gate="G$1" pin="PA0/PGMEN0" pad="36"/>
<connect gate="G$1" pin="PA1/PGMEN1" pad="35"/>
<connect gate="G$1" pin="PA10/PGMM2" pad="21"/>
<connect gate="G$1" pin="PA11/PGMM3" pad="20"/>
<connect gate="G$1" pin="PA12/PGMD0" pad="19"/>
<connect gate="G$1" pin="PA13/PGMD1" pad="17"/>
<connect gate="G$1" pin="PA14/PGMD2" pad="16"/>
<connect gate="G$1" pin="PA15/PGMD3" pad="15"/>
<connect gate="G$1" pin="PA16/PGMD4" pad="14"/>
<connect gate="G$1" pin="PA17/PGMD5/AD0" pad="9"/>
<connect gate="G$1" pin="PA18/PGMD6/AD1" pad="10"/>
<connect gate="G$1" pin="PA19/PGMD7/AD2" pad="11"/>
<connect gate="G$1" pin="PA2/PGMEN2" pad="32"/>
<connect gate="G$1" pin="PA20/AD3" pad="12"/>
<connect gate="G$1" pin="PA3" pad="31"/>
<connect gate="G$1" pin="PA4/PGMNCMD" pad="28"/>
<connect gate="G$1" pin="PA5/PGMRDY" pad="27"/>
<connect gate="G$1" pin="PA6/PGMNOE" pad="26"/>
<connect gate="G$1" pin="PA7/XIN32/PGMNVALID" pad="24"/>
<connect gate="G$1" pin="PA8/XOUT32/PGMM0" pad="23"/>
<connect gate="G$1" pin="PA9/PGMM1" pad="22"/>
<connect gate="G$1" pin="PB0/AD4" pad="3"/>
<connect gate="G$1" pin="PB1/AD5" pad="4"/>
<connect gate="G$1" pin="PB2/AD6" pad="5"/>
<connect gate="G$1" pin="PB3/AD7" pad="6"/>
<connect gate="G$1" pin="TCK/SWCLK/PB7" pad="40"/>
<connect gate="G$1" pin="TDI/PB4" pad="25"/>
<connect gate="G$1" pin="TDO/TRACESWO/PB5" pad="37"/>
<connect gate="G$1" pin="TMS/SWDIO/PB6" pad="39"/>
<connect gate="G$1" pin="TST" pad="30"/>
<connect gate="G$1" pin="VDDCORE_1" pad="18"/>
<connect gate="G$1" pin="VDDCORE_2" pad="41"/>
<connect gate="G$1" pin="VDDIN" pad="7"/>
<connect gate="G$1" pin="VDDIO_1" pad="13"/>
<connect gate="G$1" pin="VDDIO_2" pad="33"/>
<connect gate="G$1" pin="VDDIO_3" pad="47"/>
<connect gate="G$1" pin="VDDOUT" pad="8"/>
<connect gate="G$1" pin="VDDPLL" pad="48"/>
<connect gate="G$1" pin="XIN/PB9/PGMCK" pad="46"/>
<connect gate="G$1" pin="XOUT/PB8" pad="45"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="ATSAM4S2AB-ANR" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/atsam4s2ab-anr/microchip-technology" constant="no"/>
<attribute name="DESCRIPTION" value="ARM Microcontrollers - MCU 48LQFP,GREEN,EXT TEMP(105C),MRL B,128K FLASH,64K SRAM" constant="no"/>
<attribute name="HEIGHT" value="1.6mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ATSAM4S2AB-ANR" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="556-ATSAM4S2AB-ANR" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Microchip-Technology-Atmel/ATSAM4S2AB-ANR?qs=YCa%2FAAYMW03qmCNY%252BxWbcQ%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="C0805C104K5RAC7411">
<description>&lt;Cap Ceramic 0.1uF 50V X7R 10% Pad SMD 0805 125C T/R&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC2012X88N">
<description>&lt;b&gt;C0805C104K5RAC7411-+-+&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.8" y="0" dx="1.47" dy="1.02" layer="1" rot="R90"/>
<smd name="2" x="0.8" y="0" dx="1.47" dy="1.02" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.46" y1="0.89" x2="1.46" y2="0.89" width="0.05" layer="51"/>
<wire x1="1.46" y1="0.89" x2="1.46" y2="-0.89" width="0.05" layer="51"/>
<wire x1="1.46" y1="-0.89" x2="-1.46" y2="-0.89" width="0.05" layer="51"/>
<wire x1="-1.46" y1="-0.89" x2="-1.46" y2="0.89" width="0.05" layer="51"/>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.1" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="C0805C104K5RAC7411">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C0805C104K5RAC7411" prefix="C">
<description>&lt;b&gt;Cap Ceramic 0.1uF 50V X7R 10% Pad SMD 0805 125C T/R&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.mouser.com/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="C0805C104K5RAC7411" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2012X88N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="C0805C104K5RAC7411" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/c0805c104k5rac7411/kemet-corporation" constant="no"/>
<attribute name="DESCRIPTION" value="Cap Ceramic 0.1uF 50V X7R 10% Pad SMD 0805 125C T/R" constant="no"/>
<attribute name="HEIGHT" value="0.88mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="KEMET" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="C0805C104K5RAC7411" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="80-C0805C104K5RACLR" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/KEMET/C0805C104K5RAC7411?qs=jbRM9o5BbzPcVXF0wW9AYg%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CR0402-JW-221GLF">
<description>&lt;Thick Film Resistors - SMD 220 OHM 5%&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RESC1005X40N">
<description>&lt;b&gt;CR0402&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.175" y1="0.55" x2="1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="0.55" x2="1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="-0.55" x2="-1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="-1.175" y1="-0.55" x2="-1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CR0402-JW-221GLF">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CR0402-JW-221GLF" prefix="R">
<description>&lt;b&gt;Thick Film Resistors - SMD 220 OHM 5%&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.bourns.com/pdfs/CR0402.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CR0402-JW-221GLF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1005X40N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="CR0402-JW-221GLF" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/cr0402-jw-221glf/bourns" constant="no"/>
<attribute name="DESCRIPTION" value="Thick Film Resistors - SMD 220 OHM 5%" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Bourns" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CR0402-JW-221GLF" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="652-CR0402JW-221GLF" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.com/Search/Refine.aspx?Keyword=652-CR0402JW-221GLF" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_B_L" urn="urn:adsk.eagle:symbol:13883/1" library_version="1">
<frame x1="0" y1="0" x2="431.8" y2="279.4" columns="9" rows="6" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_B_L" urn="urn:adsk.eagle:component:13938/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt; B Size , 11 x 17 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_B_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="325.12" y="0" addlevel="always"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SKRAAKE010">
<description>&lt;Tact switch,SMT,SPST,white,2.45N o/force White Stem Tactile Switch, SPST-NO 50 mA 3.4mm&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SKRAAKE010_1">
<description>&lt;b&gt;SKRAAKE010_1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-5.75" y="4" dx="2.75" dy="1" layer="1"/>
<smd name="2" x="0" y="4" dx="2.75" dy="1" layer="1"/>
<smd name="3" x="-5.75" y="0" dx="2.75" dy="1" layer="1"/>
<smd name="4" x="0" y="0" dx="2.75" dy="1" layer="1"/>
<text x="-3.12666875" y="3.04533125" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-3.12666875" y="3.04533125" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-5.975" y1="5.1" x2="0.225" y2="5.1" width="0.2" layer="51"/>
<wire x1="0.225" y1="5.1" x2="0.225" y2="-1.1" width="0.2" layer="51"/>
<wire x1="0.225" y1="-1.1" x2="-5.975" y2="-1.1" width="0.2" layer="51"/>
<wire x1="-5.975" y1="-1.1" x2="-5.975" y2="5.1" width="0.2" layer="51"/>
<wire x1="-5.975" y1="-1.1" x2="0.225" y2="-1.1" width="0.2" layer="21"/>
<wire x1="-5.975" y1="5.1" x2="0.225" y2="5.1" width="0.2" layer="21"/>
<wire x1="-5.975" y1="2" x2="-5.975" y2="3.159" width="0.2" layer="21"/>
<wire x1="-5.975" y1="2" x2="-5.975" y2="0.92933125" width="0.2" layer="21"/>
<wire x1="0.225" y1="2" x2="0.225" y2="3.12133125" width="0.2" layer="21"/>
<wire x1="0.225" y1="2" x2="0.225" y2="0.92933125" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="SKRAAKE010">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="2" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="3" x="0" y="-2.54" length="middle"/>
<pin name="4" x="20.32" y="-2.54" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SKRAAKE010" prefix="S">
<description>&lt;b&gt;Tact switch,SMT,SPST,white,2.45N o/force White Stem Tactile Switch, SPST-NO 50 mA 3.4mm&lt;/b&gt;&lt;p&gt;
Source: &lt;a href=""&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="SKRAAKE010" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SKRAAKE010_1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="SKRAAKE010" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/skraake010/alps-electric" constant="no"/>
<attribute name="DESCRIPTION" value="Tact switch,SMT,SPST,white,2.45N o/force White Stem Tactile Switch, SPST-NO 50 mA 3.4mm" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="ALPS Electric" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="SKRAAKE010" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="688-SKRAAK" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Alps-Alpine/SKRAAKE010?qs=W5eanQMd1BB0RPz8ZhKlUA%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CRCW040210K0FKEDC">
<description>&lt;VISHAY - CRCW040210K0FKEDC - RES, THICK FILM, 10K, 0.063W, 0402&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RESC1005X35N">
<description>&lt;b&gt;CRCW0402100KFKEDC&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.175" y1="0.55" x2="1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="0.55" x2="1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="-0.55" x2="-1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="-1.175" y1="-0.55" x2="-1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CRCW040210K0FKEDC">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRCW040210K0FKEDC" prefix="R">
<description>&lt;b&gt;VISHAY - CRCW040210K0FKEDC - RES, THICK FILM, 10K, 0.063W, 0402&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://rs.componentsearchengine.com/Datasheets/2/CRCW040210K0FKEDC.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CRCW040210K0FKEDC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1005X35N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="CRCW040210K0FKEDC" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/crcw040210k0fkedc/vishay?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="VISHAY - CRCW040210K0FKEDC - RES, THICK FILM, 10K, 0.063W, 0402" constant="no"/>
<attribute name="HEIGHT" value="0.35mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Vishay" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW040210K0FKEDC" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="71-CRCW040210K0FKEDC" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Vishay-Dale/CRCW040210K0FKEDC?qs=E3Y5ESvWgWPiNLcGzwCGPg%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CR0402-FX-39R0GLF">
<description>&lt;Thick Film Resistors - SMD 39 OHM 1%&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RESC1005X40N">
<description>&lt;b&gt;CR0402&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.175" y1="0.55" x2="1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="0.55" x2="1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="-0.55" x2="-1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="-1.175" y1="-0.55" x2="-1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CR0402-FX-39R0GLF">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CR0402-FX-39R0GLF" prefix="R">
<description>&lt;b&gt;Thick Film Resistors - SMD 39 OHM 1%&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.bourns.com/pdfs/CR0402.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CR0402-FX-39R0GLF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1005X40N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Thick Film Resistors - SMD 39 OHM 1%" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Bourns" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CR0402-FX-39R0GLF" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="652-CR0402FX-39R0GLF" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.com/Search/Refine.aspx?Keyword=652-CR0402FX-39R0GLF" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="5055323-9">
<description>&lt;AMP - TE CONNECTIVITY - 5055323-9 - POWER TAB, ASSEMBLY, WITH SCREW&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="50553239">
<description>&lt;b&gt;5055323-9-2&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.47" diameter="2.205"/>
<pad name="2" x="3.175" y="0" drill="1.47" diameter="2.205"/>
<pad name="3" x="6.35" y="0" drill="1.47" diameter="2.205"/>
<pad name="4" x="6.35" y="6.35" drill="1.47" diameter="2.205"/>
<pad name="5" x="3.175" y="6.35" drill="1.47" diameter="2.205"/>
<pad name="6" x="0" y="6.35" drill="1.47" diameter="2.205"/>
<text x="3.175" y="3.175" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="3.175" y="3.175" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.889" y1="6.668" x2="7.239" y2="6.668" width="0.2" layer="51"/>
<wire x1="7.239" y1="6.668" x2="7.239" y2="-0.318" width="0.2" layer="51"/>
<wire x1="7.239" y1="-0.318" x2="-0.889" y2="-0.318" width="0.2" layer="51"/>
<wire x1="-0.889" y1="-0.318" x2="-0.889" y2="6.668" width="0.2" layer="51"/>
<wire x1="-2.102" y1="8.453" x2="8.453" y2="8.453" width="0.1" layer="51"/>
<wire x1="8.453" y1="8.453" x2="8.453" y2="-2.103" width="0.1" layer="51"/>
<wire x1="8.453" y1="-2.103" x2="-2.102" y2="-2.103" width="0.1" layer="51"/>
<wire x1="-2.102" y1="-2.103" x2="-2.102" y2="8.453" width="0.1" layer="51"/>
<wire x1="-0.889" y1="5.175" x2="-0.889" y2="1.175" width="0.1" layer="21"/>
<wire x1="7.239" y1="5.175" x2="7.239" y2="1.175" width="0.1" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="5055323-9">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="2" x="0" y="-2.54" length="middle"/>
<pin name="3" x="0" y="-5.08" length="middle"/>
<pin name="4" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="5" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="6" x="20.32" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="5055323-9" prefix="U">
<description>&lt;b&gt;AMP - TE CONNECTIVITY - 5055323-9 - POWER TAB, ASSEMBLY, WITH SCREW&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/1/5055323-9.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="5055323-9" x="0" y="0"/>
</gates>
<devices>
<device name="" package="50553239">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="5055323-9" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/5055323-9/te-connectivity" constant="no"/>
<attribute name="DESCRIPTION" value="AMP - TE CONNECTIVITY - 5055323-9 - POWER TAB, ASSEMBLY, WITH SCREW" constant="no"/>
<attribute name="HEIGHT" value="7.2898mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TE Connectivity" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="5055323-9" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="571-5055323-9" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TE-Connectivity/5055323-9?qs=Ko7makLHeK5WcBiq4KwKgA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="HLK-PM03">
<description>&lt;Power Module AC-DC Through Hole RoHS&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="HLKPM03">
<description>&lt;b&gt;HLK-PM03-1&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1" diameter="1.5"/>
<pad name="2" x="0" y="-5" drill="1" diameter="1.5"/>
<pad name="3" x="29.4" y="5.2" drill="1" diameter="1.5"/>
<pad name="4" x="29.4" y="-10.2" drill="1" diameter="1.5"/>
<text x="14.175" y="-2.5" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="14.175" y="-2.5" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.3" y1="7.5" x2="31.7" y2="7.5" width="0.2" layer="51"/>
<wire x1="31.7" y1="7.5" x2="31.7" y2="-12.5" width="0.2" layer="51"/>
<wire x1="31.7" y1="-12.5" x2="-2.3" y2="-12.5" width="0.2" layer="51"/>
<wire x1="-2.3" y1="-12.5" x2="-2.3" y2="7.5" width="0.2" layer="51"/>
<wire x1="-2.3" y1="7.5" x2="31.7" y2="7.5" width="0.1" layer="21"/>
<wire x1="31.7" y1="7.5" x2="31.7" y2="-12.5" width="0.1" layer="21"/>
<wire x1="31.7" y1="-12.5" x2="-2.3" y2="-12.5" width="0.1" layer="21"/>
<wire x1="-2.3" y1="-12.5" x2="-2.3" y2="7.5" width="0.1" layer="21"/>
<wire x1="-4.35" y1="8.5" x2="32.7" y2="8.5" width="0.1" layer="51"/>
<wire x1="32.7" y1="8.5" x2="32.7" y2="-13.5" width="0.1" layer="51"/>
<wire x1="32.7" y1="-13.5" x2="-4.35" y2="-13.5" width="0.1" layer="51"/>
<wire x1="-4.35" y1="-13.5" x2="-4.35" y2="8.5" width="0.1" layer="51"/>
<wire x1="-3.3" y1="0.5" x2="-3.3" y2="0.5" width="0.5" layer="21"/>
<wire x1="-3.3" y1="0.5" x2="-3.3" y2="0.6" width="0.5" layer="21" curve="180"/>
<wire x1="-3.3" y1="0.6" x2="-3.3" y2="0.6" width="0.5" layer="21"/>
<wire x1="-3.3" y1="0.6" x2="-3.3" y2="0.5" width="0.5" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="HLK-PM03">
<wire x1="5.08" y1="2.54" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="24.13" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="24.13" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="AC_1" x="0" y="0" length="middle"/>
<pin name="AC_2" x="0" y="-2.54" length="middle"/>
<pin name="-V0" x="27.94" y="0" length="middle" rot="R180"/>
<pin name="+V0" x="27.94" y="-2.54" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HLK-PM03" prefix="PS">
<description>&lt;b&gt;Power Module AC-DC Through Hole RoHS&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheet.lcsc.com/szlcsc/1906201102_HI-LINK-HLK-PM03_C209904.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="HLK-PM03" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HLKPM03">
<connects>
<connect gate="G$1" pin="+V0" pad="4"/>
<connect gate="G$1" pin="-V0" pad="3"/>
<connect gate="G$1" pin="AC_1" pad="1"/>
<connect gate="G$1" pin="AC_2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Power Module AC-DC Through Hole RoHS" constant="no"/>
<attribute name="HEIGHT" value="15mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Hi-Link" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="HLK-PM03" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MOV-10D561K">
<description>&lt;Varistors 180pF 560volts 10%&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="MOV10D561K">
<description>&lt;b&gt;MOV-10D561K-2&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.1" diameter="1.65"/>
<pad name="2" x="7.5" y="0" drill="1.1" diameter="1.65"/>
<text x="3.75" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="3.75" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.5" y1="2.95" x2="10" y2="2.95" width="0.2" layer="51"/>
<wire x1="10" y1="2.95" x2="10" y2="-2.95" width="0.2" layer="51"/>
<wire x1="10" y1="-2.95" x2="-2.5" y2="-2.95" width="0.2" layer="51"/>
<wire x1="-2.5" y1="-2.95" x2="-2.5" y2="2.95" width="0.2" layer="51"/>
<wire x1="-2.5" y1="2.95" x2="10" y2="2.95" width="0.1" layer="21"/>
<wire x1="10" y1="2.95" x2="10" y2="-2.95" width="0.1" layer="21"/>
<wire x1="10" y1="-2.95" x2="-2.5" y2="-2.95" width="0.1" layer="21"/>
<wire x1="-2.5" y1="-2.95" x2="-2.5" y2="2.95" width="0.1" layer="21"/>
<wire x1="-3.5" y1="3.95" x2="11" y2="3.95" width="0.1" layer="51"/>
<wire x1="11" y1="3.95" x2="11" y2="-3.95" width="0.1" layer="51"/>
<wire x1="11" y1="-3.95" x2="-3.5" y2="-3.95" width="0.1" layer="51"/>
<wire x1="-3.5" y1="-3.95" x2="-3.5" y2="3.95" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MOV-10D561K">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="6.35" y2="-2.54" width="0.254" layer="94"/>
<wire x1="11.43" y1="2.54" x2="6.35" y2="-2.54" width="0.254" layer="94"/>
<wire x1="11.43" y1="2.54" x2="13.97" y2="2.54" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOV-10D561K" prefix="RV">
<description>&lt;b&gt;Varistors 180pF 560volts 10%&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.bourns.com/docs/Product-Datasheets/MOV10D.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="MOV-10D561K" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOV10D561K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="MOV-10D561K" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/mov-10d561k/bourns" constant="no"/>
<attribute name="DESCRIPTION" value="Varistors 180pF 560volts 10%" constant="no"/>
<attribute name="HEIGHT" value="15.5mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Bourns" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="MOV-10D561K" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="652-MOV-10D561K" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Bourns/MOV-10D561K?qs=lgttKnAd%252B2ArrqGQgWwr6w%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="B32922X2104K000">
<description>&lt;EMI Suppression Capacitors, 0.1uF, 275Vrms AC, 5m(W) x 10.5m(H) x 18m(L)&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="B32922X_(18_X_5)">
<description>&lt;b&gt;B32922X_(18_X_5)&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1" diameter="1.5" shape="square"/>
<pad name="2" x="15" y="0" drill="1" diameter="1.5"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.5" y1="2.5" x2="16.5" y2="2.5" width="0.2" layer="51"/>
<wire x1="16.5" y1="2.5" x2="16.5" y2="-2.5" width="0.2" layer="51"/>
<wire x1="16.5" y1="-2.5" x2="-1.5" y2="-2.5" width="0.2" layer="51"/>
<wire x1="-1.5" y1="-2.5" x2="-1.5" y2="2.5" width="0.2" layer="51"/>
<wire x1="-1.5" y1="2.5" x2="16.5" y2="2.5" width="0.1" layer="21"/>
<wire x1="16.5" y1="2.5" x2="16.5" y2="-2.5" width="0.1" layer="21"/>
<wire x1="16.5" y1="-2.5" x2="-1.5" y2="-2.5" width="0.1" layer="21"/>
<wire x1="-1.5" y1="-2.5" x2="-1.5" y2="2.5" width="0.1" layer="21"/>
<circle x="-2.35" y="0" radius="0.05" width="0.2" layer="25"/>
<wire x1="-3.25" y1="3.5" x2="17.5" y2="3.5" width="0.05" layer="51"/>
<wire x1="17.5" y1="3.5" x2="17.5" y2="-3.5" width="0.05" layer="51"/>
<wire x1="17.5" y1="-3.5" x2="-3.25" y2="-3.5" width="0.05" layer="51"/>
<wire x1="-3.25" y1="-3.5" x2="-3.25" y2="3.5" width="0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="B32922X2104K000">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="B32922X2104K000" prefix="C">
<description>&lt;b&gt;EMI Suppression Capacitors, 0.1uF, 275Vrms AC, 5m(W) x 10.5m(H) x 18m(L)&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://product.tdk.com/system/files/dam/doc/product/capacitor/film/emi/data_sheet/20/20/db/fc_2009/x2_b32921_923_xy.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="B32922X2104K000" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B32922X_(18_X_5)">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="B32922X2104K000" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/b32922x2104k000/epcos-tdk?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="EMI Suppression Capacitors, 0.1uF, 275Vrms AC, 5m(W) x 10.5m(H) x 18m(L)" constant="no"/>
<attribute name="HEIGHT" value="10.5mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TDK" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="B32922X2104K000" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="871-B32922X2104K000" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/EPCOS-TDK/B32922X2104K000?qs=TuK3vfAjtkWDVip5zaCELA%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="860010473011">
<description>&lt;Wurth Elektronik 220uF 25 V dc Aluminium Electrolytic Capacitor, WCAP-ATG8 Series 2000h 6.3 (Dia.) x 11mm&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPPRD250W52D630H1250">
<description>&lt;b&gt;860020373010&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.1" shape="square"/>
<pad name="2" x="2.5" y="0" drill="0.7" diameter="1.1"/>
<text x="0" y="-5.08" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-7.62" size="1.27" layer="27" align="center">&gt;VALUE</text>
<circle x="1.25" y="0" radius="3.65" width="0.05" layer="21"/>
<circle x="1.25" y="0" radius="3.15" width="0.2" layer="25"/>
<circle x="1.25" y="0" radius="3.15" width="0.1" layer="51"/>
<wire x1="0" y1="2.032" x2="0" y2="1.27" width="0.127" layer="21"/>
<wire x1="-0.381" y1="1.651" x2="0.381" y2="1.651" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="860010473011">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="+" x="0" y="0" visible="pad" length="middle"/>
<pin name="-" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
<wire x1="1.778" y1="5.334" x2="1.778" y2="3.302" width="0.254" layer="94"/>
<wire x1="0.762" y1="4.318" x2="2.794" y2="4.318" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="860010473011" prefix="C">
<description>&lt;b&gt;Wurth Elektronik 220uF 25 V dc Aluminium Electrolytic Capacitor, WCAP-ATG8 Series 2000h 6.3 (Dia.) x 11mm&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.we-online.de/katalog/datasheet/860010473011.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="860010473011" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPPRD250W52D630H1250">
<connects>
<connect gate="G$1" pin="+" pad="1"/>
<connect gate="G$1" pin="-" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Wurth Elektronik 220uF 25 V dc Aluminium Electrolytic Capacitor, WCAP-ATG8 Series 2000h 6.3 (Dia.) x 11mm" constant="no"/>
<attribute name="HEIGHT" value="12.5mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Wurth Elektronik" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="860010473011" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="710-860010473011" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Wurth-Elektronik/860010473011?qs=0KOYDY2FL2%252Bm07azjhm%2FHQ%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RST_500_AMMO">
<description>&lt;Fuse Micro Slow Blow Acting 0.5A 250V Radial 8.35 X 4 X 8.2mm Ammo CCC/PSE/SEMKO/VDE/cULus&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RST500AMMO">
<description>&lt;b&gt;RST 500 AMMO-1&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.4"/>
<pad name="2" x="5.08" y="0" drill="0.9" diameter="1.4"/>
<text x="2.54" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="2.54" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.635" y1="2" x2="6.715" y2="2" width="0.2" layer="51"/>
<wire x1="6.715" y1="2" x2="6.715" y2="-2" width="0.2" layer="51"/>
<wire x1="6.715" y1="-2" x2="-1.635" y2="-2" width="0.2" layer="51"/>
<wire x1="-1.635" y1="-2" x2="-1.635" y2="2" width="0.2" layer="51"/>
<wire x1="-1.635" y1="2" x2="6.715" y2="2" width="0.1" layer="21"/>
<wire x1="6.715" y1="2" x2="6.715" y2="-2" width="0.1" layer="21"/>
<wire x1="6.715" y1="-2" x2="-1.635" y2="-2" width="0.1" layer="21"/>
<wire x1="-1.635" y1="-2" x2="-1.635" y2="2" width="0.1" layer="21"/>
<wire x1="-2.635" y1="3" x2="7.715" y2="3" width="0.1" layer="51"/>
<wire x1="7.715" y1="3" x2="7.715" y2="-3" width="0.1" layer="51"/>
<wire x1="7.715" y1="-3" x2="-2.635" y2="-3" width="0.1" layer="51"/>
<wire x1="-2.635" y1="-3" x2="-2.635" y2="3" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="RST_500_AMMO">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="12.7" y2="0" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RST_500_AMMO" prefix="F">
<description>&lt;b&gt;Fuse Micro Slow Blow Acting 0.5A 250V Radial 8.35 X 4 X 8.2mm Ammo CCC/PSE/SEMKO/VDE/cULus&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://belfuse.com/resources/datasheets/circuitprotection/ds-cp-rst-series.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RST_500_AMMO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RST500AMMO">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="RST 500 AMMO" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/rst500-ammo/bel-group" constant="no"/>
<attribute name="DESCRIPTION" value="Fuse Micro Slow Blow Acting 0.5A 250V Radial 8.35 X 4 X 8.2mm Ammo CCC/PSE/SEMKO/VDE/cULus" constant="no"/>
<attribute name="HEIGHT" value="7.9mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Stewart Connector" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="RST 500 AMMO" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="530-RST500AMMO" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Bel-Fuse/RST-500-AMMO?qs=MvPYbBWWJyujgJzBtIxlxw%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="NX3225GA-12MHZ-STD-CRG-2">
<description>&lt;NDK 12MHz Crystal Unit +/-20ppm SMD 4-Pin 3.2 x 2.5 x 0.75mm&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="NX3225GA12MHZSTDCRG2">
<description>&lt;b&gt;NX3225GA-12MHZ-STD-CRG-2-3&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.1" y="-0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="2" x="1.1" y="-0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="3" x="1.1" y="0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="4" x="-1.1" y="0.8" dx="1.4" dy="1.2" layer="1"/>
<text x="-0.225" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-0.225" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.6" y1="1.25" x2="1.6" y2="1.25" width="0.2" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1.6" y2="-1.25" width="0.2" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="-1.6" y2="-1.25" width="0.2" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="-1.6" y2="1.25" width="0.2" layer="51"/>
<wire x1="-3.25" y1="2.4" x2="2.8" y2="2.4" width="0.1" layer="51"/>
<wire x1="2.8" y1="2.4" x2="2.8" y2="-2.4" width="0.1" layer="51"/>
<wire x1="2.8" y1="-2.4" x2="-3.25" y2="-2.4" width="0.1" layer="51"/>
<wire x1="-3.25" y1="-2.4" x2="-3.25" y2="2.4" width="0.1" layer="51"/>
<wire x1="-2.2" y1="0.9" x2="-2.2" y2="0.9" width="0.1" layer="21"/>
<wire x1="-2.2" y1="0.9" x2="-2.2" y2="1" width="0.1" layer="21" curve="180"/>
<wire x1="-2.2" y1="1" x2="-2.2" y2="1" width="0.1" layer="21"/>
<wire x1="-2.2" y1="1" x2="-2.2" y2="0.9" width="0.1" layer="21" curve="180"/>
<wire x1="-0.3" y1="1.25" x2="0.2" y2="1.25" width="0.1" layer="21"/>
<wire x1="-0.3" y1="-1.25" x2="0.2" y2="-1.25" width="0.1" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="NX3225GA-12MHZ-STD-CRG-2">
<wire x1="5.08" y1="2.54" x2="35.56" y2="2.54" width="0.254" layer="94"/>
<wire x1="35.56" y1="-5.08" x2="35.56" y2="2.54" width="0.254" layer="94"/>
<wire x1="35.56" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="36.83" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="36.83" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="CRYSTAL_1" x="0" y="-2.54" length="middle"/>
<pin name="GND_1" x="40.64" y="-2.54" length="middle" rot="R180"/>
<pin name="CRYSTAL_2" x="40.64" y="0" length="middle" rot="R180"/>
<pin name="GND_2" x="0" y="0" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NX3225GA-12MHZ-STD-CRG-2" prefix="Y">
<description>&lt;b&gt;NDK 12MHz Crystal Unit +/-20ppm SMD 4-Pin 3.2 x 2.5 x 0.75mm&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheet.datasheetarchive.com/originals/distributors/Datasheets_SAMA/e448b11b6d77781431a8823f463adabd.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="NX3225GA-12MHZ-STD-CRG-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NX3225GA12MHZSTDCRG2">
<connects>
<connect gate="G$1" pin="CRYSTAL_1" pad="1"/>
<connect gate="G$1" pin="CRYSTAL_2" pad="3"/>
<connect gate="G$1" pin="GND_1" pad="2"/>
<connect gate="G$1" pin="GND_2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="NDK 12MHz Crystal Unit +/-20ppm SMD 4-Pin 3.2 x 2.5 x 0.75mm" constant="no"/>
<attribute name="HEIGHT" value="0.9mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="NDK" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="NX3225GA-12MHZ-STD-CRG-2" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="344-NX3225GA12STCRG2" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/NDK/NX3225GA-12MHZ-STD-CRG-2?qs=w%2Fv1CP2dgqoRB9b4zEbU%252BQ%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="04025U180FAT2A">
<description>&lt;AVX - 04025U180FAT2A - CAP, MLCC, C0G / NP0, 18PF, 50V, 0402&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC1005X56N">
<description>&lt;b&gt;AVX0402(THICKNESS 0.56MM)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.45" y="0" dx="0.65" dy="0.64" layer="1"/>
<smd name="2" x="0.45" y="0" dx="0.65" dy="0.64" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.925" y1="0.47" x2="0.925" y2="0.47" width="0.05" layer="51"/>
<wire x1="0.925" y1="0.47" x2="0.925" y2="-0.47" width="0.05" layer="51"/>
<wire x1="0.925" y1="-0.47" x2="-0.925" y2="-0.47" width="0.05" layer="51"/>
<wire x1="-0.925" y1="-0.47" x2="-0.925" y2="0.47" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="04025U180FAT2A">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="04025U180FAT2A" prefix="C">
<description>&lt;b&gt;AVX - 04025U180FAT2A - CAP, MLCC, C0G / NP0, 18PF, 50V, 0402&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.mouser.com/catalog/supplier/library/pdf/AVXSurfaceMountCeramic.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="04025U180FAT2A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC1005X56N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="04025U180FAT2A" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/04025u180fat2a/avx" constant="no"/>
<attribute name="DESCRIPTION" value="AVX - 04025U180FAT2A - CAP, MLCC, C0G / NP0, 18PF, 50V, 0402" constant="no"/>
<attribute name="HEIGHT" value="0.56mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="AVX" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="04025U180FAT2A" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="581-04025U180FAT2A" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/AVX/04025U180FAT2A/?qs=lqAf%2FiVYw9iIZ7dTMzpUiQ%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="M22-5320405">
<description>&lt;2.00mm (0.079") Pitch DIL Vertical SMT Pin Header, gold, 4+4 contacts&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="HUSSP8W50P200_2X4_800X400X500P">
<description>&lt;b&gt;M22-5320405&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-3" y="-1.925" dx="2.65" dy="0.75" layer="1" rot="R90"/>
<smd name="2" x="-3" y="1.925" dx="2.65" dy="0.75" layer="1" rot="R90"/>
<smd name="3" x="-1" y="-1.925" dx="2.65" dy="0.75" layer="1" rot="R90"/>
<smd name="4" x="-1" y="1.925" dx="2.65" dy="0.75" layer="1" rot="R90"/>
<smd name="5" x="1" y="-1.925" dx="2.65" dy="0.75" layer="1" rot="R90"/>
<smd name="6" x="1" y="1.925" dx="2.65" dy="0.75" layer="1" rot="R90"/>
<smd name="7" x="3" y="-1.925" dx="2.65" dy="0.75" layer="1" rot="R90"/>
<smd name="8" x="3" y="1.925" dx="2.65" dy="0.75" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4.425" y1="3.5" x2="4.425" y2="3.5" width="0.05" layer="51"/>
<wire x1="4.425" y1="3.5" x2="4.425" y2="-3.5" width="0.05" layer="51"/>
<wire x1="4.425" y1="-3.5" x2="-4.425" y2="-3.5" width="0.05" layer="51"/>
<wire x1="-4.425" y1="-3.5" x2="-4.425" y2="3.5" width="0.05" layer="51"/>
<wire x1="-4" y1="2" x2="4" y2="2" width="0.1" layer="51"/>
<wire x1="4" y1="2" x2="4" y2="-2" width="0.1" layer="51"/>
<wire x1="4" y1="-2" x2="-4" y2="-2" width="0.1" layer="51"/>
<wire x1="-4" y1="-2" x2="-4" y2="2" width="0.1" layer="51"/>
<wire x1="-4" y1="0" x2="-2" y2="2" width="0.1" layer="51"/>
<wire x1="-4" y1="-3.25" x2="-4" y2="2" width="0.2" layer="21"/>
<wire x1="4" y1="-2" x2="4" y2="2" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="M22-5320405">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="3" x="0" y="-2.54" length="middle"/>
<pin name="5" x="0" y="-5.08" length="middle"/>
<pin name="7" x="0" y="-7.62" length="middle"/>
<pin name="2" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="4" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="6" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="8" x="20.32" y="-7.62" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M22-5320405" prefix="J">
<description>&lt;b&gt;2.00mm (0.079") Pitch DIL Vertical SMT Pin Header, gold, 4+4 contacts&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://cdn.harwin.com/pdfs/M22-532.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="M22-5320405" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HUSSP8W50P200_2X4_800X400X500P">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="2.00mm (0.079&quot;) Pitch DIL Vertical SMT Pin Header, gold, 4+4 contacts" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Harwin" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="M22-5320405" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="855-M22-5320405" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Harwin/M22-5320405?qs=WS5Jv%252B%252Bx1qVxYYIoWES7kw%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="IRM-01-3.3">
<description>&lt;Power Supply Encapsulated PCB 3.3V 1W&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="IRM015">
<description>&lt;b&gt;IRM-01&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.4"/>
<pad name="2" x="0" y="-7.6" drill="0.9" diameter="1.4"/>
<pad name="3" x="28" y="-7.62" drill="0.9" diameter="1.4"/>
<pad name="4" x="28" y="7.58" drill="0.9" diameter="1.4"/>
<hole x="6.5" y="-0.02" drill="4.5"/>
<hole x="21.5" y="-0.02" drill="4.5"/>
<text x="13.725" y="-0.02" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="13.725" y="-0.02" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.85" y1="11.08" x2="30.85" y2="11.08" width="0.2" layer="51"/>
<wire x1="30.85" y1="11.08" x2="30.85" y2="-11.12" width="0.2" layer="51"/>
<wire x1="30.85" y1="-11.12" x2="-2.85" y2="-11.12" width="0.2" layer="51"/>
<wire x1="-2.85" y1="-11.12" x2="-2.85" y2="11.08" width="0.2" layer="51"/>
<wire x1="-2.85" y1="11.08" x2="30.85" y2="11.08" width="0.1" layer="21"/>
<wire x1="30.85" y1="11.08" x2="30.85" y2="-11.12" width="0.1" layer="21"/>
<wire x1="30.85" y1="-11.12" x2="-2.85" y2="-11.12" width="0.1" layer="21"/>
<wire x1="-2.85" y1="-11.12" x2="-2.85" y2="11.08" width="0.1" layer="21"/>
<wire x1="-4.4" y1="12.08" x2="31.85" y2="12.08" width="0.1" layer="51"/>
<wire x1="31.85" y1="12.08" x2="31.85" y2="-12.12" width="0.1" layer="51"/>
<wire x1="31.85" y1="-12.12" x2="-4.4" y2="-12.12" width="0.1" layer="51"/>
<wire x1="-4.4" y1="-12.12" x2="-4.4" y2="12.08" width="0.1" layer="51"/>
<wire x1="-3.3" y1="0.1" x2="-3.3" y2="0.1" width="0.2" layer="21"/>
<wire x1="-3.3" y1="0.1" x2="-3.3" y2="-0.1" width="0.2" layer="21" curve="-180"/>
<wire x1="-3.3" y1="-0.1" x2="-3.3" y2="-0.1" width="0.2" layer="21"/>
<wire x1="-3.3" y1="-0.1" x2="-3.3" y2="0.1" width="0.2" layer="21" curve="-180"/>
</package>
</packages>
<symbols>
<symbol name="IRM-01-3.3">
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-5.08" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="21.59" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="21.59" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="+V" x="0" y="0" length="middle"/>
<pin name="-V" x="0" y="-2.54" length="middle"/>
<pin name="AC/N" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="AC/L" x="25.4" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="IRM-01-3.3" prefix="PS">
<description>&lt;b&gt;Power Supply Encapsulated PCB 3.3V 1W&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.meanwell.com/Upload/PDF/IRM-01/IRM-01-SPEC.PDF"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="IRM-01-3.3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="IRM015">
<connects>
<connect gate="G$1" pin="+V" pad="1"/>
<connect gate="G$1" pin="-V" pad="2"/>
<connect gate="G$1" pin="AC/L" pad="4"/>
<connect gate="G$1" pin="AC/N" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="IRM-01-3.3" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/irm-01-3.3/mean-well-enterprises?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="Power Supply Encapsulated PCB 3.3V 1W" constant="no"/>
<attribute name="HEIGHT" value="15mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Mean Well" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="IRM-01-3.3" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="709-IRM01-3.3" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/MEAN-WELL/IRM-01-3.3?qs=C9r8PV%2F%252BoWPYMhpLuTFr9w%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MC14511BDG">
<description>&lt;Encoders, Decoders, Multiplexers &amp; Demultiplexers 3-18V BCD/7-Segment Decoder&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOIC127P600X175-16N">
<description>&lt;b&gt;SOIC-16 CASE751B-05&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.725" y="4.445" dx="1.55" dy="0.65" layer="1"/>
<smd name="2" x="-2.725" y="3.175" dx="1.55" dy="0.65" layer="1"/>
<smd name="3" x="-2.725" y="1.905" dx="1.55" dy="0.65" layer="1"/>
<smd name="4" x="-2.725" y="0.635" dx="1.55" dy="0.65" layer="1"/>
<smd name="5" x="-2.725" y="-0.635" dx="1.55" dy="0.65" layer="1"/>
<smd name="6" x="-2.725" y="-1.905" dx="1.55" dy="0.65" layer="1"/>
<smd name="7" x="-2.725" y="-3.175" dx="1.55" dy="0.65" layer="1"/>
<smd name="8" x="-2.725" y="-4.445" dx="1.55" dy="0.65" layer="1"/>
<smd name="9" x="2.725" y="-4.445" dx="1.55" dy="0.65" layer="1"/>
<smd name="10" x="2.725" y="-3.175" dx="1.55" dy="0.65" layer="1"/>
<smd name="11" x="2.725" y="-1.905" dx="1.55" dy="0.65" layer="1"/>
<smd name="12" x="2.725" y="-0.635" dx="1.55" dy="0.65" layer="1"/>
<smd name="13" x="2.725" y="0.635" dx="1.55" dy="0.65" layer="1"/>
<smd name="14" x="2.725" y="1.905" dx="1.55" dy="0.65" layer="1"/>
<smd name="15" x="2.725" y="3.175" dx="1.55" dy="0.65" layer="1"/>
<smd name="16" x="2.725" y="4.445" dx="1.55" dy="0.65" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.75" y1="5.25" x2="3.75" y2="5.25" width="0.05" layer="51"/>
<wire x1="3.75" y1="5.25" x2="3.75" y2="-5.25" width="0.05" layer="51"/>
<wire x1="3.75" y1="-5.25" x2="-3.75" y2="-5.25" width="0.05" layer="51"/>
<wire x1="-3.75" y1="-5.25" x2="-3.75" y2="5.25" width="0.05" layer="51"/>
<wire x1="-1.95" y1="4.95" x2="1.95" y2="4.95" width="0.1" layer="51"/>
<wire x1="1.95" y1="4.95" x2="1.95" y2="-4.95" width="0.1" layer="51"/>
<wire x1="1.95" y1="-4.95" x2="-1.95" y2="-4.95" width="0.1" layer="51"/>
<wire x1="-1.95" y1="-4.95" x2="-1.95" y2="4.95" width="0.1" layer="51"/>
<wire x1="-1.95" y1="3.68" x2="-0.68" y2="4.95" width="0.1" layer="51"/>
<wire x1="-1.6" y1="4.95" x2="1.6" y2="4.95" width="0.2" layer="21"/>
<wire x1="1.6" y1="4.95" x2="1.6" y2="-4.95" width="0.2" layer="21"/>
<wire x1="1.6" y1="-4.95" x2="-1.6" y2="-4.95" width="0.2" layer="21"/>
<wire x1="-1.6" y1="-4.95" x2="-1.6" y2="4.95" width="0.2" layer="21"/>
<wire x1="-3.5" y1="5.12" x2="-1.95" y2="5.12" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MC14511BDG">
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-20.32" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-20.32" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<text x="21.59" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="21.59" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="B_1" x="0" y="0" length="middle"/>
<pin name="C_1" x="0" y="-2.54" length="middle"/>
<pin name="!LT" x="0" y="-5.08" length="middle"/>
<pin name="!BI" x="0" y="-7.62" length="middle"/>
<pin name="LE" x="0" y="-10.16" length="middle"/>
<pin name="D_1" x="0" y="-12.7" length="middle"/>
<pin name="A_1" x="0" y="-15.24" length="middle"/>
<pin name="VSS" x="0" y="-17.78" length="middle" direction="pwr"/>
<pin name="VDD" x="25.4" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="F" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="G" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="A_2" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="B_2" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="C_2" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="D_2" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="E" x="25.4" y="-17.78" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MC14511BDG" prefix="IC">
<description>&lt;b&gt;Encoders, Decoders, Multiplexers &amp; Demultiplexers 3-18V BCD/7-Segment Decoder&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.onsemi.com/pub/Collateral/MC14511B-D.PDF"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="MC14511BDG" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P600X175-16N">
<connects>
<connect gate="G$1" pin="!BI" pad="4"/>
<connect gate="G$1" pin="!LT" pad="3"/>
<connect gate="G$1" pin="A_1" pad="7"/>
<connect gate="G$1" pin="A_2" pad="13"/>
<connect gate="G$1" pin="B_1" pad="1"/>
<connect gate="G$1" pin="B_2" pad="12"/>
<connect gate="G$1" pin="C_1" pad="2"/>
<connect gate="G$1" pin="C_2" pad="11"/>
<connect gate="G$1" pin="D_1" pad="6"/>
<connect gate="G$1" pin="D_2" pad="10"/>
<connect gate="G$1" pin="E" pad="9"/>
<connect gate="G$1" pin="F" pad="15"/>
<connect gate="G$1" pin="G" pad="14"/>
<connect gate="G$1" pin="LE" pad="5"/>
<connect gate="G$1" pin="VDD" pad="16"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="MC14511BDG" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/mc14511bdg/on-semiconductor?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="Encoders, Decoders, Multiplexers &amp; Demultiplexers 3-18V BCD/7-Segment Decoder" constant="no"/>
<attribute name="HEIGHT" value="1.75mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="onsemi" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="MC14511BDG" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="863-MC14511BDG" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/onsemi/MC14511BDG?qs=g2rIOKKlpoZ%252B2JvtniauVg%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MAX31855KASA+">
<description>&lt;MAX31855KASA+, 14 bit Temperature Sensor +/-2 C SPI 3  3.6 V 8-Pin SOIC&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOIC127P600X175-8N">
<description>&lt;b&gt;S8+4&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.712" y="1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="2" x="-2.712" y="0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="3" x="-2.712" y="-0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="4" x="-2.712" y="-1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="5" x="2.712" y="-1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="6" x="2.712" y="-0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="7" x="2.712" y="0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="8" x="2.712" y="1.905" dx="1.525" dy="0.65" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.725" y1="2.75" x2="3.725" y2="2.75" width="0.05" layer="51"/>
<wire x1="3.725" y1="2.75" x2="3.725" y2="-2.75" width="0.05" layer="51"/>
<wire x1="3.725" y1="-2.75" x2="-3.725" y2="-2.75" width="0.05" layer="51"/>
<wire x1="-3.725" y1="-2.75" x2="-3.725" y2="2.75" width="0.05" layer="51"/>
<wire x1="-1.95" y1="2.45" x2="1.95" y2="2.45" width="0.1" layer="51"/>
<wire x1="1.95" y1="2.45" x2="1.95" y2="-2.45" width="0.1" layer="51"/>
<wire x1="1.95" y1="-2.45" x2="-1.95" y2="-2.45" width="0.1" layer="51"/>
<wire x1="-1.95" y1="-2.45" x2="-1.95" y2="2.45" width="0.1" layer="51"/>
<wire x1="-1.95" y1="1.18" x2="-0.68" y2="2.45" width="0.1" layer="51"/>
<wire x1="-1.6" y1="2.45" x2="1.6" y2="2.45" width="0.2" layer="21"/>
<wire x1="1.6" y1="2.45" x2="1.6" y2="-2.45" width="0.2" layer="21"/>
<wire x1="1.6" y1="-2.45" x2="-1.6" y2="-2.45" width="0.2" layer="21"/>
<wire x1="-1.6" y1="-2.45" x2="-1.6" y2="2.45" width="0.2" layer="21"/>
<wire x1="-3.475" y1="2.58" x2="-1.95" y2="2.58" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MAX31855KASA+">
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-10.16" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<text x="21.59" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="21.59" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="GND" x="0" y="0" length="middle"/>
<pin name="T-" x="0" y="-2.54" length="middle"/>
<pin name="T+" x="0" y="-5.08" length="middle"/>
<pin name="VCC" x="0" y="-7.62" length="middle"/>
<pin name="DNC" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="SO" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="!CS" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="SCK" x="25.4" y="-7.62" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX31855KASA+" prefix="IC">
<description>&lt;b&gt;MAX31855KASA+, 14 bit Temperature Sensor +/-2 C SPI 3  3.6 V 8-Pin SOIC&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheets.maximintegrated.com/en/ds/MAX31855.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="MAX31855KASA+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P600X175-8N">
<connects>
<connect gate="G$1" pin="!CS" pad="6"/>
<connect gate="G$1" pin="DNC" pad="8"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="SCK" pad="5"/>
<connect gate="G$1" pin="SO" pad="7"/>
<connect gate="G$1" pin="T+" pad="3"/>
<connect gate="G$1" pin="T-" pad="2"/>
<connect gate="G$1" pin="VCC" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="MAX31855KASA+" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/max31855kasa/maxim-integrated?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="MAX31855KASA+, 14 bit Temperature Sensor +/-2 C SPI 3  3.6 V 8-Pin SOIC" constant="no"/>
<attribute name="HEIGHT" value="1.75mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Maxim Integrated" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="MAX31855KASA+" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="700-MAX31855KASA+" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Maxim-Integrated/MAX31855KASA%2b?qs=ffX8NcjNb2QF5YDuL5Qj5g%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="J1011F01PNL">
<description>&lt;Modular Connectors / Ethernet Connectors 1CT:1CT GRN/YEL&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="J1011F01PNL">
<description>&lt;b&gt;J1011F01PNL-5&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="0.89" diameter="1.446" shape="square"/>
<pad name="2" x="-1.27" y="-2.54" drill="0.89" diameter="1.446"/>
<pad name="3" x="-2.54" y="0" drill="0.89" diameter="1.446"/>
<pad name="4" x="-3.81" y="-2.54" drill="0.89" diameter="1.446"/>
<pad name="5" x="-5.08" y="0" drill="0.89" diameter="1.446"/>
<pad name="6" x="-6.35" y="-2.54" drill="0.89" diameter="1.446"/>
<pad name="7" x="-7.62" y="0" drill="0.89" diameter="1.446"/>
<pad name="8" x="-8.89" y="-2.54" drill="0.89" diameter="1.446"/>
<pad name="9" x="1.02" y="4.83" drill="1.02" diameter="1.53"/>
<pad name="10" x="-1.52" y="4.83" drill="1.02" diameter="1.53"/>
<pad name="11" x="-7.37" y="4.83" drill="1.02" diameter="1.53"/>
<pad name="12" x="-9.91" y="4.83" drill="1.02" diameter="1.53"/>
<pad name="MH1" x="3.43" y="-5.84" drill="1.63" diameter="2.445"/>
<pad name="MH2" x="-12.32" y="-5.84" drill="1.63" diameter="2.445"/>
<hole x="1.27" y="-8.89" drill="3.23"/>
<hole x="-10.16" y="-8.89" drill="3.23"/>
<text x="-4.445" y="-6.99" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-4.445" y="-6.99" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-12.575" y1="-19.69" x2="3.685" y2="-19.69" width="0.1" layer="51"/>
<wire x1="3.685" y1="-19.69" x2="3.685" y2="5.71" width="0.1" layer="51"/>
<wire x1="3.685" y1="5.71" x2="-12.575" y2="5.71" width="0.1" layer="51"/>
<wire x1="-12.575" y1="5.71" x2="-12.575" y2="-19.69" width="0.1" layer="51"/>
<wire x1="-14.543" y1="6.71" x2="5.652" y2="6.71" width="0.1" layer="51"/>
<wire x1="5.652" y1="6.71" x2="5.652" y2="-20.69" width="0.1" layer="51"/>
<wire x1="5.652" y1="-20.69" x2="-14.543" y2="-20.69" width="0.1" layer="51"/>
<wire x1="-14.543" y1="-20.69" x2="-14.543" y2="6.71" width="0.1" layer="51"/>
<wire x1="3.685" y1="-4.29" x2="3.685" y2="5.71" width="0.2" layer="21"/>
<wire x1="3.685" y1="5.71" x2="1.855" y2="5.71" width="0.2" layer="21"/>
<wire x1="-2.345" y1="5.71" x2="-6.545" y2="5.71" width="0.2" layer="21"/>
<wire x1="-10.745" y1="5.71" x2="-12.575" y2="5.71" width="0.2" layer="21"/>
<wire x1="-12.575" y1="5.71" x2="-12.575" y2="-4.29" width="0.2" layer="21"/>
<wire x1="-12.575" y1="-7.59" x2="-12.575" y2="-19.69" width="0.2" layer="21"/>
<wire x1="-12.575" y1="-19.69" x2="3.685" y2="-19.69" width="0.2" layer="21"/>
<wire x1="3.685" y1="-19.69" x2="3.685" y2="-7.59" width="0.2" layer="21"/>
<wire x1="4.5" y1="0" x2="4.5" y2="0" width="0.2" layer="21"/>
<wire x1="4.5" y1="0" x2="4.6" y2="0" width="0.2" layer="21" curve="180"/>
<wire x1="4.6" y1="0" x2="4.6" y2="0" width="0.2" layer="21"/>
<wire x1="4.6" y1="0" x2="4.5" y2="0" width="0.2" layer="21" curve="180"/>
<wire x1="4.5" y1="0" x2="4.6" y2="0" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="J1011F01PNL">
<wire x1="5.08" y1="2.54" x2="35.56" y2="2.54" width="0.254" layer="94"/>
<wire x1="35.56" y1="-17.78" x2="35.56" y2="2.54" width="0.254" layer="94"/>
<wire x1="35.56" y1="-17.78" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<text x="36.83" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="36.83" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="TD+" x="0" y="0" length="middle"/>
<pin name="TD-" x="0" y="-2.54" length="middle"/>
<pin name="CT_1" x="0" y="-5.08" length="middle"/>
<pin name="NC" x="0" y="-7.62" length="middle" direction="nc"/>
<pin name="CHS_GROUND" x="0" y="-10.16" length="middle"/>
<pin name="CT_2" x="0" y="-12.7" length="middle"/>
<pin name="RD+" x="0" y="-15.24" length="middle"/>
<pin name="RD-" x="40.64" y="0" length="middle" rot="R180"/>
<pin name="K_GREEN" x="40.64" y="-2.54" length="middle" rot="R180"/>
<pin name="A_GREEN" x="40.64" y="-5.08" length="middle" rot="R180"/>
<pin name="K_YELLOW" x="40.64" y="-7.62" length="middle" rot="R180"/>
<pin name="A_YELLOW" x="40.64" y="-10.16" length="middle" rot="R180"/>
<pin name="MH1" x="40.64" y="-12.7" length="middle" rot="R180"/>
<pin name="MH2" x="40.64" y="-15.24" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="J1011F01PNL" prefix="J">
<description>&lt;b&gt;Modular Connectors / Ethernet Connectors 1CT:1CT GRN/YEL&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://productfinder.pulseeng.com/doc_type/WEB301/doc_num/J402/doc_part/J402.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="J1011F01PNL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="J1011F01PNL">
<connects>
<connect gate="G$1" pin="A_GREEN" pad="10"/>
<connect gate="G$1" pin="A_YELLOW" pad="12"/>
<connect gate="G$1" pin="CHS_GROUND" pad="5"/>
<connect gate="G$1" pin="CT_1" pad="3"/>
<connect gate="G$1" pin="CT_2" pad="6"/>
<connect gate="G$1" pin="K_GREEN" pad="9"/>
<connect gate="G$1" pin="K_YELLOW" pad="11"/>
<connect gate="G$1" pin="MH1" pad="MH1"/>
<connect gate="G$1" pin="MH2" pad="MH2"/>
<connect gate="G$1" pin="NC" pad="4"/>
<connect gate="G$1" pin="RD+" pad="7"/>
<connect gate="G$1" pin="RD-" pad="8"/>
<connect gate="G$1" pin="TD+" pad="1"/>
<connect gate="G$1" pin="TD-" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="J1011F01PNL" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/j1011f01pnl/pulse-electronics-corporation?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="Modular Connectors / Ethernet Connectors 1CT:1CT GRN/YEL" constant="no"/>
<attribute name="HEIGHT" value="14.22mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Pulse" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="J1011F01PNL" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="673-J1011F01PNL" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Pulse-Electronics/J1011F01PNL?qs=8Pd6UH4uLB8hnov%252Bey5RRg%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ERJ-U02F49R9X">
<description>&lt;Anti-Sulfurated Thick Film Chip Resistor, 0402, 0.1W&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="ERJS02_U02_(0402)">
<description>&lt;b&gt;ERJS02_U02_(0402)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.5125" y="0" dx="0.5" dy="0.475" layer="1" rot="R90"/>
<smd name="2" x="0.5125" y="0" dx="0.5" dy="0.475" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.2" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.2" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.2" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.2" layer="51"/>
<circle x="-1.1125" y="0" radius="0.05" width="0.2" layer="25"/>
<wire x1="-2.0125" y1="1.25" x2="1.55" y2="1.25" width="0.05" layer="51"/>
<wire x1="1.55" y1="1.25" x2="1.55" y2="-1.25" width="0.05" layer="51"/>
<wire x1="1.55" y1="-1.25" x2="-2.0125" y2="-1.25" width="0.05" layer="51"/>
<wire x1="-2.0125" y1="-1.25" x2="-2.0125" y2="1.25" width="0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="ERJ-U02F49R9X">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ERJ-U02F49R9X" prefix="R">
<description>&lt;b&gt;Anti-Sulfurated Thick Film Chip Resistor, 0402, 0.1W&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://industrial.panasonic.com/cdbs/www-data/pdf/RDP0000/AOA0000C334.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERJ-U02F49R9X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERJS02_U02_(0402)">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Anti-Sulfurated Thick Film Chip Resistor, 0402, 0.1W" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERJ-U02F49R9X" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="C0402C104K4RACTU">
<description>&lt;SMD Comm X7R, Ceramic, 0.1 uF, 10%, 16 VDC, 40 VDC, 125C, -55C, X7R, SMD, MLCC, Temperature Stable, Class II, 10 % , 5 GOhms, 1.21 mg, 0402, 1mm, 0.5mm, 0.5mm, 0.3mm, 0.3mm, 10000, 78  Weeks, 80&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="C0402">
<description>&lt;b&gt;C0402&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.45" y="0" dx="0.62" dy="0.62" layer="1"/>
<smd name="2" x="0.45" y="0" dx="0.62" dy="0.62" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.2" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.2" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.2" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.2" layer="51"/>
<circle x="-1" y="0" radius="0.05" width="0.2" layer="25"/>
<wire x1="-1.56" y1="1.25" x2="1.56" y2="1.25" width="0.05" layer="51"/>
<wire x1="1.56" y1="1.25" x2="1.56" y2="-1.25" width="0.05" layer="51"/>
<wire x1="1.56" y1="-1.25" x2="-1.56" y2="-1.25" width="0.05" layer="51"/>
<wire x1="-1.56" y1="-1.25" x2="-1.56" y2="1.25" width="0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="C0402C104K4RACTU">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C0402C104K4RACTU" prefix="C">
<description>&lt;b&gt;SMD Comm X7R, Ceramic, 0.1 uF, 10%, 16 VDC, 40 VDC, 125C, -55C, X7R, SMD, MLCC, Temperature Stable, Class II, 10 % , 5 GOhms, 1.21 mg, 0402, 1mm, 0.5mm, 0.5mm, 0.3mm, 0.3mm, 10000, 78  Weeks, 80&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="C0402C104K4RACTU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="C0402C104K4RACTU" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/c0402c104k4ractu/kemet-corporation?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="SMD Comm X7R, Ceramic, 0.1 uF, 10%, 16 VDC, 40 VDC, 125C, -55C, X7R, SMD, MLCC, Temperature Stable, Class II, 10 % , 5 GOhms, 1.21 mg, 0402, 1mm, 0.5mm, 0.5mm, 0.3mm, 0.3mm, 10000, 78  Weeks, 80" constant="no"/>
<attribute name="HEIGHT" value="0.55mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="KEMET" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="C0402C104K4RACTU" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="80-C0402C104K4R" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/KEMET/C0402C104K4RACTU?qs=DBJr%252BvBUjU54jK7d4uAeew%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="KSZ8851SNLI-TR">
<description>&lt;Microchip KSZ8851SNLI-TR, Ethernet Controller, 100Mbps MDI/MDIX, MII, SPI, 1.8 V, 2.5 V, 3.3 V, 32-Pin MLF&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="QFN50P500X500X100-33N">
<description>&lt;b&gt;QFN55-32LD-PL-2&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.45" y="1.75" dx="0.85" dy="0.3" layer="1"/>
<smd name="2" x="-2.45" y="1.25" dx="0.85" dy="0.3" layer="1"/>
<smd name="3" x="-2.45" y="0.75" dx="0.85" dy="0.3" layer="1"/>
<smd name="4" x="-2.45" y="0.25" dx="0.85" dy="0.3" layer="1"/>
<smd name="5" x="-2.45" y="-0.25" dx="0.85" dy="0.3" layer="1"/>
<smd name="6" x="-2.45" y="-0.75" dx="0.85" dy="0.3" layer="1"/>
<smd name="7" x="-2.45" y="-1.25" dx="0.85" dy="0.3" layer="1"/>
<smd name="8" x="-2.45" y="-1.75" dx="0.85" dy="0.3" layer="1"/>
<smd name="9" x="-1.75" y="-2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="10" x="-1.25" y="-2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="11" x="-0.75" y="-2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="12" x="-0.25" y="-2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="13" x="0.25" y="-2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="14" x="0.75" y="-2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="15" x="1.25" y="-2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="16" x="1.75" y="-2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="17" x="2.45" y="-1.75" dx="0.85" dy="0.3" layer="1"/>
<smd name="18" x="2.45" y="-1.25" dx="0.85" dy="0.3" layer="1"/>
<smd name="19" x="2.45" y="-0.75" dx="0.85" dy="0.3" layer="1"/>
<smd name="20" x="2.45" y="-0.25" dx="0.85" dy="0.3" layer="1"/>
<smd name="21" x="2.45" y="0.25" dx="0.85" dy="0.3" layer="1"/>
<smd name="22" x="2.45" y="0.75" dx="0.85" dy="0.3" layer="1"/>
<smd name="23" x="2.45" y="1.25" dx="0.85" dy="0.3" layer="1"/>
<smd name="24" x="2.45" y="1.75" dx="0.85" dy="0.3" layer="1"/>
<smd name="25" x="1.75" y="2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="26" x="1.25" y="2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="27" x="0.75" y="2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="28" x="0.25" y="2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="29" x="-0.25" y="2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="30" x="-0.75" y="2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="31" x="-1.25" y="2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="32" x="-1.75" y="2.45" dx="0.85" dy="0.3" layer="1" rot="R90"/>
<smd name="33" x="0" y="0" dx="3.2" dy="3.2" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.125" y1="3.125" x2="3.125" y2="3.125" width="0.05" layer="51"/>
<wire x1="3.125" y1="3.125" x2="3.125" y2="-3.125" width="0.05" layer="51"/>
<wire x1="3.125" y1="-3.125" x2="-3.125" y2="-3.125" width="0.05" layer="51"/>
<wire x1="-3.125" y1="-3.125" x2="-3.125" y2="3.125" width="0.05" layer="51"/>
<wire x1="-2.5" y1="2.5" x2="2.5" y2="2.5" width="0.1" layer="51"/>
<wire x1="2.5" y1="2.5" x2="2.5" y2="-2.5" width="0.1" layer="51"/>
<wire x1="2.5" y1="-2.5" x2="-2.5" y2="-2.5" width="0.1" layer="51"/>
<wire x1="-2.5" y1="-2.5" x2="-2.5" y2="2.5" width="0.1" layer="51"/>
<wire x1="-2.5" y1="2" x2="-2" y2="2.5" width="0.1" layer="51"/>
<circle x="-2.875" y="2.5" radius="0.125" width="0.25" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="KSZ8851SNLI-TR">
<wire x1="5.08" y1="15.24" x2="35.56" y2="15.24" width="0.254" layer="94"/>
<wire x1="35.56" y1="-33.02" x2="35.56" y2="15.24" width="0.254" layer="94"/>
<wire x1="35.56" y1="-33.02" x2="5.08" y2="-33.02" width="0.254" layer="94"/>
<wire x1="5.08" y1="15.24" x2="5.08" y2="-33.02" width="0.254" layer="94"/>
<text x="36.83" y="20.32" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="36.83" y="17.78" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="LED0" x="0" y="0" length="middle"/>
<pin name="PME" x="0" y="-2.54" length="middle"/>
<pin name="INTRN" x="0" y="-5.08" length="middle"/>
<pin name="DGND_1" x="0" y="-7.62" length="middle"/>
<pin name="VDD_CO1.8" x="0" y="-10.16" length="middle"/>
<pin name="EDD_IO" x="0" y="-12.7" length="middle"/>
<pin name="EESK" x="0" y="-15.24" length="middle"/>
<pin name="AGND_1" x="0" y="-17.78" length="middle"/>
<pin name="VDD_A1.8" x="10.16" y="-38.1" length="middle" rot="R90"/>
<pin name="EECS" x="12.7" y="-38.1" length="middle" rot="R90"/>
<pin name="RXP" x="15.24" y="-38.1" length="middle" rot="R90"/>
<pin name="RXM" x="17.78" y="-38.1" length="middle" rot="R90"/>
<pin name="AGND_2" x="20.32" y="-38.1" length="middle" rot="R90"/>
<pin name="TXP" x="22.86" y="-38.1" length="middle" rot="R90"/>
<pin name="TXM" x="25.4" y="-38.1" length="middle" rot="R90"/>
<pin name="VDD_A3.3" x="27.94" y="-38.1" length="middle" rot="R90"/>
<pin name="DGND_3" x="40.64" y="0" length="middle" rot="R180"/>
<pin name="VDD_D1.8" x="40.64" y="-2.54" length="middle" rot="R180"/>
<pin name="DGND_2" x="40.64" y="-5.08" length="middle" rot="R180"/>
<pin name="X2" x="40.64" y="-7.62" length="middle" rot="R180"/>
<pin name="X1" x="40.64" y="-10.16" length="middle" rot="R180"/>
<pin name="RSTN" x="40.64" y="-12.7" length="middle" rot="R180"/>
<pin name="AGND_3" x="40.64" y="-15.24" length="middle" rot="R180"/>
<pin name="ISET" x="40.64" y="-17.78" length="middle" rot="R180"/>
<pin name="EPAD" x="10.16" y="20.32" length="middle" rot="R270"/>
<pin name="LED1" x="12.7" y="20.32" length="middle" rot="R270"/>
<pin name="SI" x="15.24" y="20.32" length="middle" rot="R270"/>
<pin name="VDD_IO_2" x="17.78" y="20.32" length="middle" rot="R270"/>
<pin name="DGND_4" x="20.32" y="20.32" length="middle" rot="R270"/>
<pin name="SCLK" x="22.86" y="20.32" length="middle" rot="R270"/>
<pin name="SO" x="25.4" y="20.32" length="middle" rot="R270"/>
<pin name="CSN" x="27.94" y="20.32" length="middle" rot="R270"/>
<pin name="VDD_IO_1" x="30.48" y="20.32" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="KSZ8851SNLI-TR" prefix="IC">
<description>&lt;b&gt;Microchip KSZ8851SNLI-TR, Ethernet Controller, 100Mbps MDI/MDIX, MII, SPI, 1.8 V, 2.5 V, 3.3 V, 32-Pin MLF&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en581700"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="KSZ8851SNLI-TR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN50P500X500X100-33N">
<connects>
<connect gate="G$1" pin="AGND_1" pad="8"/>
<connect gate="G$1" pin="AGND_2" pad="13"/>
<connect gate="G$1" pin="AGND_3" pad="18"/>
<connect gate="G$1" pin="CSN" pad="26"/>
<connect gate="G$1" pin="DGND_1" pad="4"/>
<connect gate="G$1" pin="DGND_2" pad="22"/>
<connect gate="G$1" pin="DGND_3" pad="24"/>
<connect gate="G$1" pin="DGND_4" pad="29"/>
<connect gate="G$1" pin="EDD_IO" pad="6"/>
<connect gate="G$1" pin="EECS" pad="10"/>
<connect gate="G$1" pin="EESK" pad="7"/>
<connect gate="G$1" pin="EPAD" pad="33"/>
<connect gate="G$1" pin="INTRN" pad="3"/>
<connect gate="G$1" pin="ISET" pad="17"/>
<connect gate="G$1" pin="LED0" pad="1"/>
<connect gate="G$1" pin="LED1" pad="32"/>
<connect gate="G$1" pin="PME" pad="2"/>
<connect gate="G$1" pin="RSTN" pad="19"/>
<connect gate="G$1" pin="RXM" pad="12"/>
<connect gate="G$1" pin="RXP" pad="11"/>
<connect gate="G$1" pin="SCLK" pad="28"/>
<connect gate="G$1" pin="SI" pad="31"/>
<connect gate="G$1" pin="SO" pad="27"/>
<connect gate="G$1" pin="TXM" pad="15"/>
<connect gate="G$1" pin="TXP" pad="14"/>
<connect gate="G$1" pin="VDD_A1.8" pad="9"/>
<connect gate="G$1" pin="VDD_A3.3" pad="16"/>
<connect gate="G$1" pin="VDD_CO1.8" pad="5"/>
<connect gate="G$1" pin="VDD_D1.8" pad="23"/>
<connect gate="G$1" pin="VDD_IO_1" pad="25"/>
<connect gate="G$1" pin="VDD_IO_2" pad="30"/>
<connect gate="G$1" pin="X1" pad="20"/>
<connect gate="G$1" pin="X2" pad="21"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="KSZ8851SNLI-TR" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/ksz8851snli-tr/microchip-technology" constant="no"/>
<attribute name="DESCRIPTION" value="Microchip KSZ8851SNLI-TR, Ethernet Controller, 100Mbps MDI/MDIX, MII, SPI, 1.8 V, 2.5 V, 3.3 V, 32-Pin MLF" constant="no"/>
<attribute name="HEIGHT" value="1mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="KSZ8851SNLI-TR" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="998-KSZ8851SNLITR" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Microchip-Technology-Atmel/KSZ8851SNLI-TR?qs=U6T8BxXiZAVOThG4jr6SOQ%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CHV0805-FX-1004EST">
<description>&lt;ResHV ST 0805 1M 1% 0.125W TCR100&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RESC2012X60N">
<description>&lt;b&gt;SIZE CODE 0805&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.95" y="0" dx="1.4" dy="1" layer="1" rot="R90"/>
<smd name="2" x="0.95" y="0" dx="1.4" dy="1" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.7" y1="0.95" x2="1.7" y2="0.95" width="0.05" layer="51"/>
<wire x1="1.7" y1="0.95" x2="1.7" y2="-0.95" width="0.05" layer="51"/>
<wire x1="1.7" y1="-0.95" x2="-1.7" y2="-0.95" width="0.05" layer="51"/>
<wire x1="-1.7" y1="-0.95" x2="-1.7" y2="0.95" width="0.05" layer="51"/>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.1" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.1" layer="51"/>
<wire x1="0" y1="0.525" x2="0" y2="-0.525" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="CHV0805-FX-1004EST">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CHV0805-FX-1004EST" prefix="R">
<description>&lt;b&gt;ResHV ST 0805 1M 1% 0.125W TCR100&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.digikey.com/en/products/detail/bourns-inc/CHV0805-JW-334ELF/5175970"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CHV0805-FX-1004EST" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC2012X60N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="ResHV ST 0805 1M 1% 0.125W TCR100" constant="no"/>
<attribute name="HEIGHT" value="0.6mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Bourns" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CHV0805-FX-1004EST" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="652-CHV0805FX1004EST" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Bourns/CHV0805-FX-1004EST?qs=QNEnbhJQKvb69hgGpv9kmQ%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="C4520X7R3D102K130KA">
<description>&lt;MULTILAYER CERAMIC CHIP CAPACITORS, 4520, Commercial grade, general (Up to 75V)&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="C4520_COMMERCIAL">
<description>&lt;b&gt;C4520_Commercial&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.35" y="0" dx="1.75" dy="1.3" layer="1" rot="R90"/>
<smd name="2" x="2.35" y="0" dx="1.75" dy="1.3" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.25" y1="1" x2="2.25" y2="1" width="0.2" layer="51"/>
<wire x1="2.25" y1="1" x2="2.25" y2="-1" width="0.2" layer="51"/>
<wire x1="2.25" y1="-1" x2="-2.25" y2="-1" width="0.2" layer="51"/>
<wire x1="-2.25" y1="-1" x2="-2.25" y2="1" width="0.2" layer="51"/>
<circle x="-3.7" y="0" radius="0.05" width="0.2" layer="25"/>
<wire x1="-4.8" y1="2.2" x2="4" y2="2.2" width="0.05" layer="51"/>
<wire x1="4" y1="2.2" x2="4" y2="-2.2" width="0.05" layer="51"/>
<wire x1="4" y1="-2.2" x2="-4.8" y2="-2.2" width="0.05" layer="51"/>
<wire x1="-4.8" y1="-2.2" x2="-4.8" y2="2.2" width="0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="C4520X7R3D102K130KA">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C4520X7R3D102K130KA" prefix="C">
<description>&lt;b&gt;MULTILAYER CERAMIC CHIP CAPACITORS, 4520, Commercial grade, general (Up to 75V)&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/mlcc/catalog/mlcc_commercial_highvoltage_en.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="C4520X7R3D102K130KA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="C4520_COMMERCIAL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="C4520X7R3D102K130KA" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/c4520x7r3d102k130ka/tdk" constant="no"/>
<attribute name="DESCRIPTION" value="MULTILAYER CERAMIC CHIP CAPACITORS, 4520, Commercial grade, general (Up to 75V)" constant="no"/>
<attribute name="HEIGHT" value="1mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TDK" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="C4520X7R3D102K130KA" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="810-C4520X7R3D102K" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TDK/C4520X7R3D102K130KA?qs=NRhsANhppD%2FmDDEB06mgKg%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="FA-238_25.0000MB-C3">
<description>&lt;Crystals 25MHz 50ppm 18pF -20C +70C&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="FA238300000MBC0">
<description>&lt;b&gt;FA-238 30.0000MB-C0-2&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.1" y="-0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="2" x="1.1" y="-0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="3" x="1.1" y="0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="4" x="-1.1" y="0.8" dx="1.4" dy="1.2" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.6" y1="1.25" x2="1.6" y2="1.25" width="0.2" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1.6" y2="-1.25" width="0.2" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="-1.6" y2="-1.25" width="0.2" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="-1.6" y2="1.25" width="0.2" layer="51"/>
<wire x1="-2.3" y1="1.9" x2="2.3" y2="1.9" width="0.1" layer="51"/>
<wire x1="2.3" y1="1.9" x2="2.3" y2="-1.9" width="0.1" layer="51"/>
<wire x1="2.3" y1="-1.9" x2="-2.3" y2="-1.9" width="0.1" layer="51"/>
<wire x1="-2.3" y1="-1.9" x2="-2.3" y2="1.9" width="0.1" layer="51"/>
<wire x1="-0.1" y1="1.25" x2="0.1" y2="1.25" width="0.1" layer="21"/>
<wire x1="-0.1" y1="-1.25" x2="0.1" y2="-1.25" width="0.1" layer="21"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.6" width="0.1" layer="21"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.7" width="0.1" layer="21" curve="180"/>
<wire x1="-1.1" y1="-1.7" x2="-1.1" y2="-1.7" width="0.1" layer="21"/>
<wire x1="-1.1" y1="-1.7" x2="-1.1" y2="-1.6" width="0.1" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="FA-238_25.0000MB-C3">
<wire x1="5.08" y1="2.54" x2="35.56" y2="2.54" width="0.254" layer="94"/>
<wire x1="35.56" y1="-5.08" x2="35.56" y2="2.54" width="0.254" layer="94"/>
<wire x1="35.56" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="36.83" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="36.83" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="CRYSTAL_1" x="0" y="-2.54" length="middle"/>
<pin name="GND_1" x="40.64" y="-2.54" length="middle" rot="R180"/>
<pin name="CRYSTAL_2" x="40.64" y="0" length="middle" rot="R180"/>
<pin name="GND_2" x="0" y="0" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FA-238_25.0000MB-C3" prefix="Y">
<description>&lt;b&gt;Crystals 25MHz 50ppm 18pF -20C +70C&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://support.epson.biz/td/api/doc_check.php?dl=brief_FA-238&amp;lang=en"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="FA-238_25.0000MB-C3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FA238300000MBC0">
<connects>
<connect gate="G$1" pin="CRYSTAL_1" pad="1"/>
<connect gate="G$1" pin="CRYSTAL_2" pad="3"/>
<connect gate="G$1" pin="GND_1" pad="2"/>
<connect gate="G$1" pin="GND_2" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="FA-238 25.0000MB-C3" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/fa-23825.0000mb-c3/epson-electronics-america" constant="no"/>
<attribute name="DESCRIPTION" value="Crystals 25MHz 50ppm 18pF -20C +70C" constant="no"/>
<attribute name="HEIGHT" value="0.7mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Epson Timing" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="FA-238 25.0000MB-C3" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="732-FA238-25B-C3" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Epson-Timing/FA-238-25.0000MB-C3?qs=CANAagUtPAqYIDF5A41Crg%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CBR04C220J5GAC">
<description>&lt;CBR-SMD RF C0G, Ceramic, 22 pF, 5%, 50 VDC, 125 VDC, 125C, -55C, C0G, SMD, Fixed, RF, Ultra High Q, Low ESR, Class I, 0.12 % , 10 GOhms, 840, 1.4 mg, 0402, 1mm, 0.5mm, 0.5mm, 0.25mm, 10000, 78  Weeks, 120&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CBR04C">
<description>&lt;b&gt;CBR04C&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.45" y="0" dx="0.62" dy="0.62" layer="1"/>
<smd name="2" x="0.45" y="0" dx="0.62" dy="0.62" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.2" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.2" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.2" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.2" layer="51"/>
<circle x="-1.1" y="0" radius="0.05" width="0.2" layer="25"/>
<wire x1="-1.56" y1="1.25" x2="1.56" y2="1.25" width="0.05" layer="51"/>
<wire x1="1.56" y1="1.25" x2="1.56" y2="-1.25" width="0.05" layer="51"/>
<wire x1="1.56" y1="-1.25" x2="-1.56" y2="-1.25" width="0.05" layer="51"/>
<wire x1="-1.56" y1="-1.25" x2="-1.56" y2="1.25" width="0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CBR04C220J5GAC">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CBR04C220J5GAC" prefix="C">
<description>&lt;b&gt;CBR-SMD RF C0G, Ceramic, 22 pF, 5%, 50 VDC, 125 VDC, 125C, -55C, C0G, SMD, Fixed, RF, Ultra High Q, Low ESR, Class I, 0.12 % , 10 GOhms, 840, 1.4 mg, 0402, 1mm, 0.5mm, 0.5mm, 0.25mm, 10000, 78  Weeks, 120&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://content.kemet.com/datasheets/KEM_C1030_CBR_SMD.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CBR04C220J5GAC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CBR04C">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="CBR04C220J5GAC" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/cbr04c220j5gac/kemet-corporation?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="CBR-SMD RF C0G, Ceramic, 22 pF, 5%, 50 VDC, 125 VDC, 125C, -55C, C0G, SMD, Fixed, RF, Ultra High Q, Low ESR, Class I, 0.12 % , 10 GOhms, 840, 1.4 mg, 0402, 1mm, 0.5mm, 0.5mm, 0.25mm, 10000, 78  Weeks, 120" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="KEMET" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CBR04C220J5GAC" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="80-CBR04C220J5G" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/KEMET/CBR04C220J5GAC?qs=BjUX18ghZXi0endstTtQyQ%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RC0402FR-073K01L">
<description>&lt;Thick Film Resistors - SMD 3.01K OHM 1%&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RESC1005X40N">
<description>&lt;b&gt;RC0402&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.175" y1="0.55" x2="1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="0.55" x2="1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="-0.55" x2="-1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="-1.175" y1="-0.55" x2="-1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="RC0402FR-073K01L">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RC0402FR-073K01L" prefix="R">
<description>&lt;b&gt;Thick Film Resistors - SMD 3.01K OHM 1%&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheet.datasheetarchive.com/originals/distributors/Datasheets_SAMA/902f9e387b938f871d31120f5fc1d65e.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RC0402FR-073K01L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1005X40N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="RC0402FR-073K01L" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/rc0402fr-073k01l/yageo" constant="no"/>
<attribute name="DESCRIPTION" value="Thick Film Resistors - SMD 3.01K OHM 1%" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="KEMET" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="RC0402FR-073K01L" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="603-RC0402FR-073K01L" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.com/Search/Refine.aspx?Keyword=603-RC0402FR-073K01L" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RC0402FR-0710KP">
<description>&lt;YAGEO - RC0402FR-0710KP - SMD Chip Resistor, 10 kohm, +/- 1%, 62.5 mW, 0402 [1005 Metric], Thick Film, General Purpose&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RESC1005X40N">
<description>&lt;b&gt;RC0402&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.175" y1="0.55" x2="1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="0.55" x2="1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="-0.55" x2="-1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="-1.175" y1="-0.55" x2="-1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="RC0402FR-0710KP">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RC0402FR-0710KP" prefix="R">
<description>&lt;b&gt;YAGEO - RC0402FR-0710KP - SMD Chip Resistor, 10 kohm, +/- 1%, 62.5 mW, 0402 [1005 Metric], Thick Film, General Purpose&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/2/RC0402FR-0710KP.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RC0402FR-0710KP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1005X40N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="RC0402FR-0710KP" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/rc0402fr-0710kp/yageo?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="YAGEO - RC0402FR-0710KP - SMD Chip Resistor, 10 kohm, +/- 1%, 62.5 mW, 0402 [1005 Metric], Thick Film, General Purpose" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="KEMET" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="RC0402FR-0710KP" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="603-RC0402FR-0710KP" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/YAGEO/RC0402FR-0710KP?qs=oypCK0zG325Ov8hhvMZZMg%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CR0402-FX-4701GLF">
<description>&lt;Thick Film Resistors - SMD 4.7K OHM 1%&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RESC1005X40N">
<description>&lt;b&gt;CR0402&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<smd name="2" x="0.55" y="0" dx="0.75" dy="0.6" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.175" y1="0.55" x2="1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="0.55" x2="1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="1.175" y1="-0.55" x2="-1.175" y2="-0.55" width="0.05" layer="51"/>
<wire x1="-1.175" y1="-0.55" x2="-1.175" y2="0.55" width="0.05" layer="51"/>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CR0402-FX-4701GLF">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CR0402-FX-4701GLF" prefix="R">
<description>&lt;b&gt;Thick Film Resistors - SMD 4.7K OHM 1%&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.bourns.com/pdfs/CR0402.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CR0402-FX-4701GLF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1005X40N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Thick Film Resistors - SMD 4.7K OHM 1%" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Bourns" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CR0402-FX-4701GLF" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="652-CR0402FX-4701GLF" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Bourns/CR0402-FX-4701GLF?qs=ePR1ZvdkOKK%252Bab9lx6TEtw%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="G6CU-1114P-US-DC3">
<description>&lt;Electromechanical Relay SPST-NO 10A 3VDC 45Ohm Through Hole - Bulk&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="G6CU1114PUSDC3">
<description>&lt;b&gt;G6CU-1114P-US-DC3-2&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.1" diameter="1.65"/>
<pad name="3" x="10.16" y="0" drill="1.1" diameter="1.65"/>
<pad name="4" x="17.78" y="0" drill="1.1" diameter="1.65"/>
<pad name="8" x="0" y="10.16" drill="1.1" diameter="1.65"/>
<text x="8.88" y="5.08" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="8.88" y="5.08" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.12" y1="12.58" x2="18.88" y2="12.58" width="0.1" layer="51"/>
<wire x1="18.88" y1="12.58" x2="18.88" y2="-2.42" width="0.1" layer="51"/>
<wire x1="18.88" y1="-2.42" x2="-1.12" y2="-2.42" width="0.1" layer="51"/>
<wire x1="-1.12" y1="-2.42" x2="-1.12" y2="12.58" width="0.1" layer="51"/>
<wire x1="-2.12" y1="-3.42" x2="19.88" y2="-3.42" width="0.1" layer="51"/>
<wire x1="19.88" y1="-3.42" x2="19.88" y2="13.58" width="0.1" layer="51"/>
<wire x1="19.88" y1="13.58" x2="-2.12" y2="13.58" width="0.1" layer="51"/>
<wire x1="-2.12" y1="13.58" x2="-2.12" y2="-3.42" width="0.1" layer="51"/>
<wire x1="-1.8" y1="0.08" x2="-1.8" y2="0.08" width="0.2" layer="21"/>
<wire x1="-1.8" y1="0.08" x2="-1.6" y2="0.08" width="0.2" layer="21" curve="180"/>
<wire x1="-1.6" y1="0.08" x2="-1.6" y2="0.08" width="0.2" layer="21"/>
<wire x1="-1.6" y1="0.08" x2="-1.8" y2="0.08" width="0.2" layer="21" curve="180"/>
<wire x1="-1.8" y1="0.08" x2="-1.8" y2="0.08" width="0.2" layer="21"/>
<wire x1="-1.8" y1="0.08" x2="-1.6" y2="0.08" width="0.2" layer="21" curve="180"/>
<wire x1="-1.12" y1="-1" x2="-1.12" y2="-2.42" width="0.2" layer="21"/>
<wire x1="-1.12" y1="-2.42" x2="18.88" y2="-2.42" width="0.2" layer="21"/>
<wire x1="18.88" y1="-2.42" x2="18.88" y2="-1" width="0.2" layer="21"/>
<wire x1="-1.12" y1="1.5" x2="-1.12" y2="8.5" width="0.2" layer="21"/>
<wire x1="18.88" y1="1.5" x2="18.88" y2="12.58" width="0.2" layer="21"/>
<wire x1="18.88" y1="12.58" x2="-1.12" y2="12.5" width="0.2" layer="21"/>
<wire x1="-1.12" y1="12.5" x2="-1.12" y2="11.5" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="G6CU-1114P-US-DC3">
<wire x1="5.08" y1="2.54" x2="58.42" y2="2.54" width="0.254" layer="94"/>
<wire x1="58.42" y1="-7.62" x2="58.42" y2="2.54" width="0.254" layer="94"/>
<wire x1="58.42" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="59.69" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="59.69" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="COIL(SET-)(RESET+)" x="0" y="0" length="middle"/>
<pin name="COM" x="0" y="-2.54" length="middle"/>
<pin name="NO" x="0" y="-5.08" length="middle"/>
<pin name="COIL(SET+)(RESET-)" x="63.5" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="G6CU-1114P-US-DC3" prefix="K">
<description>&lt;b&gt;Electromechanical Relay SPST-NO 10A 3VDC 45Ohm Through Hole - Bulk&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.mouser.mx/ProductDetail/Omron-Electronics/G6CU-1114P-US-DC3?qs=wkx8pu8tL7J61R5utGxXEw=="&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="G6CU-1114P-US-DC3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="G6CU1114PUSDC3">
<connects>
<connect gate="G$1" pin="COIL(SET+)(RESET-)" pad="8"/>
<connect gate="G$1" pin="COIL(SET-)(RESET+)" pad="1"/>
<connect gate="G$1" pin="COM" pad="3"/>
<connect gate="G$1" pin="NO" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Electromechanical Relay SPST-NO 10A 3VDC 45Ohm Through Hole - Bulk" constant="no"/>
<attribute name="HEIGHT" value="10mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Omron Electronics" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="G6CU-1114P-US-DC3" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="653-G6CU-1114P-USDC3" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Omron-Electronics/G6CU-1114P-US-DC3?qs=wkx8pu8tL7J61R5utGxXEw%3D%3D" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BAS16">
<description>&lt;Small signal diode,BAS16 0.25A 85V Infineon BAS16, SMT Switching Diode, 85V 250mA, 4ns, 3-Pin SOT-23&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOT95P240X110-3N">
<description>&lt;b&gt;SOT23_BCR133&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.25" y="0.95" dx="0.85" dy="0.6" layer="1"/>
<smd name="2" x="-1.25" y="-0.95" dx="0.85" dy="0.6" layer="1"/>
<smd name="3" x="1.25" y="0" dx="0.85" dy="0.6" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.925" y1="1.75" x2="1.925" y2="1.75" width="0.05" layer="51"/>
<wire x1="1.925" y1="1.75" x2="1.925" y2="-1.75" width="0.05" layer="51"/>
<wire x1="1.925" y1="-1.75" x2="-1.925" y2="-1.75" width="0.05" layer="51"/>
<wire x1="-1.925" y1="-1.75" x2="-1.925" y2="1.75" width="0.05" layer="51"/>
<wire x1="-0.65" y1="1.45" x2="0.65" y2="1.45" width="0.1" layer="51"/>
<wire x1="0.65" y1="1.45" x2="0.65" y2="-1.45" width="0.1" layer="51"/>
<wire x1="0.65" y1="-1.45" x2="-0.65" y2="-1.45" width="0.1" layer="51"/>
<wire x1="-0.65" y1="-1.45" x2="-0.65" y2="1.45" width="0.1" layer="51"/>
<wire x1="-0.65" y1="0.5" x2="0.3" y2="1.45" width="0.1" layer="51"/>
<wire x1="-0.475" y1="1.45" x2="0.475" y2="1.45" width="0.2" layer="21"/>
<wire x1="0.475" y1="1.45" x2="0.475" y2="-1.45" width="0.2" layer="21"/>
<wire x1="0.475" y1="-1.45" x2="-0.475" y2="-1.45" width="0.2" layer="21"/>
<wire x1="-0.475" y1="-1.45" x2="-0.475" y2="1.45" width="0.2" layer="21"/>
<wire x1="-1.675" y1="1.5" x2="-0.825" y2="1.5" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="BAS16">
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-5.08" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="29.21" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="29.21" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="ANODE" x="0" y="0" length="middle"/>
<pin name="NC" x="0" y="-2.54" length="middle" direction="nc"/>
<pin name="CATHODE" x="33.02" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BAS16" prefix="D">
<description>&lt;b&gt;Small signal diode,BAS16 0.25A 85V Infineon BAS16, SMT Switching Diode, 85V 250mA, 4ns, 3-Pin SOT-23&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.infineon.com/dgdl/Infineon-BAS16SERIES-DS-v01_01-en.pdf?fileId=db3a30431400ef6801141b93811b03ff"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="BAS16" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT95P240X110-3N">
<connects>
<connect gate="G$1" pin="ANODE" pad="1"/>
<connect gate="G$1" pin="CATHODE" pad="3"/>
<connect gate="G$1" pin="NC" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Small signal diode,BAS16 0.25A 85V Infineon BAS16, SMT Switching Diode, 85V 250mA, 4ns, 3-Pin SOT-23" constant="no"/>
<attribute name="HEIGHT" value="1.1mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Infineon" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="BAS16" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ERJ-PA3F1000V">
<description>&lt;ERJPA3 Resistors 0.25W 0603 100R 1% Panasonic ERJPA3 Series Thick Film Surface Mount Resistor 0603 Case 100 +/-1% 0.25W +/-100ppm/C&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="ERJP03_PA3_(0603)">
<description>&lt;b&gt;ERJP03_PA3_(0603)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.725" y="0" dx="0.9" dy="0.65" layer="1" rot="R90"/>
<smd name="2" x="0.725" y="0" dx="0.9" dy="0.65" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.2" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.2" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.2" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.2" layer="51"/>
<circle x="-1.575" y="0" radius="0.05" width="0.2" layer="25"/>
<wire x1="-2.475" y1="1.4" x2="1.85" y2="1.4" width="0.05" layer="51"/>
<wire x1="1.85" y1="1.4" x2="1.85" y2="-1.4" width="0.05" layer="51"/>
<wire x1="1.85" y1="-1.4" x2="-2.475" y2="-1.4" width="0.05" layer="51"/>
<wire x1="-2.475" y1="-1.4" x2="-2.475" y2="1.4" width="0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="ERJ-PA3F1000V">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ERJ-PA3F1000V" prefix="R">
<description>&lt;b&gt;ERJPA3 Resistors 0.25W 0603 100R 1% Panasonic ERJPA3 Series Thick Film Surface Mount Resistor 0603 Case 100 +/-1% 0.25W +/-100ppm/C&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERJ-PA3F1000V" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERJP03_PA3_(0603)">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="ERJPA3 Resistors 0.25W 0603 100R 1% Panasonic ERJPA3 Series Thick Film Surface Mount Resistor 0603 Case 100 +/-1% 0.25W +/-100ppm/C" constant="no"/>
<attribute name="HEIGHT" value="0.55mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERJ-PA3F1000V" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="667-ERJ-PA3F1000V" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-PA3F1000V" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="J6" library="PRT-13612" deviceset="PRT-13612" device=""/>
<part name="IC16" library="ATSAM4S2AB-ANR" deviceset="ATSAM4S2AB-ANR" device=""/>
<part name="C28" library="C0805C104K5RAC7411" deviceset="C0805C104K5RAC7411" device="" value="0.1uF"/>
<part name="SUPPLY93" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY94" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="FRAME2" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_B_L" device=""/>
<part name="S1" library="SKRAAKE010" deviceset="SKRAAKE010" device=""/>
<part name="R30" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R33" library="CR0402-FX-39R0GLF" deviceset="CR0402-FX-39R0GLF" device="" value="39"/>
<part name="SUPPLY7" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY23" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="S2" library="SKRAAKE010" deviceset="SKRAAKE010" device=""/>
<part name="R31" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R32" library="CR0402-FX-39R0GLF" deviceset="CR0402-FX-39R0GLF" device="" value="39"/>
<part name="SUPPLY8" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY22" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="S3" library="SKRAAKE010" deviceset="SKRAAKE010" device=""/>
<part name="R34" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R35" library="CR0402-FX-39R0GLF" deviceset="CR0402-FX-39R0GLF" device="" value="39"/>
<part name="SUPPLY24" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY25" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="SUPPLY18" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U2" library="5055323-9" deviceset="5055323-9" device=""/>
<part name="U3" library="5055323-9" deviceset="5055323-9" device=""/>
<part name="PS1" library="HLK-PM03" deviceset="HLK-PM03" device=""/>
<part name="RV1" library="MOV-10D561K" deviceset="MOV-10D561K" device=""/>
<part name="C1" library="B32922X2104K000" deviceset="B32922X2104K000" device="" value="0.1uF"/>
<part name="C2" library="860010473011" deviceset="860010473011" device="" value="220uF"/>
<part name="F1" library="RST_500_AMMO" deviceset="RST_500_AMMO" device="" value="0.5A Slow Blow"/>
<part name="Y1" library="NX3225GA-12MHZ-STD-CRG-2" deviceset="NX3225GA-12MHZ-STD-CRG-2" device=""/>
<part name="C3" library="04025U180FAT2A" deviceset="04025U180FAT2A" device="" value="18pF"/>
<part name="C4" library="04025U180FAT2A" deviceset="04025U180FAT2A" device="" value="18pF"/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="J1" library="M22-5320405" deviceset="M22-5320405" device=""/>
<part name="PS2(DNI)" library="IRM-01-3.3" deviceset="IRM-01-3.3" device=""/>
<part name="IC2" library="MAX31855KASA+" deviceset="MAX31855KASA+" device=""/>
<part name="FRAME4" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_B_L" device=""/>
<part name="DS6" library="HDSM-283L" deviceset="HDSM-283L" device=""/>
<part name="IC8" library="MC14511BDG" deviceset="MC14511BDG" device=""/>
<part name="R85" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R86" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R87" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R88" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R89" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R90" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R91" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="SUPPLY78" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY79" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="R92" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R93" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R94" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R95" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="SUPPLY80" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY81" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY82" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY83" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY84" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY85" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="DS7" library="HDSM-283L" deviceset="HDSM-283L" device=""/>
<part name="IC10" library="MC14511BDG" deviceset="MC14511BDG" device=""/>
<part name="R96" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R97" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R98" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R99" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R100" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R101" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R102" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="SUPPLY86" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY87" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="R103" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R104" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R105" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R106" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="SUPPLY88" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY89" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY90" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY91" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY92" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY95" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="DS8" library="HDSM-283L" deviceset="HDSM-283L" device=""/>
<part name="IC11" library="MC14511BDG" deviceset="MC14511BDG" device=""/>
<part name="R107" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R108" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R109" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R110" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R111" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R112" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R113" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="SUPPLY96" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY97" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="R114" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R115" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R116" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="R117" library="CRCW040210K0FKEDC" deviceset="CRCW040210K0FKEDC" device="" value="10K"/>
<part name="SUPPLY98" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY99" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY100" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY101" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY102" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY103" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="J4" library="J1011F01PNL" deviceset="J1011F01PNL" device=""/>
<part name="R51" library="ERJ-U02F49R9X" deviceset="ERJ-U02F49R9X" device="" value="49.9"/>
<part name="R52" library="ERJ-U02F49R9X" deviceset="ERJ-U02F49R9X" device="" value="49.9"/>
<part name="R53" library="ERJ-U02F49R9X" deviceset="ERJ-U02F49R9X" device="" value="49.9"/>
<part name="R54" library="ERJ-U02F49R9X" deviceset="ERJ-U02F49R9X" device="" value="49.9"/>
<part name="C16" library="C0402C104K4RACTU" deviceset="C0402C104K4RACTU" device="" value="0.1uF"/>
<part name="C17" library="C0402C104K4RACTU" deviceset="C0402C104K4RACTU" device="" value="0.1uF"/>
<part name="SUPPLY54" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY55" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="IC9" library="KSZ8851SNLI-TR" deviceset="KSZ8851SNLI-TR" device=""/>
<part name="R55" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="R56" library="CR0402-JW-221GLF" deviceset="CR0402-JW-221GLF" device="" value="220"/>
<part name="SUPPLY56" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="" value="EGND"/>
<part name="SUPPLY57" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="R57" library="CHV0805-FX-1004EST" deviceset="CHV0805-FX-1004EST" device="" value="1M"/>
<part name="C18" library="C4520X7R3D102K130KA" deviceset="C4520X7R3D102K130KA" device="" value="1000pF"/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="" value="EGND"/>
<part name="Y3" library="FA-238_25.0000MB-C3" deviceset="FA-238_25.0000MB-C3" device=""/>
<part name="SUPPLY58" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY59" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="C19" library="CBR04C220J5GAC" deviceset="CBR04C220J5GAC" device="" value="22pF"/>
<part name="C20" library="CBR04C220J5GAC" deviceset="CBR04C220J5GAC" device="" value="22pF"/>
<part name="SUPPLY60" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY61" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY62" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="SUPPLY63" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY64" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY65" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY66" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="R58" library="RC0402FR-073K01L" deviceset="RC0402FR-073K01L" device="" value="3.01K"/>
<part name="SUPPLY67" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY68" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device="" value="+3.3V"/>
<part name="R59" library="RC0402FR-0710KP" deviceset="RC0402FR-0710KP" device="" value="10K"/>
<part name="R60" library="CR0402-FX-4701GLF" deviceset="CR0402-FX-4701GLF" device="" value="4.7K"/>
<part name="R61" library="CR0402-FX-4701GLF" deviceset="CR0402-FX-4701GLF" device="" value="4.7K"/>
<part name="SUPPLY69" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_B_L" device=""/>
<part name="K1" library="G6CU-1114P-US-DC3" deviceset="G6CU-1114P-US-DC3" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="D1" library="BAS16" deviceset="BAS16" device=""/>
<part name="R29" library="ERJ-PA3F1000V" deviceset="ERJ-PA3F1000V" device="" value="100"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="152.4" y="132.08" size="1.778" layer="91">A0, A1, A2, A3, A4 - 5 to 32 I/O decoder LED control
BTN_MENU - Menu / Set button
BTN_UP - Up button
BTN_DN - Down button
RELAY_CTRL - controls the normally open dry contact relay
NPCS0 - chip select for peripheral, TC reader
NPCS1 - chip select for peripheral, Ethernet controller
</text>
<text x="71.12" y="246.38" size="1.778" layer="91">Layout note: No copper between AC pins and DC pins 
under the HLK-PM03 through all layers of the PCB.</text>
<text x="60.96" y="190.5" size="1.778" layer="91">### 240VAC to 3.3VDC ###</text>
<text x="45.72" y="119.38" size="1.778" layer="91">### TC Reader ###</text>
<text x="325.12" y="93.98" size="1.778" layer="91">### MCU and JTAG ###</text>
<text x="71.12" y="10.16" size="1.778" layer="91">### Menu and Navigation buttons ###</text>
<text x="-2.54" y="182.88" size="1.778" layer="91">U2 and U3 are Power tap screw
 mount for ring terminal cables</text>
</plain>
<instances>
<instance part="J6" gate="G$1" x="33.02" y="142.24" smashed="yes" rot="MR0">
<attribute name="NAME" x="26.67" y="134.62" size="1.778" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="26.67" y="132.08" size="1.778" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="IC16" gate="G$1" x="261.62" y="137.16" smashed="yes">
<attribute name="NAME" x="308.61" y="167.64" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="308.61" y="165.1" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C28" gate="G$1" x="38.1" y="134.62" smashed="yes" rot="R270">
<attribute name="NAME" x="41.91" y="125.73" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="41.91" y="128.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY93" gate="GND" x="38.1" y="116.84" smashed="yes">
<attribute name="VALUE" x="36.195" y="113.665" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY94" gate="GND" x="38.1" y="152.4" smashed="yes">
<attribute name="VALUE" x="36.195" y="149.225" size="1.778" layer="96"/>
</instance>
<instance part="FRAME2" gate="G$1" x="-20.32" y="-12.7" smashed="yes"/>
<instance part="FRAME2" gate="G$2" x="304.8" y="-12.7" smashed="yes">
<attribute name="LAST_DATE_TIME" x="317.5" y="-11.43" size="2.54" layer="94"/>
<attribute name="SHEET" x="391.16" y="-11.43" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="322.58" y="6.35" size="2.54" layer="94"/>
</instance>
<instance part="S1" gate="G$1" x="33.02" y="33.02" smashed="yes">
<attribute name="NAME" x="49.53" y="40.64" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="49.53" y="38.1" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R30" gate="G$1" x="33.02" y="78.74" smashed="yes" rot="R270">
<attribute name="NAME" x="36.83" y="69.85" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="36.83" y="67.31" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R33" gate="G$1" x="33.02" y="55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="36.83" y="49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="36.83" y="46.99" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY7" gate="GND" x="33.02" y="25.4" smashed="yes">
<attribute name="VALUE" x="31.115" y="22.225" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY23" gate="+5V" x="33.02" y="86.36" smashed="yes">
<attribute name="VALUE" x="31.115" y="89.535" size="1.778" layer="96"/>
</instance>
<instance part="S2" gate="G$1" x="83.82" y="33.02" smashed="yes">
<attribute name="NAME" x="100.33" y="40.64" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="100.33" y="38.1" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R31" gate="G$1" x="83.82" y="78.74" smashed="yes" rot="R270">
<attribute name="NAME" x="87.63" y="69.85" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="87.63" y="67.31" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R32" gate="G$1" x="83.82" y="55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="87.63" y="49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="87.63" y="46.99" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY8" gate="GND" x="83.82" y="25.4" smashed="yes">
<attribute name="VALUE" x="81.915" y="22.225" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY22" gate="+5V" x="83.82" y="86.36" smashed="yes">
<attribute name="VALUE" x="81.915" y="89.535" size="1.778" layer="96"/>
</instance>
<instance part="S3" gate="G$1" x="139.7" y="33.02" smashed="yes">
<attribute name="NAME" x="156.21" y="40.64" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="156.21" y="38.1" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R34" gate="G$1" x="139.7" y="78.74" smashed="yes" rot="R270">
<attribute name="NAME" x="143.51" y="69.85" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="143.51" y="67.31" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R35" gate="G$1" x="139.7" y="55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="143.51" y="49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="143.51" y="46.99" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY24" gate="GND" x="139.7" y="25.4" smashed="yes">
<attribute name="VALUE" x="137.795" y="22.225" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY25" gate="+5V" x="139.7" y="86.36" smashed="yes">
<attribute name="VALUE" x="137.795" y="89.535" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="+5V" x="124.46" y="226.06" smashed="yes"/>
<instance part="SUPPLY18" gate="GND" x="124.46" y="198.12" smashed="yes">
<attribute name="VALUE" x="122.555" y="194.945" size="1.778" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="12.7" y="223.52" smashed="yes">
<attribute name="NAME" x="21.59" y="228.6" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="29.21" y="228.6" size="1.778" layer="96" align="center-left" display="off"/>
</instance>
<instance part="U3" gate="G$1" x="12.7" y="205.74" smashed="yes">
<attribute name="NAME" x="21.59" y="195.58" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="29.21" y="210.82" size="1.778" layer="96" align="center-left" display="off"/>
</instance>
<instance part="PS1" gate="G$1" x="83.82" y="210.82" smashed="yes" rot="MR180">
<attribute name="NAME" x="92.71" y="203.2" size="1.778" layer="95" rot="MR180" align="center-left"/>
<attribute name="VALUE" x="92.71" y="205.74" size="1.778" layer="96" rot="MR180" align="center-left"/>
</instance>
<instance part="RV1" gate="G$1" x="58.42" y="203.2" smashed="yes" rot="R90">
<attribute name="NAME" x="54.61" y="209.55" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="54.61" y="212.09" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="C1" gate="G$1" x="73.66" y="205.74" smashed="yes" rot="R90">
<attribute name="NAME" x="67.31" y="214.63" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="69.85" y="214.63" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="C2" gate="G$1" x="124.46" y="218.44" smashed="yes" rot="R270">
<attribute name="NAME" x="130.81" y="209.55" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="128.27" y="209.55" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="F1" gate="G$1" x="53.34" y="220.98" smashed="yes" rot="R180">
<attribute name="NAME" x="54.61" y="224.79" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="54.61" y="227.33" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="Y1" gate="G$1" x="259.08" y="203.2" smashed="yes">
<attribute name="NAME" x="267.97" y="210.82" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="267.97" y="208.28" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C3" gate="G$1" x="302.26" y="203.2" smashed="yes">
<attribute name="NAME" x="311.15" y="209.55" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="311.15" y="207.01" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C4" gate="G$1" x="256.54" y="200.66" smashed="yes" rot="R180">
<attribute name="NAME" x="255.27" y="204.47" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="255.27" y="207.01" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="SUPPLY3" gate="GND" x="314.96" y="195.58" smashed="yes">
<attribute name="VALUE" x="313.055" y="192.405" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY4" gate="GND" x="243.84" y="195.58" smashed="yes">
<attribute name="VALUE" x="241.935" y="192.405" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY5" gate="GND" x="299.72" y="195.58" smashed="yes">
<attribute name="VALUE" x="297.815" y="192.405" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY6" gate="GND" x="264.16" y="210.82" smashed="yes">
<attribute name="VALUE" x="262.255" y="207.645" size="1.778" layer="96"/>
</instance>
<instance part="J1" gate="G$1" x="350.52" y="157.48" smashed="yes">
<attribute name="NAME" x="367.03" y="165.1" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="367.03" y="162.56" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="PS2(DNI)" gate="G$1" x="114.3" y="226.06" smashed="yes" rot="R180">
<attribute name="NAME" x="105.41" y="233.68" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="105.41" y="236.22" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="IC2" gate="G$1" x="40.64" y="147.32" smashed="yes">
<attribute name="NAME" x="62.23" y="154.94" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="62.23" y="152.4" size="1.778" layer="96" align="center-left"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<wire x1="40.64" y1="147.32" x2="40.64" y2="157.48" width="0.1524" layer="91"/>
<wire x1="40.64" y1="157.48" x2="38.1" y2="157.48" width="0.1524" layer="91"/>
<pinref part="SUPPLY94" gate="GND" pin="GND"/>
<wire x1="38.1" y1="157.48" x2="38.1" y2="154.94" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY93" gate="GND" pin="GND"/>
<pinref part="C28" gate="G$1" pin="2"/>
<wire x1="38.1" y1="119.38" x2="38.1" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<pinref part="S1" gate="G$1" pin="3"/>
<wire x1="33.02" y1="27.94" x2="33.02" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<pinref part="S2" gate="G$1" pin="3"/>
<wire x1="83.82" y1="27.94" x2="83.82" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY24" gate="GND" pin="GND"/>
<pinref part="S3" gate="G$1" pin="3"/>
<wire x1="139.7" y1="27.94" x2="139.7" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PS1" gate="G$1" pin="-V0"/>
<wire x1="111.76" y1="210.82" x2="111.76" y2="203.2" width="0.1524" layer="91"/>
<wire x1="111.76" y1="203.2" x2="116.84" y2="203.2" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="-"/>
<wire x1="116.84" y1="203.2" x2="124.46" y2="203.2" width="0.1524" layer="91"/>
<wire x1="124.46" y1="203.2" x2="124.46" y2="205.74" width="0.1524" layer="91"/>
<pinref part="SUPPLY18" gate="GND" pin="GND"/>
<wire x1="124.46" y1="200.66" x2="124.46" y2="203.2" width="0.1524" layer="91"/>
<junction x="124.46" y="203.2"/>
<pinref part="PS2(DNI)" gate="G$1" pin="-V"/>
<wire x1="114.3" y1="228.6" x2="116.84" y2="228.6" width="0.1524" layer="91"/>
<wire x1="116.84" y1="228.6" x2="116.84" y2="203.2" width="0.1524" layer="91"/>
<junction x="116.84" y="203.2"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="GND_1"/>
<wire x1="261.62" y1="134.62" x2="254" y2="134.62" width="0.1524" layer="91"/>
<label x="254" y="134.62" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="GND_2"/>
<wire x1="312.42" y1="132.08" x2="322.58" y2="132.08" width="0.1524" layer="91"/>
<label x="322.58" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="243.84" y1="198.12" x2="243.84" y2="200.66" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<wire x1="314.96" y1="203.2" x2="314.96" y2="198.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="299.72" y1="198.12" x2="299.72" y2="200.66" width="0.1524" layer="91"/>
<pinref part="Y1" gate="G$1" pin="GND_1"/>
</segment>
<segment>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<pinref part="Y1" gate="G$1" pin="GND_2"/>
<wire x1="259.08" y1="203.2" x2="259.08" y2="213.36" width="0.1524" layer="91"/>
<wire x1="259.08" y1="213.36" x2="264.16" y2="213.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="8"/>
<wire x1="370.84" y1="149.86" x2="373.38" y2="149.86" width="0.1524" layer="91"/>
<label x="373.38" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$221" class="0">
<segment>
<pinref part="C28" gate="G$1" pin="1"/>
<wire x1="38.1" y1="134.62" x2="38.1" y2="139.7" width="0.1524" layer="91"/>
<wire x1="38.1" y1="139.7" x2="40.64" y2="139.7" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$1" pin="4"/>
<wire x1="33.02" y1="139.7" x2="38.1" y2="139.7" width="0.1524" layer="91"/>
<junction x="38.1" y="139.7"/>
<pinref part="IC2" gate="G$1" pin="VCC"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<wire x1="76.2" y1="144.78" x2="66.04" y2="144.78" width="0.1524" layer="91"/>
<label x="76.2" y="144.78" size="1.778" layer="95"/>
<pinref part="IC2" gate="G$1" pin="SO"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="PA12/PGMD0"/>
<wire x1="287.02" y1="73.66" x2="287.02" y2="68.58" width="0.1524" layer="91"/>
<label x="287.02" y="68.58" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="SPCK" class="0">
<segment>
<wire x1="66.04" y1="139.7" x2="76.2" y2="139.7" width="0.1524" layer="91"/>
<label x="76.2" y="139.7" size="1.778" layer="95"/>
<pinref part="IC2" gate="G$1" pin="SCK"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="PA14/PGMD2"/>
<wire x1="279.4" y1="73.66" x2="279.4" y2="68.58" width="0.1524" layer="91"/>
<label x="279.4" y="68.58" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="NPCS0" class="0">
<segment>
<wire x1="66.04" y1="142.24" x2="76.2" y2="142.24" width="0.1524" layer="91"/>
<label x="76.2" y="142.24" size="1.778" layer="95"/>
<pinref part="IC2" gate="G$1" pin="!CS"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="PA11/PGMM3"/>
<wire x1="289.56" y1="73.66" x2="289.56" y2="68.58" width="0.1524" layer="91"/>
<label x="289.56" y="68.58" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="N$225" class="0">
<segment>
<pinref part="J6" gate="G$1" pin="3"/>
<wire x1="33.02" y1="142.24" x2="40.64" y2="142.24" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="T+"/>
</segment>
</net>
<net name="NPCS1" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="PA9/PGMM1"/>
<wire x1="294.64" y1="73.66" x2="294.64" y2="68.58" width="0.1524" layer="91"/>
<label x="294.64" y="68.58" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="RELAY_CTRL" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="PA8/XOUT32/PGMM0"/>
<wire x1="297.18" y1="73.66" x2="297.18" y2="68.58" width="0.1524" layer="91"/>
<label x="297.18" y="68.58" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="SUPPLY23" gate="+5V" pin="+5V"/>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="33.02" y1="83.82" x2="33.02" y2="78.74" width="0.1524" layer="91"/>
<label x="33.02" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SUPPLY22" gate="+5V" pin="+5V"/>
<pinref part="R31" gate="G$1" pin="1"/>
<wire x1="83.82" y1="83.82" x2="83.82" y2="78.74" width="0.1524" layer="91"/>
<label x="83.82" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SUPPLY25" gate="+5V" pin="+5V"/>
<pinref part="R34" gate="G$1" pin="1"/>
<wire x1="139.7" y1="83.82" x2="139.7" y2="78.74" width="0.1524" layer="91"/>
<label x="139.7" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PS1" gate="G$1" pin="+V0"/>
<wire x1="111.76" y1="213.36" x2="111.76" y2="220.98" width="0.1524" layer="91"/>
<wire x1="111.76" y1="220.98" x2="114.3" y2="220.98" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="+"/>
<wire x1="114.3" y1="220.98" x2="124.46" y2="220.98" width="0.1524" layer="91"/>
<wire x1="124.46" y1="220.98" x2="124.46" y2="218.44" width="0.1524" layer="91"/>
<pinref part="SUPPLY2" gate="+5V" pin="+5V"/>
<wire x1="124.46" y1="223.52" x2="124.46" y2="220.98" width="0.1524" layer="91"/>
<junction x="124.46" y="220.98"/>
<label x="124.46" y="223.52" size="1.778" layer="95"/>
<pinref part="PS2(DNI)" gate="G$1" pin="+V"/>
<wire x1="114.3" y1="226.06" x2="114.3" y2="220.98" width="0.1524" layer="91"/>
<junction x="114.3" y="220.98"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="VDDIN"/>
<wire x1="261.62" y1="121.92" x2="248.92" y2="121.92" width="0.1524" layer="91"/>
<label x="248.92" y="121.92" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="BTN_MENU" class="0">
<segment>
<pinref part="R30" gate="G$1" pin="2"/>
<pinref part="R33" gate="G$1" pin="1"/>
<wire x1="33.02" y1="60.96" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
<wire x1="33.02" y1="58.42" x2="33.02" y2="55.88" width="0.1524" layer="91"/>
<wire x1="33.02" y1="58.42" x2="17.78" y2="58.42" width="0.1524" layer="91"/>
<junction x="33.02" y="58.42"/>
<label x="17.78" y="58.42" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="PB0/AD4"/>
<wire x1="261.62" y1="132.08" x2="254" y2="132.08" width="0.1524" layer="91"/>
<label x="254" y="132.08" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$80" class="0">
<segment>
<pinref part="R33" gate="G$1" pin="2"/>
<pinref part="S1" gate="G$1" pin="1"/>
<wire x1="33.02" y1="38.1" x2="33.02" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BTN_UP" class="0">
<segment>
<pinref part="R31" gate="G$1" pin="2"/>
<pinref part="R32" gate="G$1" pin="1"/>
<wire x1="83.82" y1="60.96" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
<wire x1="83.82" y1="58.42" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
<wire x1="83.82" y1="58.42" x2="68.58" y2="58.42" width="0.1524" layer="91"/>
<junction x="83.82" y="58.42"/>
<label x="68.58" y="58.42" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="PB1/AD5"/>
<wire x1="261.62" y1="129.54" x2="254" y2="129.54" width="0.1524" layer="91"/>
<label x="254" y="129.54" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$82" class="0">
<segment>
<pinref part="R32" gate="G$1" pin="2"/>
<pinref part="S2" gate="G$1" pin="1"/>
<wire x1="83.82" y1="38.1" x2="83.82" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BTN_DN" class="0">
<segment>
<pinref part="R34" gate="G$1" pin="2"/>
<pinref part="R35" gate="G$1" pin="1"/>
<wire x1="139.7" y1="60.96" x2="139.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="139.7" y1="58.42" x2="139.7" y2="55.88" width="0.1524" layer="91"/>
<wire x1="139.7" y1="58.42" x2="124.46" y2="58.42" width="0.1524" layer="91"/>
<junction x="139.7" y="58.42"/>
<label x="124.46" y="58.42" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="PB2/AD6"/>
<wire x1="261.62" y1="127" x2="254" y2="127" width="0.1524" layer="91"/>
<label x="254" y="127" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$84" class="0">
<segment>
<pinref part="R35" gate="G$1" pin="2"/>
<pinref part="S3" gate="G$1" pin="1"/>
<wire x1="139.7" y1="38.1" x2="139.7" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TDI" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="TDI/PB4"/>
<wire x1="312.42" y1="109.22" x2="322.58" y2="109.22" width="0.1524" layer="91"/>
<label x="322.58" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="7"/>
<wire x1="350.52" y1="149.86" x2="347.98" y2="149.86" width="0.1524" layer="91"/>
<label x="347.98" y="149.86" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="TDO" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="TDO/TRACESWO/PB5"/>
<wire x1="299.72" y1="167.64" x2="299.72" y2="175.26" width="0.1524" layer="91"/>
<label x="299.72" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="350.52" y1="154.94" x2="347.98" y2="154.94" width="0.1524" layer="91"/>
<label x="347.98" y="154.94" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="JTAGSEL" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="JTAGSEL"/>
<wire x1="297.18" y1="167.64" x2="297.18" y2="175.26" width="0.1524" layer="91"/>
<label x="297.18" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="6"/>
<wire x1="370.84" y1="152.4" x2="373.38" y2="152.4" width="0.1524" layer="91"/>
<label x="373.38" y="152.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="TMS" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="TMS/SWDIO/PB6"/>
<wire x1="294.64" y1="167.64" x2="294.64" y2="175.26" width="0.1524" layer="91"/>
<label x="294.64" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="350.52" y1="152.4" x2="347.98" y2="152.4" width="0.1524" layer="91"/>
<label x="347.98" y="152.4" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="TCK" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="TCK/SWCLK/PB7"/>
<wire x1="292.1" y1="167.64" x2="292.1" y2="175.26" width="0.1524" layer="91"/>
<label x="292.1" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="350.52" y1="157.48" x2="347.98" y2="157.48" width="0.1524" layer="91"/>
<label x="347.98" y="157.48" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="L" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="3"/>
<pinref part="U2" gate="G$1" pin="2"/>
<wire x1="12.7" y1="218.44" x2="12.7" y2="220.98" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="1"/>
<wire x1="12.7" y1="220.98" x2="12.7" y2="223.52" width="0.1524" layer="91"/>
<junction x="12.7" y="220.98"/>
<wire x1="12.7" y1="223.52" x2="12.7" y2="231.14" width="0.1524" layer="91"/>
<wire x1="12.7" y1="231.14" x2="33.02" y2="231.14" width="0.1524" layer="91"/>
<junction x="12.7" y="223.52"/>
<pinref part="U2" gate="G$1" pin="5"/>
<pinref part="U2" gate="G$1" pin="4"/>
<wire x1="33.02" y1="218.44" x2="33.02" y2="220.98" width="0.1524" layer="91"/>
<junction x="33.02" y="220.98"/>
<pinref part="U2" gate="G$1" pin="6"/>
<wire x1="33.02" y1="220.98" x2="33.02" y2="223.52" width="0.1524" layer="91"/>
<wire x1="33.02" y1="231.14" x2="33.02" y2="223.52" width="0.1524" layer="91"/>
<junction x="33.02" y="223.52"/>
<label x="7.62" y="220.98" size="1.778" layer="95"/>
<wire x1="33.02" y1="220.98" x2="35.56" y2="220.98" width="0.1524" layer="91"/>
<pinref part="F1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="1"/>
<pinref part="U3" gate="G$1" pin="2"/>
<wire x1="12.7" y1="205.74" x2="12.7" y2="203.2" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="3"/>
<wire x1="12.7" y1="200.66" x2="12.7" y2="203.2" width="0.1524" layer="91"/>
<junction x="12.7" y="203.2"/>
<wire x1="12.7" y1="200.66" x2="12.7" y2="193.04" width="0.1524" layer="91"/>
<junction x="12.7" y="200.66"/>
<wire x1="12.7" y1="193.04" x2="33.02" y2="193.04" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="5"/>
<pinref part="U3" gate="G$1" pin="6"/>
<wire x1="33.02" y1="205.74" x2="33.02" y2="203.2" width="0.1524" layer="91"/>
<junction x="33.02" y="203.2"/>
<pinref part="U3" gate="G$1" pin="4"/>
<wire x1="33.02" y1="200.66" x2="33.02" y2="203.2" width="0.1524" layer="91"/>
<wire x1="33.02" y1="193.04" x2="33.02" y2="200.66" width="0.1524" layer="91"/>
<junction x="33.02" y="200.66"/>
<pinref part="PS1" gate="G$1" pin="AC_1"/>
<wire x1="83.82" y1="203.2" x2="83.82" y2="210.82" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="73.66" y1="205.74" x2="73.66" y2="203.2" width="0.1524" layer="91"/>
<junction x="73.66" y="203.2"/>
<wire x1="73.66" y1="203.2" x2="81.28" y2="203.2" width="0.1524" layer="91"/>
<wire x1="81.28" y1="203.2" x2="83.82" y2="203.2" width="0.1524" layer="91"/>
<wire x1="58.42" y1="203.2" x2="73.66" y2="203.2" width="0.1524" layer="91"/>
<pinref part="RV1" gate="G$1" pin="1"/>
<wire x1="33.02" y1="203.2" x2="58.42" y2="203.2" width="0.1524" layer="91"/>
<junction x="58.42" y="203.2"/>
<label x="7.62" y="203.2" size="1.778" layer="95"/>
<pinref part="PS2(DNI)" gate="G$1" pin="AC/L"/>
<wire x1="88.9" y1="226.06" x2="81.28" y2="226.06" width="0.1524" layer="91"/>
<wire x1="81.28" y1="226.06" x2="81.28" y2="203.2" width="0.1524" layer="91"/>
<junction x="81.28" y="203.2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="73.66" y1="218.44" x2="73.66" y2="220.98" width="0.1524" layer="91"/>
<junction x="73.66" y="220.98"/>
<pinref part="PS1" gate="G$1" pin="AC_2"/>
<wire x1="83.82" y1="213.36" x2="83.82" y2="220.98" width="0.1524" layer="91"/>
<wire x1="83.82" y1="220.98" x2="78.74" y2="220.98" width="0.1524" layer="91"/>
<wire x1="78.74" y1="220.98" x2="73.66" y2="220.98" width="0.1524" layer="91"/>
<wire x1="58.42" y1="220.98" x2="73.66" y2="220.98" width="0.1524" layer="91"/>
<pinref part="RV1" gate="G$1" pin="2"/>
<junction x="58.42" y="220.98"/>
<wire x1="53.34" y1="220.98" x2="58.42" y2="220.98" width="0.1524" layer="91"/>
<pinref part="F1" gate="G$1" pin="1"/>
<pinref part="PS2(DNI)" gate="G$1" pin="AC/N"/>
<wire x1="88.9" y1="228.6" x2="78.74" y2="228.6" width="0.1524" layer="91"/>
<wire x1="78.74" y1="228.6" x2="78.74" y2="220.98" width="0.1524" layer="91"/>
<junction x="78.74" y="220.98"/>
</segment>
</net>
<net name="A0" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="PB3/AD7"/>
<wire x1="261.62" y1="124.46" x2="259.08" y2="124.46" width="0.1524" layer="91"/>
<label x="259.08" y="124.46" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="PA17/PGMD5/AD0"/>
<wire x1="261.62" y1="116.84" x2="259.08" y2="116.84" width="0.1524" layer="91"/>
<label x="259.08" y="116.84" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="PA18/PGMD6/AD1"/>
<wire x1="261.62" y1="114.3" x2="259.08" y2="114.3" width="0.1524" layer="91"/>
<label x="259.08" y="114.3" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="PA19/PGMD7/AD2"/>
<wire x1="261.62" y1="111.76" x2="259.08" y2="111.76" width="0.1524" layer="91"/>
<label x="259.08" y="111.76" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="PA20/AD3"/>
<wire x1="261.62" y1="109.22" x2="259.08" y2="109.22" width="0.1524" layer="91"/>
<label x="259.08" y="109.22" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="XOUT/PB8"/>
<wire x1="279.4" y1="167.64" x2="279.4" y2="187.96" width="0.1524" layer="91"/>
<wire x1="279.4" y1="187.96" x2="302.26" y2="187.96" width="0.1524" layer="91"/>
<pinref part="Y1" gate="G$1" pin="CRYSTAL_2"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="299.72" y1="203.2" x2="302.26" y2="203.2" width="0.1524" layer="91"/>
<wire x1="302.26" y1="187.96" x2="302.26" y2="203.2" width="0.1524" layer="91"/>
<junction x="302.26" y="203.2"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="XIN/PB9/PGMCK"/>
<wire x1="276.86" y1="167.64" x2="276.86" y2="187.96" width="0.1524" layer="91"/>
<wire x1="276.86" y1="187.96" x2="256.54" y2="187.96" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="Y1" gate="G$1" pin="CRYSTAL_1"/>
<wire x1="256.54" y1="200.66" x2="259.08" y2="200.66" width="0.1524" layer="91"/>
<wire x1="256.54" y1="187.96" x2="256.54" y2="200.66" width="0.1524" layer="91"/>
<junction x="256.54" y="200.66"/>
</segment>
</net>
<net name="VCC_EDBG_P3V3" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="VDDIO_2"/>
<wire x1="312.42" y1="129.54" x2="322.58" y2="129.54" width="0.1524" layer="91"/>
<label x="322.58" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="VDDIO_3"/>
<wire x1="274.32" y1="167.64" x2="274.32" y2="175.26" width="0.1524" layer="91"/>
<label x="274.32" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="VDDIO_1"/>
<wire x1="271.78" y1="73.66" x2="271.78" y2="68.58" width="0.1524" layer="91"/>
<label x="271.78" y="68.58" size="1.778" layer="95" rot="R270"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="370.84" y1="157.48" x2="373.38" y2="157.48" width="0.1524" layer="91"/>
<label x="373.38" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="370.84" y1="154.94" x2="373.38" y2="154.94" width="0.1524" layer="91"/>
<label x="373.38" y="154.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC16" gate="G$1" pin="NRST"/>
<wire x1="312.42" y1="119.38" x2="322.58" y2="119.38" width="0.1524" layer="91"/>
<label x="322.58" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="147.32" y1="154.94" x2="147.32" y2="129.54" width="0.1524" layer="91"/>
<wire x1="147.32" y1="129.54" x2="223.52" y2="129.54" width="0.1524" layer="91"/>
<wire x1="223.52" y1="129.54" x2="223.52" y2="154.94" width="0.1524" layer="91"/>
<wire x1="223.52" y1="154.94" x2="147.32" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="68.58" y1="251.46" x2="132.08" y2="251.46" width="0.1524" layer="91"/>
<wire x1="132.08" y1="251.46" x2="132.08" y2="243.84" width="0.1524" layer="91"/>
<wire x1="132.08" y1="243.84" x2="68.58" y2="243.84" width="0.1524" layer="91"/>
<wire x1="68.58" y1="243.84" x2="68.58" y2="251.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="58.42" y1="195.58" x2="93.98" y2="195.58" width="0.1524" layer="91"/>
<wire x1="93.98" y1="195.58" x2="93.98" y2="187.96" width="0.1524" layer="91"/>
<wire x1="93.98" y1="187.96" x2="58.42" y2="187.96" width="0.1524" layer="91"/>
<wire x1="58.42" y1="187.96" x2="58.42" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="43.18" y1="121.92" x2="71.12" y2="121.92" width="0.1524" layer="91"/>
<wire x1="71.12" y1="121.92" x2="71.12" y2="116.84" width="0.1524" layer="91"/>
<wire x1="71.12" y1="116.84" x2="43.18" y2="116.84" width="0.1524" layer="91"/>
<wire x1="43.18" y1="116.84" x2="43.18" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="322.58" y1="96.52" x2="353.06" y2="96.52" width="0.1524" layer="91"/>
<wire x1="353.06" y1="96.52" x2="353.06" y2="91.44" width="0.1524" layer="91"/>
<wire x1="353.06" y1="91.44" x2="322.58" y2="91.44" width="0.1524" layer="91"/>
<wire x1="322.58" y1="91.44" x2="322.58" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="68.58" y1="15.24" x2="116.84" y2="15.24" width="0.1524" layer="91"/>
<wire x1="116.84" y1="15.24" x2="116.84" y2="5.08" width="0.1524" layer="91"/>
<wire x1="116.84" y1="5.08" x2="68.58" y2="5.08" width="0.1524" layer="91"/>
<wire x1="68.58" y1="5.08" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="-5.08" y1="187.96" x2="-5.08" y2="180.34" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="180.34" x2="33.02" y2="180.34" width="0.1524" layer="91"/>
<wire x1="33.02" y1="180.34" x2="33.02" y2="187.96" width="0.1524" layer="91"/>
<wire x1="33.02" y1="187.96" x2="-5.08" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SPI_MOSI" class="0">
<segment>
<pinref part="IC16" gate="G$1" pin="PA13/PGMD1"/>
<wire x1="281.94" y1="73.66" x2="281.94" y2="68.58" width="0.1524" layer="91"/>
<label x="281.94" y="68.58" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
<text x="93.98" y="264.16" size="1.778" layer="91">### Relay Dry contact output ###</text>
<text x="289.56" y="213.36" size="1.778" layer="91">### TCP/IP output ###</text>
</plain>
<instances>
<instance part="J4" gate="G$1" x="284.48" y="177.8" smashed="yes">
<attribute name="NAME" x="321.31" y="185.42" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="321.31" y="182.88" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R51" gate="G$1" x="177.8" y="180.34" smashed="yes">
<attribute name="NAME" x="179.07" y="186.69" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="179.07" y="184.15" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R52" gate="G$1" x="177.8" y="175.26" smashed="yes">
<attribute name="NAME" x="179.07" y="171.45" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="179.07" y="168.91" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R53" gate="G$1" x="246.38" y="170.18" smashed="yes">
<attribute name="NAME" x="247.65" y="176.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="247.65" y="173.99" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R54" gate="G$1" x="246.38" y="154.94" smashed="yes">
<attribute name="NAME" x="260.35" y="161.29" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="260.35" y="158.75" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C16" gate="G$1" x="152.4" y="180.34" smashed="yes">
<attribute name="NAME" x="161.29" y="186.69" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="161.29" y="184.15" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C17" gate="G$1" x="220.98" y="162.56" smashed="yes">
<attribute name="NAME" x="229.87" y="168.91" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="229.87" y="166.37" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY54" gate="GND" x="152.4" y="175.26" smashed="yes">
<attribute name="VALUE" x="150.495" y="172.085" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY55" gate="GND" x="220.98" y="157.48" smashed="yes">
<attribute name="VALUE" x="219.075" y="154.305" size="1.778" layer="96"/>
</instance>
<instance part="IC9" gate="G$1" x="142.24" y="157.48" smashed="yes" rot="MR270">
<attribute name="NAME" x="118.11" y="152.4" size="1.778" layer="95" rot="MR180" align="center-left"/>
<attribute name="VALUE" x="118.11" y="154.94" size="1.778" layer="96" rot="MR180" align="center-left"/>
</instance>
<instance part="R55" gate="G$1" x="342.9" y="172.72" smashed="yes">
<attribute name="NAME" x="356.87" y="179.07" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="356.87" y="176.53" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R56" gate="G$1" x="370.84" y="170.18" smashed="yes">
<attribute name="NAME" x="384.81" y="176.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="384.81" y="173.99" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY56" gate="+5V" x="332.74" y="190.5" smashed="yes">
<attribute name="VALUE" x="330.835" y="193.675" size="1.778" layer="96"/>
</instance>
<instance part="GND5" gate="1" x="281.94" y="109.22" smashed="yes">
<attribute name="VALUE" x="279.4" y="106.68" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY57" gate="GND" x="304.8" y="109.22" smashed="yes">
<attribute name="VALUE" x="302.895" y="106.045" size="1.778" layer="96"/>
</instance>
<instance part="R57" gate="G$1" x="284.48" y="129.54" smashed="yes">
<attribute name="NAME" x="298.45" y="135.89" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="298.45" y="133.35" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C18" gate="G$1" x="287.02" y="119.38" smashed="yes">
<attribute name="NAME" x="295.91" y="125.73" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="295.91" y="123.19" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND6" gate="1" x="330.2" y="139.7" smashed="yes">
<attribute name="VALUE" x="327.66" y="137.16" size="1.778" layer="96"/>
</instance>
<instance part="Y3" gate="G$1" x="154.94" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="162.56" y="54.61" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="165.1" y="54.61" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="SUPPLY58" gate="GND" x="154.94" y="43.18" smashed="yes">
<attribute name="VALUE" x="153.035" y="40.005" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY59" gate="GND" x="160.02" y="88.9" smashed="yes">
<attribute name="VALUE" x="158.115" y="85.725" size="1.778" layer="96"/>
</instance>
<instance part="C19" gate="G$1" x="154.94" y="101.6" smashed="yes">
<attribute name="NAME" x="166.37" y="97.79" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="166.37" y="95.25" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C20" gate="G$1" x="149.86" y="101.6" smashed="yes" rot="R180">
<attribute name="NAME" x="140.97" y="95.25" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="140.97" y="97.79" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="SUPPLY60" gate="GND" x="134.62" y="91.44" smashed="yes">
<attribute name="VALUE" x="132.715" y="88.265" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY61" gate="GND" x="172.72" y="91.44" smashed="yes">
<attribute name="VALUE" x="170.815" y="88.265" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY62" gate="+5V" x="208.28" y="132.08" smashed="yes">
<attribute name="VALUE" x="206.375" y="135.255" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY63" gate="GND" x="167.64" y="160.02" smashed="yes">
<attribute name="VALUE" x="165.735" y="156.845" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY64" gate="GND" x="142.24" y="109.22" smashed="yes">
<attribute name="VALUE" x="140.335" y="106.045" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY65" gate="GND" x="147.32" y="109.22" smashed="yes">
<attribute name="VALUE" x="145.415" y="106.045" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY66" gate="GND" x="157.48" y="109.22" smashed="yes">
<attribute name="VALUE" x="155.575" y="106.045" size="1.778" layer="96"/>
</instance>
<instance part="R58" gate="G$1" x="167.64" y="116.84" smashed="yes">
<attribute name="NAME" x="181.61" y="123.19" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="181.61" y="120.65" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY67" gate="GND" x="185.42" y="111.76" smashed="yes">
<attribute name="VALUE" x="183.515" y="108.585" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY68" gate="+5V" x="99.06" y="193.04" smashed="yes">
<attribute name="VALUE" x="97.155" y="196.215" size="1.778" layer="96"/>
</instance>
<instance part="R59" gate="G$1" x="99.06" y="124.46" smashed="yes" rot="R270">
<attribute name="NAME" x="105.41" y="110.49" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="102.87" y="110.49" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="R60" gate="G$1" x="66.04" y="132.08" smashed="yes" rot="R90">
<attribute name="NAME" x="59.69" y="146.05" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="62.23" y="146.05" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="R61" gate="G$1" x="76.2" y="165.1" smashed="yes" rot="R90">
<attribute name="NAME" x="69.85" y="179.07" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="72.39" y="179.07" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="SUPPLY69" gate="GND" x="104.14" y="91.44" smashed="yes">
<attribute name="VALUE" x="102.235" y="88.265" size="1.778" layer="96"/>
</instance>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="325.12" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="337.82" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="411.48" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="342.9" y="19.05" size="2.54" layer="94"/>
</instance>
<instance part="K1" gate="G$1" x="144.78" y="246.38" smashed="yes" rot="R180">
<attribute name="NAME" x="138.43" y="256.54" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="138.43" y="259.08" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="165.1" y="236.22" smashed="yes" rot="R180">
<attribute name="VALUE" x="167.005" y="239.395" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="D1" gate="G$1" x="132.08" y="233.68" smashed="yes" rot="R180">
<attribute name="NAME" x="125.73" y="226.06" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="125.73" y="228.6" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="R29" gate="G$1" x="71.12" y="246.38" smashed="yes" rot="R180">
<attribute name="NAME" x="57.15" y="240.03" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="57.15" y="242.57" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="C16" gate="G$1" pin="1"/>
<pinref part="SUPPLY54" gate="GND" pin="GND"/>
<wire x1="152.4" y1="180.34" x2="152.4" y2="177.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C17" gate="G$1" pin="1"/>
<pinref part="SUPPLY55" gate="GND" pin="GND"/>
<wire x1="220.98" y1="162.56" x2="220.98" y2="160.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="CHS_GROUND"/>
<wire x1="284.48" y1="167.64" x2="281.94" y2="167.64" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="281.94" y1="167.64" x2="281.94" y2="129.54" width="0.1524" layer="91"/>
<pinref part="R57" gate="G$1" pin="1"/>
<wire x1="281.94" y1="129.54" x2="281.94" y2="119.38" width="0.1524" layer="91"/>
<wire x1="281.94" y1="119.38" x2="281.94" y2="111.76" width="0.1524" layer="91"/>
<wire x1="284.48" y1="129.54" x2="281.94" y2="129.54" width="0.1524" layer="91"/>
<junction x="281.94" y="129.54"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="287.02" y1="119.38" x2="281.94" y2="119.38" width="0.1524" layer="91"/>
<junction x="281.94" y="119.38"/>
</segment>
<segment>
<pinref part="R57" gate="G$1" pin="2"/>
<wire x1="302.26" y1="129.54" x2="304.8" y2="129.54" width="0.1524" layer="91"/>
<pinref part="SUPPLY57" gate="GND" pin="GND"/>
<wire x1="304.8" y1="129.54" x2="304.8" y2="119.38" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="2"/>
<wire x1="304.8" y1="119.38" x2="304.8" y2="111.76" width="0.1524" layer="91"/>
<wire x1="299.72" y1="119.38" x2="304.8" y2="119.38" width="0.1524" layer="91"/>
<junction x="304.8" y="119.38"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="J4" gate="G$1" pin="MH1"/>
<wire x1="325.12" y1="165.1" x2="330.2" y2="165.1" width="0.1524" layer="91"/>
<wire x1="330.2" y1="165.1" x2="330.2" y2="162.56" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="MH2"/>
<wire x1="330.2" y1="162.56" x2="330.2" y2="142.24" width="0.1524" layer="91"/>
<wire x1="325.12" y1="162.56" x2="330.2" y2="162.56" width="0.1524" layer="91"/>
<junction x="330.2" y="162.56"/>
</segment>
<segment>
<pinref part="SUPPLY58" gate="GND" pin="GND"/>
<pinref part="Y3" gate="G$1" pin="GND_2"/>
<wire x1="154.94" y1="45.72" x2="154.94" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Y3" gate="G$1" pin="GND_1"/>
<wire x1="157.48" y1="88.9" x2="157.48" y2="93.98" width="0.1524" layer="91"/>
<wire x1="157.48" y1="93.98" x2="160.02" y2="93.98" width="0.1524" layer="91"/>
<pinref part="SUPPLY59" gate="GND" pin="GND"/>
<wire x1="160.02" y1="93.98" x2="160.02" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY60" gate="GND" pin="GND"/>
<wire x1="134.62" y1="93.98" x2="134.62" y2="101.6" width="0.1524" layer="91"/>
<pinref part="C20" gate="G$1" pin="2"/>
<wire x1="134.62" y1="101.6" x2="137.16" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="2"/>
<wire x1="167.64" y1="101.6" x2="172.72" y2="101.6" width="0.1524" layer="91"/>
<pinref part="SUPPLY61" gate="GND" pin="GND"/>
<wire x1="172.72" y1="101.6" x2="172.72" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="DGND_1"/>
<wire x1="149.86" y1="157.48" x2="149.86" y2="167.64" width="0.1524" layer="91"/>
<wire x1="149.86" y1="167.64" x2="160.02" y2="167.64" width="0.1524" layer="91"/>
<pinref part="SUPPLY63" gate="GND" pin="GND"/>
<wire x1="160.02" y1="167.64" x2="167.64" y2="167.64" width="0.1524" layer="91"/>
<wire x1="167.64" y1="167.64" x2="167.64" y2="162.56" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="AGND_1"/>
<wire x1="160.02" y1="157.48" x2="160.02" y2="167.64" width="0.1524" layer="91"/>
<junction x="160.02" y="167.64"/>
</segment>
<segment>
<pinref part="SUPPLY64" gate="GND" pin="GND"/>
<pinref part="IC9" gate="G$1" pin="DGND_3"/>
<wire x1="142.24" y1="111.76" x2="142.24" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY65" gate="GND" pin="GND"/>
<pinref part="IC9" gate="G$1" pin="DGND_2"/>
<wire x1="147.32" y1="111.76" x2="147.32" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="AGND_3"/>
<pinref part="SUPPLY66" gate="GND" pin="GND"/>
<wire x1="157.48" y1="116.84" x2="157.48" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY67" gate="GND" pin="GND"/>
<wire x1="185.42" y1="116.84" x2="185.42" y2="114.3" width="0.1524" layer="91"/>
<pinref part="R58" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="SUPPLY69" gate="GND" pin="GND"/>
<pinref part="IC9" gate="G$1" pin="DGND_4"/>
<wire x1="121.92" y1="137.16" x2="104.14" y2="137.16" width="0.1524" layer="91"/>
<wire x1="104.14" y1="137.16" x2="104.14" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="K1" gate="G$1" pin="COIL(SET-)(RESET+)"/>
<wire x1="144.78" y1="246.38" x2="149.86" y2="246.38" width="0.1524" layer="91"/>
<wire x1="149.86" y1="246.38" x2="149.86" y2="233.68" width="0.1524" layer="91"/>
<wire x1="149.86" y1="233.68" x2="132.08" y2="233.68" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="ANODE"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="165.1" y1="233.68" x2="149.86" y2="233.68" width="0.1524" layer="91"/>
<junction x="149.86" y="233.68"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="K_GREEN"/>
<wire x1="325.12" y1="175.26" x2="332.74" y2="175.26" width="0.1524" layer="91"/>
<pinref part="SUPPLY56" gate="+5V" pin="+5V"/>
<wire x1="332.74" y1="175.26" x2="332.74" y2="187.96" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="A_YELLOW"/>
<wire x1="325.12" y1="167.64" x2="332.74" y2="167.64" width="0.1524" layer="91"/>
<wire x1="332.74" y1="167.64" x2="332.74" y2="175.26" width="0.1524" layer="91"/>
<junction x="332.74" y="175.26"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="VDD_A3.3"/>
<pinref part="SUPPLY62" gate="+5V" pin="+5V"/>
<wire x1="180.34" y1="129.54" x2="208.28" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="VDD_IO_2"/>
<wire x1="121.92" y1="139.7" x2="99.06" y2="139.7" width="0.1524" layer="91"/>
<pinref part="SUPPLY68" gate="+5V" pin="+5V"/>
<wire x1="99.06" y1="139.7" x2="99.06" y2="182.88" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="VDD_IO_1"/>
<wire x1="99.06" y1="182.88" x2="99.06" y2="190.5" width="0.1524" layer="91"/>
<wire x1="121.92" y1="127" x2="99.06" y2="127" width="0.1524" layer="91"/>
<wire x1="99.06" y1="127" x2="99.06" y2="139.7" width="0.1524" layer="91"/>
<junction x="99.06" y="139.7"/>
<junction x="99.06" y="182.88"/>
<pinref part="R59" gate="G$1" pin="1"/>
<wire x1="66.04" y1="182.88" x2="76.2" y2="182.88" width="0.1524" layer="91"/>
<wire x1="76.2" y1="182.88" x2="99.06" y2="182.88" width="0.1524" layer="91"/>
<wire x1="99.06" y1="124.46" x2="99.06" y2="127" width="0.1524" layer="91"/>
<junction x="99.06" y="127"/>
<pinref part="R61" gate="G$1" pin="2"/>
<junction x="76.2" y="182.88"/>
<pinref part="R60" gate="G$1" pin="2"/>
<wire x1="66.04" y1="149.86" x2="66.04" y2="182.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$120" class="0">
<segment>
<pinref part="R51" gate="G$1" pin="2"/>
<pinref part="J4" gate="G$1" pin="TD+"/>
<wire x1="195.58" y1="180.34" x2="200.66" y2="180.34" width="0.1524" layer="91"/>
<wire x1="200.66" y1="180.34" x2="284.48" y2="180.34" width="0.1524" layer="91"/>
<wire x1="284.48" y1="180.34" x2="284.48" y2="177.8" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="TXP"/>
<wire x1="180.34" y1="134.62" x2="200.66" y2="134.62" width="0.1524" layer="91"/>
<wire x1="200.66" y1="134.62" x2="200.66" y2="180.34" width="0.1524" layer="91"/>
<junction x="200.66" y="180.34"/>
</segment>
</net>
<net name="N$121" class="0">
<segment>
<pinref part="R52" gate="G$1" pin="2"/>
<pinref part="J4" gate="G$1" pin="TD-"/>
<wire x1="195.58" y1="175.26" x2="203.2" y2="175.26" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="TXM"/>
<wire x1="203.2" y1="175.26" x2="284.48" y2="175.26" width="0.1524" layer="91"/>
<wire x1="180.34" y1="132.08" x2="203.2" y2="132.08" width="0.1524" layer="91"/>
<wire x1="203.2" y1="132.08" x2="203.2" y2="175.26" width="0.1524" layer="91"/>
<junction x="203.2" y="175.26"/>
</segment>
</net>
<net name="N$122" class="0">
<segment>
<pinref part="R53" gate="G$1" pin="2"/>
<wire x1="264.16" y1="170.18" x2="264.16" y2="162.56" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="RD+"/>
<wire x1="264.16" y1="162.56" x2="271.78" y2="162.56" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="RXP"/>
<wire x1="271.78" y1="162.56" x2="284.48" y2="162.56" width="0.1524" layer="91"/>
<wire x1="180.34" y1="142.24" x2="271.78" y2="142.24" width="0.1524" layer="91"/>
<wire x1="271.78" y1="142.24" x2="271.78" y2="162.56" width="0.1524" layer="91"/>
<junction x="271.78" y="162.56"/>
</segment>
</net>
<net name="N$123" class="0">
<segment>
<pinref part="C16" gate="G$1" pin="2"/>
<pinref part="R51" gate="G$1" pin="1"/>
<wire x1="165.1" y1="180.34" x2="177.8" y2="180.34" width="0.1524" layer="91"/>
<pinref part="R52" gate="G$1" pin="1"/>
<wire x1="177.8" y1="175.26" x2="165.1" y2="175.26" width="0.1524" layer="91"/>
<wire x1="165.1" y1="175.26" x2="165.1" y2="180.34" width="0.1524" layer="91"/>
<junction x="165.1" y="180.34"/>
</segment>
</net>
<net name="N$124" class="0">
<segment>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="233.68" y1="162.56" x2="233.68" y2="170.18" width="0.1524" layer="91"/>
<pinref part="R53" gate="G$1" pin="1"/>
<wire x1="233.68" y1="170.18" x2="246.38" y2="170.18" width="0.1524" layer="91"/>
<wire x1="233.68" y1="162.56" x2="233.68" y2="154.94" width="0.1524" layer="91"/>
<junction x="233.68" y="162.56"/>
<pinref part="R54" gate="G$1" pin="1"/>
<wire x1="233.68" y1="154.94" x2="246.38" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$125" class="0">
<segment>
<pinref part="R54" gate="G$1" pin="2"/>
<wire x1="264.16" y1="154.94" x2="276.86" y2="154.94" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="RD-"/>
<wire x1="276.86" y1="154.94" x2="337.82" y2="154.94" width="0.1524" layer="91"/>
<wire x1="337.82" y1="154.94" x2="337.82" y2="177.8" width="0.1524" layer="91"/>
<wire x1="337.82" y1="177.8" x2="325.12" y2="177.8" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="RXM"/>
<wire x1="180.34" y1="139.7" x2="276.86" y2="139.7" width="0.1524" layer="91"/>
<wire x1="276.86" y1="139.7" x2="276.86" y2="154.94" width="0.1524" layer="91"/>
<junction x="276.86" y="154.94"/>
</segment>
</net>
<net name="N$126" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="A_GREEN"/>
<pinref part="R55" gate="G$1" pin="1"/>
<wire x1="325.12" y1="172.72" x2="342.9" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$127" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="K_YELLOW"/>
<pinref part="R56" gate="G$1" pin="1"/>
<wire x1="325.12" y1="170.18" x2="370.84" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$128" class="0">
<segment>
<pinref part="R55" gate="G$1" pin="2"/>
<wire x1="360.68" y1="172.72" x2="368.3" y2="172.72" width="0.1524" layer="91"/>
<wire x1="368.3" y1="172.72" x2="368.3" y2="200.66" width="0.1524" layer="91"/>
<wire x1="368.3" y1="200.66" x2="142.24" y2="200.66" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="LED0"/>
<wire x1="142.24" y1="157.48" x2="142.24" y2="200.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$129" class="0">
<segment>
<pinref part="R56" gate="G$1" pin="2"/>
<wire x1="388.62" y1="170.18" x2="393.7" y2="170.18" width="0.1524" layer="91"/>
<wire x1="393.7" y1="170.18" x2="393.7" y2="205.74" width="0.1524" layer="91"/>
<wire x1="393.7" y1="205.74" x2="111.76" y2="205.74" width="0.1524" layer="91"/>
<wire x1="111.76" y1="205.74" x2="111.76" y2="144.78" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="LED1"/>
<wire x1="111.76" y1="144.78" x2="121.92" y2="144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$130" class="0">
<segment>
<pinref part="Y3" gate="G$1" pin="CRYSTAL_2"/>
<pinref part="C19" gate="G$1" pin="1"/>
<wire x1="154.94" y1="101.6" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="X1"/>
<wire x1="152.4" y1="116.84" x2="152.4" y2="101.6" width="0.1524" layer="91"/>
<wire x1="152.4" y1="101.6" x2="154.94" y2="101.6" width="0.1524" layer="91"/>
<junction x="154.94" y="101.6"/>
</segment>
</net>
<net name="N$131" class="0">
<segment>
<pinref part="Y3" gate="G$1" pin="CRYSTAL_1"/>
<wire x1="157.48" y1="48.26" x2="157.48" y2="33.02" width="0.1524" layer="91"/>
<wire x1="157.48" y1="33.02" x2="149.86" y2="33.02" width="0.1524" layer="91"/>
<wire x1="149.86" y1="33.02" x2="149.86" y2="101.6" width="0.1524" layer="91"/>
<pinref part="C20" gate="G$1" pin="1"/>
<pinref part="IC9" gate="G$1" pin="X2"/>
<wire x1="149.86" y1="101.6" x2="149.86" y2="116.84" width="0.1524" layer="91"/>
<junction x="149.86" y="101.6"/>
</segment>
</net>
<net name="N$132" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="ISET"/>
<pinref part="R58" gate="G$1" pin="1"/>
<wire x1="160.02" y1="116.84" x2="167.64" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="NRST" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="RSTN"/>
<wire x1="154.94" y1="114.3" x2="154.94" y2="116.84" width="0.1524" layer="91"/>
<pinref part="R59" gate="G$1" pin="2"/>
<wire x1="99.06" y1="106.68" x2="99.06" y2="104.14" width="0.1524" layer="91"/>
<wire x1="99.06" y1="104.14" x2="114.3" y2="104.14" width="0.1524" layer="91"/>
<wire x1="114.3" y1="104.14" x2="114.3" y2="114.3" width="0.1524" layer="91"/>
<wire x1="114.3" y1="114.3" x2="154.94" y2="114.3" width="0.1524" layer="91"/>
<wire x1="99.06" y1="104.14" x2="30.48" y2="104.14" width="0.1524" layer="91"/>
<junction x="99.06" y="104.14"/>
<label x="30.48" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="INTRN" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="INTRN"/>
<wire x1="147.32" y1="157.48" x2="147.32" y2="165.1" width="0.1524" layer="91"/>
<pinref part="R61" gate="G$1" pin="1"/>
<wire x1="76.2" y1="165.1" x2="147.32" y2="165.1" width="0.1524" layer="91"/>
<wire x1="76.2" y1="165.1" x2="30.48" y2="165.1" width="0.1524" layer="91"/>
<junction x="76.2" y="165.1"/>
<label x="30.48" y="165.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="NPCS1" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="CSN"/>
<wire x1="121.92" y1="129.54" x2="30.48" y2="129.54" width="0.1524" layer="91"/>
<label x="30.48" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPCK" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SCLK"/>
<wire x1="121.92" y1="134.62" x2="30.48" y2="134.62" width="0.1524" layer="91"/>
<label x="30.48" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI_MOSI" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SI"/>
<wire x1="121.92" y1="142.24" x2="30.48" y2="142.24" width="0.1524" layer="91"/>
<label x="30.48" y="142.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="PME" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="PME"/>
<wire x1="144.78" y1="157.48" x2="144.78" y2="160.02" width="0.1524" layer="91"/>
<wire x1="144.78" y1="160.02" x2="30.48" y2="160.02" width="0.1524" layer="91"/>
<label x="30.48" y="160.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="R60" gate="G$1" pin="1"/>
<pinref part="IC9" gate="G$1" pin="SO"/>
<wire x1="66.04" y1="132.08" x2="121.92" y2="132.08" width="0.1524" layer="91"/>
<wire x1="66.04" y1="132.08" x2="30.48" y2="132.08" width="0.1524" layer="91"/>
<junction x="66.04" y="132.08"/>
<label x="30.48" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="DRY_CON_COM" class="0">
<segment>
<pinref part="K1" gate="G$1" pin="COM"/>
<wire x1="144.78" y1="248.92" x2="165.1" y2="248.92" width="0.1524" layer="91"/>
<label x="165.1" y="248.92" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="DRY_CON_NO" class="0">
<segment>
<pinref part="K1" gate="G$1" pin="NO"/>
<wire x1="144.78" y1="251.46" x2="165.1" y2="251.46" width="0.1524" layer="91"/>
<label x="165.1" y="251.46" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$78" class="0">
<segment>
<pinref part="K1" gate="G$1" pin="COIL(SET+)(RESET-)"/>
<wire x1="81.28" y1="246.38" x2="76.2" y2="246.38" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="CATHODE"/>
<wire x1="76.2" y1="246.38" x2="76.2" y2="233.68" width="0.1524" layer="91"/>
<wire x1="76.2" y1="233.68" x2="99.06" y2="233.68" width="0.1524" layer="91"/>
<pinref part="R29" gate="G$1" pin="1"/>
<wire x1="76.2" y1="246.38" x2="71.12" y2="246.38" width="0.1524" layer="91"/>
<junction x="76.2" y="246.38"/>
</segment>
</net>
<net name="RELAY_CTRL" class="0">
<segment>
<pinref part="R29" gate="G$1" pin="2"/>
<wire x1="53.34" y1="246.38" x2="43.18" y2="246.38" width="0.1524" layer="91"/>
<label x="43.18" y="246.38" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="91.44" y1="261.62" x2="91.44" y2="266.7" width="0.1524" layer="91"/>
<wire x1="91.44" y1="266.7" x2="129.54" y2="266.7" width="0.1524" layer="91"/>
<wire x1="129.54" y1="266.7" x2="129.54" y2="261.62" width="0.1524" layer="91"/>
<wire x1="129.54" y1="261.62" x2="91.44" y2="261.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="287.02" y1="210.82" x2="287.02" y2="215.9" width="0.1524" layer="91"/>
<wire x1="287.02" y1="215.9" x2="314.96" y2="215.9" width="0.1524" layer="91"/>
<wire x1="314.96" y1="215.9" x2="314.96" y2="210.82" width="0.1524" layer="91"/>
<wire x1="314.96" y1="210.82" x2="287.02" y2="210.82" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME4" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME4" gate="G$2" x="325.12" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="337.82" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="411.48" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="342.9" y="19.05" size="2.54" layer="94"/>
</instance>
<instance part="DS6" gate="G$1" x="78.74" y="180.34" smashed="yes">
<attribute name="NAME" x="133.35" y="187.96" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="133.35" y="185.42" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC8" gate="G$1" x="127" y="248.92" smashed="yes">
<attribute name="NAME" x="148.59" y="256.54" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="148.59" y="254" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R85" gate="G$1" x="160.02" y="165.1" smashed="yes">
<attribute name="NAME" x="168.91" y="171.45" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="168.91" y="168.91" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R86" gate="G$1" x="152.4" y="157.48" smashed="yes">
<attribute name="NAME" x="161.29" y="163.83" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="161.29" y="161.29" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R87" gate="G$1" x="43.18" y="160.02" smashed="yes">
<attribute name="NAME" x="52.07" y="166.37" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="52.07" y="163.83" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R88" gate="G$1" x="43.18" y="172.72" smashed="yes">
<attribute name="NAME" x="52.07" y="179.07" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="52.07" y="176.53" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R89" gate="G$1" x="43.18" y="185.42" smashed="yes">
<attribute name="NAME" x="52.07" y="191.77" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="52.07" y="189.23" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R90" gate="G$1" x="160.02" y="175.26" smashed="yes">
<attribute name="NAME" x="168.91" y="181.61" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="168.91" y="179.07" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R91" gate="G$1" x="160.02" y="185.42" smashed="yes">
<attribute name="NAME" x="168.91" y="191.77" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="168.91" y="189.23" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY78" gate="GND" x="68.58" y="172.72" smashed="yes">
<attribute name="VALUE" x="66.675" y="169.545" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY79" gate="GND" x="157.48" y="170.18" smashed="yes">
<attribute name="VALUE" x="155.575" y="167.005" size="1.778" layer="96"/>
</instance>
<instance part="R92" gate="G$1" x="119.38" y="226.06" smashed="yes" rot="R270">
<attribute name="NAME" x="123.19" y="217.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="123.19" y="214.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R93" gate="G$1" x="109.22" y="226.06" smashed="yes" rot="R270">
<attribute name="NAME" x="113.03" y="217.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="113.03" y="214.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R94" gate="G$1" x="99.06" y="226.06" smashed="yes" rot="R270">
<attribute name="NAME" x="102.87" y="217.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="102.87" y="214.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R95" gate="G$1" x="88.9" y="226.06" smashed="yes" rot="R270">
<attribute name="NAME" x="92.71" y="217.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="92.71" y="214.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY80" gate="GND" x="88.9" y="203.2" smashed="yes">
<attribute name="VALUE" x="86.995" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY81" gate="GND" x="99.06" y="203.2" smashed="yes">
<attribute name="VALUE" x="97.155" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY82" gate="GND" x="109.22" y="203.2" smashed="yes">
<attribute name="VALUE" x="107.315" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY83" gate="GND" x="119.38" y="203.2" smashed="yes">
<attribute name="VALUE" x="117.475" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY84" gate="GND" x="124.46" y="226.06" smashed="yes">
<attribute name="VALUE" x="122.555" y="222.885" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY85" gate="+5V" x="124.46" y="259.08" smashed="yes">
<attribute name="VALUE" x="122.555" y="262.255" size="1.778" layer="96"/>
</instance>
<instance part="DS7" gate="G$1" x="284.48" y="180.34" smashed="yes">
<attribute name="NAME" x="339.09" y="187.96" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="339.09" y="185.42" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC10" gate="G$1" x="332.74" y="248.92" smashed="yes">
<attribute name="NAME" x="354.33" y="256.54" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="354.33" y="254" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R96" gate="G$1" x="365.76" y="165.1" smashed="yes">
<attribute name="NAME" x="374.65" y="171.45" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="374.65" y="168.91" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R97" gate="G$1" x="358.14" y="157.48" smashed="yes">
<attribute name="NAME" x="367.03" y="163.83" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="367.03" y="161.29" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R98" gate="G$1" x="248.92" y="160.02" smashed="yes">
<attribute name="NAME" x="257.81" y="166.37" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="257.81" y="163.83" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R99" gate="G$1" x="248.92" y="172.72" smashed="yes">
<attribute name="NAME" x="257.81" y="179.07" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="257.81" y="176.53" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R100" gate="G$1" x="248.92" y="185.42" smashed="yes">
<attribute name="NAME" x="257.81" y="191.77" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="257.81" y="189.23" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R101" gate="G$1" x="365.76" y="175.26" smashed="yes">
<attribute name="NAME" x="374.65" y="181.61" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="374.65" y="179.07" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R102" gate="G$1" x="365.76" y="185.42" smashed="yes">
<attribute name="NAME" x="374.65" y="191.77" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="374.65" y="189.23" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY86" gate="GND" x="274.32" y="172.72" smashed="yes">
<attribute name="VALUE" x="272.415" y="169.545" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY87" gate="GND" x="363.22" y="170.18" smashed="yes">
<attribute name="VALUE" x="361.315" y="167.005" size="1.778" layer="96"/>
</instance>
<instance part="R103" gate="G$1" x="325.12" y="226.06" smashed="yes" rot="R270">
<attribute name="NAME" x="328.93" y="217.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="328.93" y="214.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R104" gate="G$1" x="314.96" y="226.06" smashed="yes" rot="R270">
<attribute name="NAME" x="318.77" y="217.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="318.77" y="214.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R105" gate="G$1" x="304.8" y="226.06" smashed="yes" rot="R270">
<attribute name="NAME" x="308.61" y="217.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="308.61" y="214.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R106" gate="G$1" x="294.64" y="226.06" smashed="yes" rot="R270">
<attribute name="NAME" x="298.45" y="217.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="298.45" y="214.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY88" gate="GND" x="294.64" y="203.2" smashed="yes">
<attribute name="VALUE" x="292.735" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY89" gate="GND" x="304.8" y="203.2" smashed="yes">
<attribute name="VALUE" x="302.895" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY90" gate="GND" x="314.96" y="203.2" smashed="yes">
<attribute name="VALUE" x="313.055" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY91" gate="GND" x="325.12" y="203.2" smashed="yes">
<attribute name="VALUE" x="323.215" y="200.025" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY92" gate="GND" x="330.2" y="226.06" smashed="yes">
<attribute name="VALUE" x="328.295" y="222.885" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY95" gate="+5V" x="330.2" y="259.08" smashed="yes">
<attribute name="VALUE" x="328.295" y="262.255" size="1.778" layer="96"/>
</instance>
<instance part="DS8" gate="G$1" x="78.74" y="48.26" smashed="yes">
<attribute name="NAME" x="133.35" y="55.88" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="133.35" y="53.34" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC11" gate="G$1" x="127" y="116.84" smashed="yes">
<attribute name="NAME" x="148.59" y="124.46" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="148.59" y="121.92" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R107" gate="G$1" x="160.02" y="33.02" smashed="yes">
<attribute name="NAME" x="168.91" y="39.37" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="168.91" y="36.83" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R108" gate="G$1" x="152.4" y="25.4" smashed="yes">
<attribute name="NAME" x="161.29" y="31.75" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="161.29" y="29.21" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R109" gate="G$1" x="43.18" y="27.94" smashed="yes">
<attribute name="NAME" x="52.07" y="34.29" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="52.07" y="31.75" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R110" gate="G$1" x="43.18" y="40.64" smashed="yes">
<attribute name="NAME" x="52.07" y="46.99" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="52.07" y="44.45" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R111" gate="G$1" x="43.18" y="53.34" smashed="yes">
<attribute name="NAME" x="52.07" y="59.69" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="52.07" y="57.15" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R112" gate="G$1" x="160.02" y="43.18" smashed="yes">
<attribute name="NAME" x="168.91" y="49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="168.91" y="46.99" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R113" gate="G$1" x="160.02" y="53.34" smashed="yes">
<attribute name="NAME" x="168.91" y="59.69" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="168.91" y="57.15" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY96" gate="GND" x="68.58" y="40.64" smashed="yes">
<attribute name="VALUE" x="66.675" y="37.465" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY97" gate="GND" x="157.48" y="38.1" smashed="yes">
<attribute name="VALUE" x="155.575" y="34.925" size="1.778" layer="96"/>
</instance>
<instance part="R114" gate="G$1" x="119.38" y="93.98" smashed="yes" rot="R270">
<attribute name="NAME" x="123.19" y="85.09" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="123.19" y="82.55" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R115" gate="G$1" x="109.22" y="93.98" smashed="yes" rot="R270">
<attribute name="NAME" x="113.03" y="85.09" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="113.03" y="82.55" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R116" gate="G$1" x="99.06" y="93.98" smashed="yes" rot="R270">
<attribute name="NAME" x="102.87" y="85.09" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="102.87" y="82.55" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R117" gate="G$1" x="88.9" y="93.98" smashed="yes" rot="R270">
<attribute name="NAME" x="92.71" y="85.09" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="92.71" y="82.55" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="SUPPLY98" gate="GND" x="88.9" y="71.12" smashed="yes">
<attribute name="VALUE" x="86.995" y="67.945" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY99" gate="GND" x="99.06" y="71.12" smashed="yes">
<attribute name="VALUE" x="97.155" y="67.945" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY100" gate="GND" x="109.22" y="71.12" smashed="yes">
<attribute name="VALUE" x="107.315" y="67.945" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY101" gate="GND" x="119.38" y="71.12" smashed="yes">
<attribute name="VALUE" x="117.475" y="67.945" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY102" gate="GND" x="124.46" y="93.98" smashed="yes">
<attribute name="VALUE" x="122.555" y="90.805" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY103" gate="+5V" x="124.46" y="127" smashed="yes">
<attribute name="VALUE" x="122.555" y="130.175" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="DS6" gate="G$1" pin="COMMON_CATHODE_1"/>
<pinref part="SUPPLY79" gate="GND" pin="GND"/>
<wire x1="137.16" y1="172.72" x2="157.48" y2="172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY78" gate="GND" pin="GND"/>
<pinref part="DS6" gate="G$1" pin="COMMON_CATHODE_2"/>
<wire x1="68.58" y1="175.26" x2="78.74" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="LE"/>
<pinref part="SUPPLY84" gate="GND" pin="GND"/>
<wire x1="127" y1="238.76" x2="124.46" y2="238.76" width="0.1524" layer="91"/>
<wire x1="124.46" y1="238.76" x2="124.46" y2="231.14" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="VSS"/>
<wire x1="124.46" y1="231.14" x2="124.46" y2="228.6" width="0.1524" layer="91"/>
<wire x1="127" y1="231.14" x2="124.46" y2="231.14" width="0.1524" layer="91"/>
<junction x="124.46" y="231.14"/>
</segment>
<segment>
<pinref part="R95" gate="G$1" pin="2"/>
<pinref part="SUPPLY80" gate="GND" pin="GND"/>
<wire x1="88.9" y1="208.28" x2="88.9" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R94" gate="G$1" pin="2"/>
<pinref part="SUPPLY81" gate="GND" pin="GND"/>
<wire x1="99.06" y1="208.28" x2="99.06" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R93" gate="G$1" pin="2"/>
<pinref part="SUPPLY82" gate="GND" pin="GND"/>
<wire x1="109.22" y1="208.28" x2="109.22" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R92" gate="G$1" pin="2"/>
<pinref part="SUPPLY83" gate="GND" pin="GND"/>
<wire x1="119.38" y1="208.28" x2="119.38" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="DS7" gate="G$1" pin="COMMON_CATHODE_1"/>
<pinref part="SUPPLY87" gate="GND" pin="GND"/>
<wire x1="342.9" y1="172.72" x2="363.22" y2="172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY86" gate="GND" pin="GND"/>
<pinref part="DS7" gate="G$1" pin="COMMON_CATHODE_2"/>
<wire x1="274.32" y1="175.26" x2="284.48" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC10" gate="G$1" pin="LE"/>
<pinref part="SUPPLY92" gate="GND" pin="GND"/>
<wire x1="332.74" y1="238.76" x2="330.2" y2="238.76" width="0.1524" layer="91"/>
<wire x1="330.2" y1="238.76" x2="330.2" y2="231.14" width="0.1524" layer="91"/>
<pinref part="IC10" gate="G$1" pin="VSS"/>
<wire x1="330.2" y1="231.14" x2="330.2" y2="228.6" width="0.1524" layer="91"/>
<wire x1="332.74" y1="231.14" x2="330.2" y2="231.14" width="0.1524" layer="91"/>
<junction x="330.2" y="231.14"/>
</segment>
<segment>
<pinref part="R106" gate="G$1" pin="2"/>
<pinref part="SUPPLY88" gate="GND" pin="GND"/>
<wire x1="294.64" y1="208.28" x2="294.64" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R105" gate="G$1" pin="2"/>
<pinref part="SUPPLY89" gate="GND" pin="GND"/>
<wire x1="304.8" y1="208.28" x2="304.8" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R104" gate="G$1" pin="2"/>
<pinref part="SUPPLY90" gate="GND" pin="GND"/>
<wire x1="314.96" y1="208.28" x2="314.96" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R103" gate="G$1" pin="2"/>
<pinref part="SUPPLY91" gate="GND" pin="GND"/>
<wire x1="325.12" y1="208.28" x2="325.12" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="DS8" gate="G$1" pin="COMMON_CATHODE_1"/>
<pinref part="SUPPLY97" gate="GND" pin="GND"/>
<wire x1="137.16" y1="40.64" x2="157.48" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY96" gate="GND" pin="GND"/>
<pinref part="DS8" gate="G$1" pin="COMMON_CATHODE_2"/>
<wire x1="68.58" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC11" gate="G$1" pin="LE"/>
<pinref part="SUPPLY102" gate="GND" pin="GND"/>
<wire x1="127" y1="106.68" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<wire x1="124.46" y1="106.68" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<pinref part="IC11" gate="G$1" pin="VSS"/>
<wire x1="124.46" y1="99.06" x2="124.46" y2="96.52" width="0.1524" layer="91"/>
<wire x1="127" y1="99.06" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<junction x="124.46" y="99.06"/>
</segment>
<segment>
<pinref part="R117" gate="G$1" pin="2"/>
<pinref part="SUPPLY98" gate="GND" pin="GND"/>
<wire x1="88.9" y1="76.2" x2="88.9" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R116" gate="G$1" pin="2"/>
<pinref part="SUPPLY99" gate="GND" pin="GND"/>
<wire x1="99.06" y1="76.2" x2="99.06" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R115" gate="G$1" pin="2"/>
<pinref part="SUPPLY100" gate="GND" pin="GND"/>
<wire x1="109.22" y1="76.2" x2="109.22" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R114" gate="G$1" pin="2"/>
<pinref part="SUPPLY101" gate="GND" pin="GND"/>
<wire x1="119.38" y1="76.2" x2="119.38" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CHAR_1E" class="0">
<segment>
<pinref part="R89" gate="G$1" pin="1"/>
<wire x1="43.18" y1="185.42" x2="27.94" y2="185.42" width="0.1524" layer="91"/>
<label x="27.94" y="185.42" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="E"/>
<wire x1="152.4" y1="231.14" x2="160.02" y2="231.14" width="0.1524" layer="91"/>
<label x="160.02" y="231.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_1D" class="0">
<segment>
<pinref part="R88" gate="G$1" pin="1"/>
<wire x1="43.18" y1="172.72" x2="27.94" y2="172.72" width="0.1524" layer="91"/>
<label x="27.94" y="172.72" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="D_2"/>
<wire x1="152.4" y1="233.68" x2="160.02" y2="233.68" width="0.1524" layer="91"/>
<label x="160.02" y="233.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_1C" class="0">
<segment>
<pinref part="R87" gate="G$1" pin="1"/>
<wire x1="43.18" y1="160.02" x2="27.94" y2="160.02" width="0.1524" layer="91"/>
<label x="27.94" y="160.02" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="C_2"/>
<wire x1="152.4" y1="236.22" x2="160.02" y2="236.22" width="0.1524" layer="91"/>
<label x="160.02" y="236.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_1G" class="0">
<segment>
<pinref part="R91" gate="G$1" pin="2"/>
<wire x1="177.8" y1="185.42" x2="185.42" y2="185.42" width="0.1524" layer="91"/>
<label x="185.42" y="185.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="G"/>
<wire x1="152.4" y1="243.84" x2="160.02" y2="243.84" width="0.1524" layer="91"/>
<label x="160.02" y="243.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_1F" class="0">
<segment>
<pinref part="R90" gate="G$1" pin="2"/>
<wire x1="177.8" y1="175.26" x2="185.42" y2="175.26" width="0.1524" layer="91"/>
<label x="185.42" y="175.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="F"/>
<wire x1="152.4" y1="246.38" x2="160.02" y2="246.38" width="0.1524" layer="91"/>
<label x="160.02" y="246.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_2A" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="A_2"/>
<wire x1="152.4" y1="241.3" x2="160.02" y2="241.3" width="0.1524" layer="91"/>
<label x="160.02" y="241.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R96" gate="G$1" pin="2"/>
<wire x1="383.54" y1="165.1" x2="391.16" y2="165.1" width="0.1524" layer="91"/>
<label x="391.16" y="165.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC10" gate="G$1" pin="A_2"/>
<wire x1="358.14" y1="241.3" x2="365.76" y2="241.3" width="0.1524" layer="91"/>
<label x="365.76" y="241.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_1B" class="0">
<segment>
<pinref part="R86" gate="G$1" pin="2"/>
<wire x1="170.18" y1="157.48" x2="185.42" y2="157.48" width="0.1524" layer="91"/>
<label x="185.42" y="157.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="B_2"/>
<wire x1="152.4" y1="238.76" x2="160.02" y2="238.76" width="0.1524" layer="91"/>
<label x="160.02" y="238.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="R89" gate="G$1" pin="2"/>
<wire x1="60.96" y1="185.42" x2="63.5" y2="185.42" width="0.1524" layer="91"/>
<wire x1="63.5" y1="185.42" x2="63.5" y2="180.34" width="0.1524" layer="91"/>
<pinref part="DS6" gate="G$1" pin="ANODE_E"/>
<wire x1="63.5" y1="180.34" x2="78.74" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="R87" gate="G$1" pin="2"/>
<wire x1="60.96" y1="160.02" x2="73.66" y2="160.02" width="0.1524" layer="91"/>
<wire x1="73.66" y1="160.02" x2="73.66" y2="172.72" width="0.1524" layer="91"/>
<pinref part="DS6" gate="G$1" pin="ANODE_C"/>
<wire x1="73.66" y1="172.72" x2="78.74" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="DS6" gate="G$1" pin="ANODE_G"/>
<wire x1="137.16" y1="180.34" x2="154.94" y2="180.34" width="0.1524" layer="91"/>
<wire x1="154.94" y1="180.34" x2="154.94" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R91" gate="G$1" pin="1"/>
<wire x1="154.94" y1="185.42" x2="160.02" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="DS6" gate="G$1" pin="ANODE_F"/>
<pinref part="R90" gate="G$1" pin="1"/>
<wire x1="137.16" y1="175.26" x2="160.02" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="DS6" gate="G$1" pin="ANODE_A"/>
<wire x1="137.16" y1="170.18" x2="149.86" y2="170.18" width="0.1524" layer="91"/>
<pinref part="R85" gate="G$1" pin="1"/>
<wire x1="149.86" y1="170.18" x2="149.86" y2="165.1" width="0.1524" layer="91"/>
<wire x1="149.86" y1="165.1" x2="160.02" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="DS6" gate="G$1" pin="ANODE_B"/>
<wire x1="137.16" y1="167.64" x2="144.78" y2="167.64" width="0.1524" layer="91"/>
<wire x1="144.78" y1="167.64" x2="144.78" y2="157.48" width="0.1524" layer="91"/>
<pinref part="R86" gate="G$1" pin="1"/>
<wire x1="144.78" y1="157.48" x2="152.4" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IN_1B" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="B_1"/>
<wire x1="127" y1="248.92" x2="88.9" y2="248.92" width="0.1524" layer="91"/>
<label x="78.74" y="248.92" size="1.778" layer="95" rot="R180"/>
<pinref part="R95" gate="G$1" pin="1"/>
<wire x1="88.9" y1="248.92" x2="78.74" y2="248.92" width="0.1524" layer="91"/>
<wire x1="88.9" y1="226.06" x2="88.9" y2="248.92" width="0.1524" layer="91"/>
<junction x="88.9" y="248.92"/>
</segment>
</net>
<net name="IN_1C" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="C_1"/>
<wire x1="127" y1="246.38" x2="99.06" y2="246.38" width="0.1524" layer="91"/>
<label x="78.74" y="246.38" size="1.778" layer="95" rot="R180"/>
<pinref part="R94" gate="G$1" pin="1"/>
<wire x1="99.06" y1="246.38" x2="78.74" y2="246.38" width="0.1524" layer="91"/>
<wire x1="99.06" y1="226.06" x2="99.06" y2="246.38" width="0.1524" layer="91"/>
<junction x="99.06" y="246.38"/>
</segment>
</net>
<net name="IN_1D" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="D_1"/>
<wire x1="127" y1="236.22" x2="109.22" y2="236.22" width="0.1524" layer="91"/>
<label x="78.74" y="236.22" size="1.778" layer="95" rot="R180"/>
<pinref part="R93" gate="G$1" pin="1"/>
<wire x1="109.22" y1="236.22" x2="78.74" y2="236.22" width="0.1524" layer="91"/>
<wire x1="109.22" y1="226.06" x2="109.22" y2="236.22" width="0.1524" layer="91"/>
<junction x="109.22" y="236.22"/>
</segment>
</net>
<net name="IN_1A" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="A_1"/>
<wire x1="127" y1="233.68" x2="119.38" y2="233.68" width="0.1524" layer="91"/>
<label x="78.74" y="233.68" size="1.778" layer="95" rot="R180"/>
<pinref part="R92" gate="G$1" pin="1"/>
<wire x1="119.38" y1="233.68" x2="78.74" y2="233.68" width="0.1524" layer="91"/>
<wire x1="119.38" y1="226.06" x2="119.38" y2="233.68" width="0.1524" layer="91"/>
<junction x="119.38" y="233.68"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="SUPPLY85" gate="+5V" pin="+5V"/>
<wire x1="124.46" y1="256.54" x2="124.46" y2="243.84" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="!BI"/>
<wire x1="124.46" y1="243.84" x2="124.46" y2="241.3" width="0.1524" layer="91"/>
<wire x1="124.46" y1="241.3" x2="127" y2="241.3" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="!LT"/>
<wire x1="127" y1="243.84" x2="124.46" y2="243.84" width="0.1524" layer="91"/>
<junction x="124.46" y="243.84"/>
<wire x1="124.46" y1="256.54" x2="154.94" y2="256.54" width="0.1524" layer="91"/>
<junction x="124.46" y="256.54"/>
<wire x1="154.94" y1="256.54" x2="154.94" y2="248.92" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="VDD"/>
<wire x1="154.94" y1="248.92" x2="152.4" y2="248.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY95" gate="+5V" pin="+5V"/>
<wire x1="330.2" y1="256.54" x2="330.2" y2="243.84" width="0.1524" layer="91"/>
<pinref part="IC10" gate="G$1" pin="!BI"/>
<wire x1="330.2" y1="243.84" x2="330.2" y2="241.3" width="0.1524" layer="91"/>
<wire x1="330.2" y1="241.3" x2="332.74" y2="241.3" width="0.1524" layer="91"/>
<pinref part="IC10" gate="G$1" pin="!LT"/>
<wire x1="332.74" y1="243.84" x2="330.2" y2="243.84" width="0.1524" layer="91"/>
<junction x="330.2" y="243.84"/>
<wire x1="330.2" y1="256.54" x2="360.68" y2="256.54" width="0.1524" layer="91"/>
<junction x="330.2" y="256.54"/>
<wire x1="360.68" y1="256.54" x2="360.68" y2="248.92" width="0.1524" layer="91"/>
<pinref part="IC10" gate="G$1" pin="VDD"/>
<wire x1="360.68" y1="248.92" x2="358.14" y2="248.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY103" gate="+5V" pin="+5V"/>
<wire x1="124.46" y1="124.46" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<pinref part="IC11" gate="G$1" pin="!BI"/>
<wire x1="124.46" y1="111.76" x2="124.46" y2="109.22" width="0.1524" layer="91"/>
<wire x1="124.46" y1="109.22" x2="127" y2="109.22" width="0.1524" layer="91"/>
<pinref part="IC11" gate="G$1" pin="!LT"/>
<wire x1="127" y1="111.76" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<junction x="124.46" y="111.76"/>
<wire x1="124.46" y1="124.46" x2="154.94" y2="124.46" width="0.1524" layer="91"/>
<junction x="124.46" y="124.46"/>
<wire x1="154.94" y1="124.46" x2="154.94" y2="116.84" width="0.1524" layer="91"/>
<pinref part="IC11" gate="G$1" pin="VDD"/>
<wire x1="154.94" y1="116.84" x2="152.4" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="R88" gate="G$1" pin="2"/>
<wire x1="60.96" y1="172.72" x2="63.5" y2="172.72" width="0.1524" layer="91"/>
<wire x1="63.5" y1="172.72" x2="63.5" y2="177.8" width="0.1524" layer="91"/>
<pinref part="DS6" gate="G$1" pin="ANODE_D"/>
<wire x1="63.5" y1="177.8" x2="78.74" y2="177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="R100" gate="G$1" pin="2"/>
<wire x1="266.7" y1="185.42" x2="269.24" y2="185.42" width="0.1524" layer="91"/>
<wire x1="269.24" y1="185.42" x2="269.24" y2="180.34" width="0.1524" layer="91"/>
<pinref part="DS7" gate="G$1" pin="ANODE_E"/>
<wire x1="269.24" y1="180.34" x2="284.48" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="R98" gate="G$1" pin="2"/>
<wire x1="266.7" y1="160.02" x2="279.4" y2="160.02" width="0.1524" layer="91"/>
<wire x1="279.4" y1="160.02" x2="279.4" y2="172.72" width="0.1524" layer="91"/>
<pinref part="DS7" gate="G$1" pin="ANODE_C"/>
<wire x1="279.4" y1="172.72" x2="284.48" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="DS7" gate="G$1" pin="ANODE_G"/>
<wire x1="342.9" y1="180.34" x2="360.68" y2="180.34" width="0.1524" layer="91"/>
<wire x1="360.68" y1="180.34" x2="360.68" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R102" gate="G$1" pin="1"/>
<wire x1="360.68" y1="185.42" x2="365.76" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="DS7" gate="G$1" pin="ANODE_F"/>
<pinref part="R101" gate="G$1" pin="1"/>
<wire x1="342.9" y1="175.26" x2="365.76" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="DS7" gate="G$1" pin="ANODE_A"/>
<wire x1="342.9" y1="170.18" x2="355.6" y2="170.18" width="0.1524" layer="91"/>
<pinref part="R96" gate="G$1" pin="1"/>
<wire x1="355.6" y1="170.18" x2="355.6" y2="165.1" width="0.1524" layer="91"/>
<wire x1="355.6" y1="165.1" x2="365.76" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="DS7" gate="G$1" pin="ANODE_B"/>
<wire x1="342.9" y1="167.64" x2="350.52" y2="167.64" width="0.1524" layer="91"/>
<wire x1="350.52" y1="167.64" x2="350.52" y2="157.48" width="0.1524" layer="91"/>
<pinref part="R97" gate="G$1" pin="1"/>
<wire x1="350.52" y1="157.48" x2="358.14" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<pinref part="R99" gate="G$1" pin="2"/>
<wire x1="266.7" y1="172.72" x2="269.24" y2="172.72" width="0.1524" layer="91"/>
<wire x1="269.24" y1="172.72" x2="269.24" y2="177.8" width="0.1524" layer="91"/>
<pinref part="DS7" gate="G$1" pin="ANODE_D"/>
<wire x1="269.24" y1="177.8" x2="284.48" y2="177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="R111" gate="G$1" pin="2"/>
<wire x1="60.96" y1="53.34" x2="63.5" y2="53.34" width="0.1524" layer="91"/>
<wire x1="63.5" y1="53.34" x2="63.5" y2="48.26" width="0.1524" layer="91"/>
<pinref part="DS8" gate="G$1" pin="ANODE_E"/>
<wire x1="63.5" y1="48.26" x2="78.74" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="R109" gate="G$1" pin="2"/>
<wire x1="60.96" y1="27.94" x2="73.66" y2="27.94" width="0.1524" layer="91"/>
<wire x1="73.66" y1="27.94" x2="73.66" y2="40.64" width="0.1524" layer="91"/>
<pinref part="DS8" gate="G$1" pin="ANODE_C"/>
<wire x1="73.66" y1="40.64" x2="78.74" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<pinref part="DS8" gate="G$1" pin="ANODE_G"/>
<wire x1="137.16" y1="48.26" x2="154.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="154.94" y1="48.26" x2="154.94" y2="53.34" width="0.1524" layer="91"/>
<pinref part="R113" gate="G$1" pin="1"/>
<wire x1="154.94" y1="53.34" x2="160.02" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="DS8" gate="G$1" pin="ANODE_F"/>
<pinref part="R112" gate="G$1" pin="1"/>
<wire x1="137.16" y1="43.18" x2="160.02" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<pinref part="DS8" gate="G$1" pin="ANODE_A"/>
<wire x1="137.16" y1="38.1" x2="149.86" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R107" gate="G$1" pin="1"/>
<wire x1="149.86" y1="38.1" x2="149.86" y2="33.02" width="0.1524" layer="91"/>
<wire x1="149.86" y1="33.02" x2="160.02" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$74" class="0">
<segment>
<pinref part="DS8" gate="G$1" pin="ANODE_B"/>
<wire x1="137.16" y1="35.56" x2="144.78" y2="35.56" width="0.1524" layer="91"/>
<wire x1="144.78" y1="35.56" x2="144.78" y2="25.4" width="0.1524" layer="91"/>
<pinref part="R108" gate="G$1" pin="1"/>
<wire x1="144.78" y1="25.4" x2="152.4" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$75" class="0">
<segment>
<pinref part="R110" gate="G$1" pin="2"/>
<wire x1="60.96" y1="40.64" x2="63.5" y2="40.64" width="0.1524" layer="91"/>
<wire x1="63.5" y1="40.64" x2="63.5" y2="45.72" width="0.1524" layer="91"/>
<pinref part="DS8" gate="G$1" pin="ANODE_D"/>
<wire x1="63.5" y1="45.72" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IN_2B" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="B_1"/>
<wire x1="332.74" y1="248.92" x2="294.64" y2="248.92" width="0.1524" layer="91"/>
<label x="284.48" y="248.92" size="1.778" layer="95" rot="R180"/>
<pinref part="R106" gate="G$1" pin="1"/>
<wire x1="294.64" y1="248.92" x2="284.48" y2="248.92" width="0.1524" layer="91"/>
<wire x1="294.64" y1="226.06" x2="294.64" y2="248.92" width="0.1524" layer="91"/>
<junction x="294.64" y="248.92"/>
</segment>
</net>
<net name="IN_2C" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="C_1"/>
<wire x1="332.74" y1="246.38" x2="304.8" y2="246.38" width="0.1524" layer="91"/>
<label x="284.48" y="246.38" size="1.778" layer="95" rot="R180"/>
<pinref part="R105" gate="G$1" pin="1"/>
<wire x1="304.8" y1="246.38" x2="284.48" y2="246.38" width="0.1524" layer="91"/>
<wire x1="304.8" y1="226.06" x2="304.8" y2="246.38" width="0.1524" layer="91"/>
<junction x="304.8" y="246.38"/>
</segment>
</net>
<net name="IN_2D" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="D_1"/>
<wire x1="332.74" y1="236.22" x2="314.96" y2="236.22" width="0.1524" layer="91"/>
<label x="284.48" y="236.22" size="1.778" layer="95" rot="R180"/>
<pinref part="R104" gate="G$1" pin="1"/>
<wire x1="314.96" y1="236.22" x2="284.48" y2="236.22" width="0.1524" layer="91"/>
<wire x1="314.96" y1="226.06" x2="314.96" y2="236.22" width="0.1524" layer="91"/>
<junction x="314.96" y="236.22"/>
</segment>
</net>
<net name="IN_2A" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="A_1"/>
<wire x1="332.74" y1="233.68" x2="325.12" y2="233.68" width="0.1524" layer="91"/>
<label x="284.48" y="233.68" size="1.778" layer="95" rot="R180"/>
<pinref part="R103" gate="G$1" pin="1"/>
<wire x1="325.12" y1="233.68" x2="284.48" y2="233.68" width="0.1524" layer="91"/>
<wire x1="325.12" y1="226.06" x2="325.12" y2="233.68" width="0.1524" layer="91"/>
<junction x="325.12" y="233.68"/>
</segment>
</net>
<net name="CHAR_2F" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="F"/>
<wire x1="358.14" y1="246.38" x2="365.76" y2="246.38" width="0.1524" layer="91"/>
<label x="365.76" y="246.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R101" gate="G$1" pin="2"/>
<wire x1="383.54" y1="175.26" x2="391.16" y2="175.26" width="0.1524" layer="91"/>
<label x="391.16" y="175.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_2G" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="G"/>
<wire x1="358.14" y1="243.84" x2="365.76" y2="243.84" width="0.1524" layer="91"/>
<label x="365.76" y="243.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R102" gate="G$1" pin="2"/>
<wire x1="383.54" y1="185.42" x2="391.16" y2="185.42" width="0.1524" layer="91"/>
<label x="391.16" y="185.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_2B" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="B_2"/>
<wire x1="358.14" y1="238.76" x2="365.76" y2="238.76" width="0.1524" layer="91"/>
<label x="365.76" y="238.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R97" gate="G$1" pin="2"/>
<wire x1="375.92" y1="157.48" x2="391.16" y2="157.48" width="0.1524" layer="91"/>
<label x="391.16" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_2C" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="C_2"/>
<wire x1="358.14" y1="236.22" x2="365.76" y2="236.22" width="0.1524" layer="91"/>
<label x="365.76" y="236.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R98" gate="G$1" pin="1"/>
<wire x1="248.92" y1="160.02" x2="233.68" y2="160.02" width="0.1524" layer="91"/>
<label x="233.68" y="160.02" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="CHAR_2D" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="D_2"/>
<wire x1="358.14" y1="233.68" x2="365.76" y2="233.68" width="0.1524" layer="91"/>
<label x="365.76" y="233.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R99" gate="G$1" pin="1"/>
<wire x1="248.92" y1="172.72" x2="233.68" y2="172.72" width="0.1524" layer="91"/>
<label x="233.68" y="172.72" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="CHAR_2E" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="E"/>
<wire x1="358.14" y1="231.14" x2="365.76" y2="231.14" width="0.1524" layer="91"/>
<label x="365.76" y="231.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R100" gate="G$1" pin="1"/>
<wire x1="248.92" y1="185.42" x2="233.68" y2="185.42" width="0.1524" layer="91"/>
<label x="233.68" y="185.42" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="IN_3B" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="B_1"/>
<wire x1="127" y1="116.84" x2="88.9" y2="116.84" width="0.1524" layer="91"/>
<label x="78.74" y="116.84" size="1.778" layer="95" rot="R180"/>
<pinref part="R117" gate="G$1" pin="1"/>
<wire x1="88.9" y1="116.84" x2="78.74" y2="116.84" width="0.1524" layer="91"/>
<wire x1="88.9" y1="93.98" x2="88.9" y2="116.84" width="0.1524" layer="91"/>
<junction x="88.9" y="116.84"/>
</segment>
</net>
<net name="IN_3C" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="C_1"/>
<wire x1="127" y1="114.3" x2="99.06" y2="114.3" width="0.1524" layer="91"/>
<label x="78.74" y="114.3" size="1.778" layer="95" rot="R180"/>
<pinref part="R116" gate="G$1" pin="1"/>
<wire x1="99.06" y1="114.3" x2="78.74" y2="114.3" width="0.1524" layer="91"/>
<wire x1="99.06" y1="93.98" x2="99.06" y2="114.3" width="0.1524" layer="91"/>
<junction x="99.06" y="114.3"/>
</segment>
</net>
<net name="IN_3D" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="D_1"/>
<wire x1="127" y1="104.14" x2="109.22" y2="104.14" width="0.1524" layer="91"/>
<label x="78.74" y="104.14" size="1.778" layer="95" rot="R180"/>
<pinref part="R115" gate="G$1" pin="1"/>
<wire x1="109.22" y1="104.14" x2="78.74" y2="104.14" width="0.1524" layer="91"/>
<wire x1="109.22" y1="93.98" x2="109.22" y2="104.14" width="0.1524" layer="91"/>
<junction x="109.22" y="104.14"/>
</segment>
</net>
<net name="IN_3A" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="A_1"/>
<wire x1="127" y1="101.6" x2="119.38" y2="101.6" width="0.1524" layer="91"/>
<label x="78.74" y="101.6" size="1.778" layer="95" rot="R180"/>
<pinref part="R114" gate="G$1" pin="1"/>
<wire x1="119.38" y1="101.6" x2="78.74" y2="101.6" width="0.1524" layer="91"/>
<wire x1="119.38" y1="93.98" x2="119.38" y2="101.6" width="0.1524" layer="91"/>
<junction x="119.38" y="101.6"/>
</segment>
</net>
<net name="CHAR_3F" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="F"/>
<wire x1="152.4" y1="114.3" x2="160.02" y2="114.3" width="0.1524" layer="91"/>
<label x="160.02" y="114.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R112" gate="G$1" pin="2"/>
<wire x1="177.8" y1="43.18" x2="185.42" y2="43.18" width="0.1524" layer="91"/>
<label x="185.42" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_3G" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="G"/>
<wire x1="152.4" y1="111.76" x2="160.02" y2="111.76" width="0.1524" layer="91"/>
<label x="160.02" y="111.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R113" gate="G$1" pin="2"/>
<wire x1="177.8" y1="53.34" x2="185.42" y2="53.34" width="0.1524" layer="91"/>
<label x="185.42" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_3A" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="A_2"/>
<wire x1="152.4" y1="109.22" x2="160.02" y2="109.22" width="0.1524" layer="91"/>
<label x="160.02" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R107" gate="G$1" pin="2"/>
<wire x1="177.8" y1="33.02" x2="185.42" y2="33.02" width="0.1524" layer="91"/>
<label x="185.42" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_3B" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="B_2"/>
<wire x1="152.4" y1="106.68" x2="160.02" y2="106.68" width="0.1524" layer="91"/>
<label x="160.02" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R108" gate="G$1" pin="2"/>
<wire x1="170.18" y1="25.4" x2="185.42" y2="25.4" width="0.1524" layer="91"/>
<label x="185.42" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHAR_3C" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="C_2"/>
<wire x1="152.4" y1="104.14" x2="160.02" y2="104.14" width="0.1524" layer="91"/>
<label x="160.02" y="104.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R109" gate="G$1" pin="1"/>
<wire x1="43.18" y1="27.94" x2="27.94" y2="27.94" width="0.1524" layer="91"/>
<label x="27.94" y="27.94" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="CHAR_3D" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="D_2"/>
<wire x1="152.4" y1="101.6" x2="160.02" y2="101.6" width="0.1524" layer="91"/>
<label x="160.02" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R110" gate="G$1" pin="1"/>
<wire x1="43.18" y1="40.64" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<label x="27.94" y="40.64" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="CHAR_3E" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="E"/>
<wire x1="152.4" y1="99.06" x2="160.02" y2="99.06" width="0.1524" layer="91"/>
<label x="160.02" y="99.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R111" gate="G$1" pin="1"/>
<wire x1="43.18" y1="53.34" x2="27.94" y2="53.34" width="0.1524" layer="91"/>
<label x="27.94" y="53.34" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="CHAR_1A" class="0">
<segment>
<pinref part="R85" gate="G$1" pin="2"/>
<wire x1="177.8" y1="165.1" x2="185.42" y2="165.1" width="0.1524" layer="91"/>
<label x="185.42" y="165.1" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
