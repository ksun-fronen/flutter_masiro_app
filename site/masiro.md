#真白萌站点
---
##站点逻辑相关
` 真白萌登录需要的参数`
>`<input type="hidden" name="mod" id="scbar_mod" value="search" />`
>`<input type="hidden" name="formhash" value="71e22900" />`
>`<input type="hidden" name="srchtype" value="title" />`
>`<input type="hidden" name="srhfid" value="" />`
>`<input type="hidden" name="srhlocality" value="forum::index" />`

##Flutter相关
**在使用路由（Route）的前提下**
在main函数中一个层级的Class的修改是涉及到Flutter自身的核心部分，这一部分无法进行热更(Hot Reload)，只能热重载(Hot Restart)
~~姑且这算是Flutter的缺陷（非BUG）~~