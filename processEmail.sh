#!/bin/bash
#########################################
##    @Mail Y0ur Linux                 ##
##    @Sentry Sec LAB, Code by Bin4xin.##
#########################################

## linux term command to send mail.
#mailContent_Type="text/html"
#mailTo="1904829268@qq.com"
#mailHTMLFile="/home/bin4xin/shares/share-files/bash/s-nail-bash-ps/google.html"
#mailFrom=""
#s-nail -M '$mailContent_Type' -s '信息来自：【$serverPlace｜$serverDate】共计【$processCounts】进程' $mailTo < $mailHTMLFile
#s-nail -M "text/html" -s "信息来自：【$(curl -sL ip.tool.lu |awk -F ":" '{print $2}'|awk 'NR==2')】|【$(date +%Y/%m/%d/%R) | 
#$(ps aux --sort=-rss|wc -l)进程】" 1904829268@qq.com < google.html

## end.

## Github action html temp test.
# fontStyle=$(cat<<EOF
# <font size="3" color="red">
# EOF
# )
# fontStyleEnd=$(cat<<EOF
# </font>
# EOF
# )
## tmp stop



serverIPaddr=$(curl -sL ip.tool.lu |awk -F ":" '{print $2}'|awk 'NR==1')
serverPlace=$(curl -sL ip.tool.lu |awk -F ":" '{print $2}'|awk 'NR==2')
serverDate=$(date +%Y/%m/%d/%R)
processCounts=$(ps -ef|wc -l)

serverAllTipsInfo="当地时间: $serverDate<br>共计: $processCounts个进程<br>IP地址:$serverIPaddr<br>地址:$serverPlace<br>"
process=$(ps -Ao user,pid,comm --no-headers --sort=-uid| awk 'BEGIN{print "USER,PID,CMD"}{$1=$1}1' OFS=,|sed 's/$/<br>/')

htmlTempStart=$(cat<<EOF
<table border="0" cellspacing="0" cellpadding="0" style="padding-bottom:20px;max-width:516px;min-width:220px">
		<tbody><tr>
			<td width="8" style="width:8px"></td>
		<td>
		<div style="border-style:solid;border-width:thin;border-color:#dadce0;border-radius:8px;padding:40px 20px" align="center" class="m_-6187630639195844270mdv2rw"><svg version="1.1"
	 id="svg3093" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:svg="http://www.w3.org/2000/svg"
	 xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 68 50"
	 style="enable-background:new 0 0 68 50;" xml:space="preserve" width="148" height="48" >
<style type="text/css">
	.st0{fill:#984390;}
	.st1{clip-path:url(#SVGID_2_);}
</style>
<g>
	<path class="st0" d="M57.2,7.1C50.6,2.6,42.6,0,34,0S17.4,2.6,10.8,7.1c-0.2,1.8-0.4,3.6-0.4,5.5c0,16.5,9.6,30.8,23.6,37.6
		c14-6.8,23.6-21.1,23.6-37.6C57.6,10.7,57.5,8.8,57.2,7.1z M34,46.2c-12-6.5-20.1-19.1-20.1-33.7c0-1.2,0.1-2.3,0.2-3.4
		c5.8-3.6,12.6-5.6,20-5.6s14.1,2.1,20,5.6c0.1,1.1,0.2,2.3,0.2,3.4C54.1,27.1,46,39.7,34,46.2z"/>
	<g>
		<defs>
			<path id="SVGID_1_" d="M16.5,11.1c-0.1,1-0.1,2-0.1,3c0,12.7,7.1,23.8,17.6,29.5c10.5-5.7,17.6-16.7,17.6-29.5c0-1,0-2-0.1-3
				C46.4,7.9,40.4,6.1,34,6.1S21.6,7.9,16.5,11.1z"/>
		</defs>
		<clipPath id="SVGID_2_">
			<use xlink:href="#SVGID_1_"  style="overflow:visible;"/>
		</clipPath>
		<g class="st1">
			<path class="st0" d="M52.9,11c0,0-2.3,7.6-14.6,10c0,0,9.3,2.1,15-3.2C59.1,12.6,52.9,11,52.9,11z"/>
			<path class="st0" d="M52.2,21.5c0,0-4,5.2-14.3,4c0,0,6.8,4.2,12.8,1.6C56.7,24.4,52.2,21.5,52.2,21.5z"/>
			<path class="st0" d="M36.5,29.3c0,0,3.9,6.9,10.5,7.5c6.5,0.6,4-4.2,4-4.2S43.2,34.3,36.5,29.3z"/>
		</g>
	</g>
	<g>
		<path class="st0" d="M26,37.5C26,37.5,26,37.5,26,37.5C26,37.5,26,37.5,26,37.5C25.7,37.2,26.4,37.9,26,37.5z"/>
		<path class="st0" d="M21.1,31.1C21.1,31.1,21.1,31.1,21.1,31.1C21.1,31.2,21.2,31.2,21.1,31.1z"/>
		<path class="st0" d="M40.3,9.6c-0.8-2.7-3.9-3.5-6.6-3.5c-0.2,0-0.4,0-0.6,0c-6.1,0.2-11.7,1.9-16.6,4.9c-0.1,1-0.1,2-0.1,3
			c0,3.9,0.7,7.6,1.9,11.1c1.3-4,5.3-8.3,9.8-9.2c0,0-8.1,2.6-7.1,15.1c0,0,0,0,0,0.1c0.5-2.2,1.7-6.1,3.9-8c0,0-2.8,7.8,1,14.3
			c-0.1-1.5-0.3-6.3,1.4-10.5c0,0-2.1,8.6,3.8,14.9v0c0.9,0.9,1.7,1.3,2.7,1.9c1.3-0.7,2.6-1.7,3.8-2.5c0,0,0,0,0,0c0,0,0,0,0.1,0
			c0,0,0,0,0,0c1.6-1.2,3.6-3,5-4.4c-3.4-0.1-5.8-1-5.8-1c-4.6-1.6-7.3-5.9-7.3-11.1c0-6.1,4.7-10.4,9.6-11.1
			c2.3-0.6,3.7-0.1,3.9,0.8c0.2-0.5,0.3-1,0.3-1.5C43.5,11,42.1,9.7,40.3,9.6z M37.1,9.9c-0.5-0.1-0.3-0.8-1.4-1.1c0,0,0,0-0.1,0
			c1.4-0.2,2,0.3,2,0.5C37.7,9.8,37.3,9.9,37.1,9.9z"/>
		<path class="st0" d="M21.1,31.2C21.1,31.2,21.1,31.2,21.1,31.2C21.1,31.1,21,31,21.1,31.2z"/>
</svg>
	</g>
</g>
	<div style="font-family:'Google Sans',Roboto,RobotoDraft,Helvetica,Arial,sans-serif;border-bottom:thin solid #dadce0;color:rgba(0,0,0,0.87);line-height:32px;padding-bottom:24px;text-align:center;word-break:break-word">
		<table align="center" style="margin-top:8px"><tbody><tr style="line-height:normal"><td align="right" style="padding-right:8px">
		© 哨兵安全</a></td></tr></tbody></table>
	</div>
	<table align="center" style="margin-top:8px"><tbody><tr style="line-height:normal"><td align="right" style="padding-right:8px">
		<div style="padding-top:20px;font-size:12px;line-height:16px;color:#5f6368;letter-spacing:0.3px;text-align:center">今日讯息<br>
			<a style="color:rgba(0,0,0,0.87);text-decoration:inherit">
<code>
EOF
)

htmlTempEnd=$(cat<<EOF
</code>
			</a>
		</div>
	</div>
	<div style="text-align:left">
				<div style="font-family:Roboto-Regular,Helvetica,Arial,sans-serif;color:rgba(0,0,0,0.54);font-size:11px;line-height:18px;padding-top:12px;text-align:center">
			<div>© 哨兵安全 · 我们按照您的要求向您发送这封电子邮件</div><div style="direction:ltr">© Sentry Security LAB, Sentry Security LAB, Heavenly Universal Center, NO.556 Changjiang West Road,Shushan District, Hefei City, Anhui Province, CHINA
			</div>
		</div>
	</div>
</td>
<td width="8" style="width:8px"></td></tr></tbody></table>
EOF
)

echo -e "$fontStyleEnd\n$fontStyleEnd\n$htmlTempStart\n$serverAllTipsInfo\n$process\n$htmlTempEnd\n" > result.html

