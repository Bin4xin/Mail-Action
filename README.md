# 零、哨兵EMAIL申请

#### 0x01、简单用法：

- 确保您已经加入本仓库`Manage access - collaborators`中；
- 克隆代码到本地：`git clone https://github.com/Bin4xin/Mail-Action.git`
- 本地修改`.github/workflows/action.yml`目录文件：

```yml
run: bash ./SCS_domail_mail_manage.sh ${{secrets.SENTRY_MAIL_PDDTOKEN}} contact-me 
#Line15: <修改这里.>最后一个字段为您的用户名 如修改填入contact-me ，那么您的邮箱为contact-me@sentrylab.cn

to: 1904829268@qq.com 
#Line31: <修改这里.>接收您账号密码的邮箱 用于接收您新建邮箱的账号密码
```
如果在git使用中遇到问题参阅[下列文章/代码](#参考文献代码)

接着推送到github仓库就行，到此处下一步就是手动触发[action](#action)。

<details>
<summary><del>0x02、Git Fork用法：<不推荐></del></summary>

第一步：FORK本仓库:)

第二步：克隆代码到本地

`git clone https://github.com/${your-name}/Mail-Action.git`

第三步：切换到`SCS-1.0-dev`远程分支（远程库默认名字为origin）

`git checkout SCS-1.0-dev`

第四步：在该分支提交你的更改，然后提交

```bash
git add .
$ (linux & mac) git commit -m "[`date +%Y/%m/%d/%T`]<调试::ACTION>: commit by bin4xin/${Operator-name}"
> (windows powershell) git commit -m "(get-date -format 'yyyy/MM/dd/HH:mm:ss')<调试::ACTION>: commit by bin4xin/${Operator-name}"
git push origin SCS-1.0-dev
```

第五步：推送本地分支到自己的fork库

```bash
git remote add upstream git@github.com:sentryCyberSec/Mail-Action.git

git fetch origin
git merge SCS-1.0-dev
git push upstream SCS-1.0-dev
```

第六步：点击上面的`pull request`就可以推送请求了，确认无误后填写`pull request`的标题和具体内容，点击`create pull request`绿色按钮推送合并即可。

</details>

## action

<img src="/assets/截屏2021-12-02 下午10.09.56.png" width="90%" height="90%">

## 效果

<img src="/assets/截屏2021-12-02 下午10.13.02.png" width="50%" height="50%">

## 加入客户端

- 点击邮箱提示登录确认按钮激活
- [进入WEB主页配置](https://mail.yandex.com/?dpda=yes#setup/client)
- 选择`From the pop.yandex.com server via POP3`子项按钮按需选择、`Don't automatically delete emails marked as deleted in IMAP`

保存。

- 客户端连接
	- 随机客户端密码配置：
	- 1、[点击进入账户管理](https://passport.yandex.com/profile/)
	- 2、`Passwords and authorization` -> `App passwords` 新建即可
- 如果配置了客户端随机密码那么就使用随机密码，否则是WEB的登录密码。

```
POP3：pop.yandex.com SSL端口：995
SMTP：smtp.yandex.com SSL端口：465
IMAP：imap.yandex.com SSL端口：993
```

# Email Action

*GithubAction发送邮件样例，仅仅只是一个测试demo*

*example of action to send an email. Just a test:)*

- **基于Github Action的Bash自动邮件脚本**
	- **邮件网页模版设计;**
	- **邮件HTML格式`html_body: file://result.html`;**
	- **抄送`cc`.**

## 效果

<img src="/assets/IMG_E169327EB634-1.jpeg" width="50%" height="50%">

## 下一步计划

- 加入关注点细节，如突出关注点、上次运行是的关注点内容对比；
- 现HTML模版过于简单，计划添加复杂HTML模版。


## 贡献者

| 仓库贡献者 | Pull & Request | 备注 |
| :--- | :--- | :--- |
| [@Yang2635 ](https://github.com/Yang2635) | [#2](https://github.com/Bin4xin/Mail-Action/pull/2) | <ul><li>修改：将htmlTemp_Demo.sh修改为htmlTemp_Demo.html.template模板</li><li>优化：引用模板渲染result.html文件，而非命令的拼凑</li><li>优化：取消curl执行的进度显示</li></ul> |

## 参考文献/代码

- [Github · Support for password authentication was removed. Please use a personal access token instead](https://stackoverflow.com/questions/68775869/support-for-password-authentication-was-removed-please-use-a-personal-access-to)
- [git@github.com: Permission denied (publickey). 解决github Permission denied (publickey)问题](https://www.jianshu.com/p/f22d02c7d943)
- [crontab执行时间计算](https://tool.lu/crontab/)
- [bash-use-printf-for-comma-seperated-columns](https://stackoverflow.com/questions/51578299/bash-use-printf-for-comma-seperated-columns)
- [sed相关用法]
	- [sed在行首（行尾）添加字符串；在某行后添加多行字符串](https://blog.csdn.net/qianlong4526888/article/details/8669935)
	- [sed当中使用变量替换以及执行外部命令](https://blog.csdn.net/linwhwylb/article/details/7184748)

- 拓展阅读
	- 现成的mail api aciton
		- [dawidd6/action-send-mail](https://github.com/dawidd6/action-send-mail)
	- 参考demo代码
		- [ruanyf/weather-action](https://github.com/ruanyf/weather-action)
	- 相关官方文档
		- [Github Actions.](https://github.com/features/actions)

## 致谢:)

感谢以上所有链接文章的作者以及开源代码:)
